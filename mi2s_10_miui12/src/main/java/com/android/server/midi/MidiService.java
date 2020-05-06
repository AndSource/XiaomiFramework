package com.android.server.midi;

import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.XmlResourceParser;
import android.media.midi.IBluetoothMidiService;
import android.media.midi.IMidiDeviceListener;
import android.media.midi.IMidiDeviceOpenCallback;
import android.media.midi.IMidiDeviceServer;
import android.media.midi.IMidiManager;
import android.media.midi.MidiDeviceInfo;
import android.media.midi.MidiDeviceStatus;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.content.PackageMonitor;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.SystemService;
import com.android.server.pm.CloudControlPreinstallService;
import com.android.server.pm.Settings;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class MidiService extends IMidiManager.Stub {
    private static final MidiDeviceInfo[] EMPTY_DEVICE_INFO_ARRAY = new MidiDeviceInfo[0];
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final String TAG = "MidiService";
    /* access modifiers changed from: private */
    public final HashMap<BluetoothDevice, Device> mBluetoothDevices = new HashMap<>();
    /* access modifiers changed from: private */
    public int mBluetoothServiceUid;
    /* access modifiers changed from: private */
    public final HashMap<IBinder, Client> mClients = new HashMap<>();
    /* access modifiers changed from: private */
    public final Context mContext;
    /* access modifiers changed from: private */
    public final HashMap<MidiDeviceInfo, Device> mDevicesByInfo = new HashMap<>();
    /* access modifiers changed from: private */
    public final HashMap<IBinder, Device> mDevicesByServer = new HashMap<>();
    private int mNextDeviceId = 1;
    private final PackageManager mPackageManager;
    private final PackageMonitor mPackageMonitor = new PackageMonitor() {
        public void onPackageAdded(String packageName, int uid) {
            MidiService.this.addPackageDeviceServers(packageName);
        }

        public void onPackageModified(String packageName) {
            MidiService.this.removePackageDeviceServers(packageName);
            MidiService.this.addPackageDeviceServers(packageName);
        }

        public void onPackageRemoved(String packageName, int uid) {
            MidiService.this.removePackageDeviceServers(packageName);
        }
    };

    public static class Lifecycle extends SystemService {
        private MidiService mMidiService;

        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARNING: type inference failed for: r0v1, types: [com.android.server.midi.MidiService, android.os.IBinder] */
        public void onStart() {
            this.mMidiService = new MidiService(getContext());
            publishBinderService("midi", this.mMidiService);
        }

        public void onUnlockUser(int userHandle) {
            if (userHandle == 0) {
                this.mMidiService.onUnlockUser();
            }
        }
    }

    private final class Client implements IBinder.DeathRecipient {
        private final HashMap<IBinder, DeviceConnection> mDeviceConnections = new HashMap<>();
        private final HashMap<IBinder, IMidiDeviceListener> mListeners = new HashMap<>();
        private final int mPid;
        private final IBinder mToken;
        /* access modifiers changed from: private */
        public final int mUid;

        public Client(IBinder token) {
            this.mToken = token;
            this.mUid = Binder.getCallingUid();
            this.mPid = Binder.getCallingPid();
        }

        public int getUid() {
            return this.mUid;
        }

        public void addListener(IMidiDeviceListener listener) {
            this.mListeners.put(listener.asBinder(), listener);
        }

        public void removeListener(IMidiDeviceListener listener) {
            this.mListeners.remove(listener.asBinder());
            if (this.mListeners.size() == 0 && this.mDeviceConnections.size() == 0) {
                close();
            }
        }

        public void addDeviceConnection(Device device, IMidiDeviceOpenCallback callback) {
            DeviceConnection connection = new DeviceConnection(device, this, callback);
            this.mDeviceConnections.put(connection.getToken(), connection);
            device.addDeviceConnection(connection);
        }

        public void removeDeviceConnection(IBinder token) {
            DeviceConnection connection = this.mDeviceConnections.remove(token);
            if (connection != null) {
                connection.getDevice().removeDeviceConnection(connection);
            }
            if (this.mListeners.size() == 0 && this.mDeviceConnections.size() == 0) {
                close();
            }
        }

        public void removeDeviceConnection(DeviceConnection connection) {
            this.mDeviceConnections.remove(connection.getToken());
            if (this.mListeners.size() == 0 && this.mDeviceConnections.size() == 0) {
                close();
            }
        }

        public void deviceAdded(Device device) {
            if (device.isUidAllowed(this.mUid)) {
                MidiDeviceInfo deviceInfo = device.getDeviceInfo();
                try {
                    for (IMidiDeviceListener listener : this.mListeners.values()) {
                        listener.onDeviceAdded(deviceInfo);
                    }
                } catch (RemoteException e) {
                    Log.e(MidiService.TAG, "remote exception", e);
                }
            }
        }

        public void deviceRemoved(Device device) {
            if (device.isUidAllowed(this.mUid)) {
                MidiDeviceInfo deviceInfo = device.getDeviceInfo();
                try {
                    for (IMidiDeviceListener listener : this.mListeners.values()) {
                        listener.onDeviceRemoved(deviceInfo);
                    }
                } catch (RemoteException e) {
                    Log.e(MidiService.TAG, "remote exception", e);
                }
            }
        }

        public void deviceStatusChanged(Device device, MidiDeviceStatus status) {
            if (device.isUidAllowed(this.mUid)) {
                try {
                    for (IMidiDeviceListener listener : this.mListeners.values()) {
                        listener.onDeviceStatusChanged(status);
                    }
                } catch (RemoteException e) {
                    Log.e(MidiService.TAG, "remote exception", e);
                }
            }
        }

        private void close() {
            synchronized (MidiService.this.mClients) {
                MidiService.this.mClients.remove(this.mToken);
                this.mToken.unlinkToDeath(this, 0);
            }
            for (DeviceConnection connection : this.mDeviceConnections.values()) {
                connection.getDevice().removeDeviceConnection(connection);
            }
        }

        public void binderDied() {
            Log.d(MidiService.TAG, "Client died: " + this);
            close();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Client: UID: ");
            sb.append(this.mUid);
            sb.append(" PID: ");
            sb.append(this.mPid);
            sb.append(" listener count: ");
            sb.append(this.mListeners.size());
            sb.append(" Device Connections:");
            for (DeviceConnection connection : this.mDeviceConnections.values()) {
                sb.append(" <device ");
                sb.append(connection.getDevice().getDeviceInfo().getId());
                sb.append(">");
            }
            return sb.toString();
        }
    }

    private Client getClient(IBinder token) {
        Client client;
        synchronized (this.mClients) {
            client = this.mClients.get(token);
            if (client == null) {
                client = new Client(token);
                try {
                    token.linkToDeath(client, 0);
                    this.mClients.put(token, client);
                } catch (RemoteException e) {
                    return null;
                }
            }
        }
        return client;
    }

    private final class Device implements IBinder.DeathRecipient {
        /* access modifiers changed from: private */
        public final BluetoothDevice mBluetoothDevice;
        private final ArrayList<DeviceConnection> mDeviceConnections = new ArrayList<>();
        private MidiDeviceInfo mDeviceInfo;
        private MidiDeviceStatus mDeviceStatus;
        private IMidiDeviceServer mServer;
        /* access modifiers changed from: private */
        public ServiceConnection mServiceConnection;
        private final ServiceInfo mServiceInfo;
        private final int mUid;

        public Device(IMidiDeviceServer server, MidiDeviceInfo deviceInfo, ServiceInfo serviceInfo, int uid) {
            this.mDeviceInfo = deviceInfo;
            this.mServiceInfo = serviceInfo;
            this.mUid = uid;
            this.mBluetoothDevice = (BluetoothDevice) deviceInfo.getProperties().getParcelable("bluetooth_device");
            setDeviceServer(server);
        }

        public Device(BluetoothDevice bluetoothDevice) {
            this.mBluetoothDevice = bluetoothDevice;
            this.mServiceInfo = null;
            this.mUid = MidiService.this.mBluetoothServiceUid;
        }

        /* access modifiers changed from: private */
        public void setDeviceServer(IMidiDeviceServer server) {
            if (server != null) {
                if (this.mServer != null) {
                    Log.e(MidiService.TAG, "mServer already set in setDeviceServer");
                    return;
                }
                IBinder binder = server.asBinder();
                try {
                    binder.linkToDeath(this, 0);
                    this.mServer = server;
                    MidiService.this.mDevicesByServer.put(binder, this);
                } catch (RemoteException e) {
                    this.mServer = null;
                    return;
                }
            } else if (this.mServer != null) {
                server = this.mServer;
                this.mServer = null;
                IBinder binder2 = server.asBinder();
                MidiService.this.mDevicesByServer.remove(binder2);
                try {
                    server.closeDevice();
                    binder2.unlinkToDeath(this, 0);
                } catch (RemoteException e2) {
                }
            }
            ArrayList<DeviceConnection> arrayList = this.mDeviceConnections;
            if (arrayList != null) {
                Iterator<DeviceConnection> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().notifyClient(server);
                }
            }
        }

        public MidiDeviceInfo getDeviceInfo() {
            return this.mDeviceInfo;
        }

        public void setDeviceInfo(MidiDeviceInfo deviceInfo) {
            this.mDeviceInfo = deviceInfo;
        }

        public MidiDeviceStatus getDeviceStatus() {
            return this.mDeviceStatus;
        }

        public void setDeviceStatus(MidiDeviceStatus status) {
            this.mDeviceStatus = status;
        }

        public IMidiDeviceServer getDeviceServer() {
            return this.mServer;
        }

        public ServiceInfo getServiceInfo() {
            return this.mServiceInfo;
        }

        public String getPackageName() {
            ServiceInfo serviceInfo = this.mServiceInfo;
            if (serviceInfo == null) {
                return null;
            }
            return serviceInfo.packageName;
        }

        public int getUid() {
            return this.mUid;
        }

        public boolean isUidAllowed(int uid) {
            return !this.mDeviceInfo.isPrivate() || this.mUid == uid;
        }

        public void addDeviceConnection(DeviceConnection connection) {
            Intent intent;
            synchronized (this.mDeviceConnections) {
                if (this.mServer != null) {
                    this.mDeviceConnections.add(connection);
                    connection.notifyClient(this.mServer);
                } else if (this.mServiceConnection != null || (this.mServiceInfo == null && this.mBluetoothDevice == null)) {
                    Log.e(MidiService.TAG, "No way to connect to device in addDeviceConnection");
                    connection.notifyClient((IMidiDeviceServer) null);
                } else {
                    this.mDeviceConnections.add(connection);
                    this.mServiceConnection = new ServiceConnection() {
                        public void onServiceConnected(ComponentName name, IBinder service) {
                            IMidiDeviceServer server = null;
                            if (Device.this.mBluetoothDevice != null) {
                                try {
                                    server = IMidiDeviceServer.Stub.asInterface(IBluetoothMidiService.Stub.asInterface(service).addBluetoothDevice(Device.this.mBluetoothDevice));
                                } catch (RemoteException e) {
                                    Log.e(MidiService.TAG, "Could not call addBluetoothDevice()", e);
                                }
                            } else {
                                server = IMidiDeviceServer.Stub.asInterface(service);
                            }
                            Device.this.setDeviceServer(server);
                        }

                        public void onServiceDisconnected(ComponentName name) {
                            Device.this.setDeviceServer((IMidiDeviceServer) null);
                            ServiceConnection unused = Device.this.mServiceConnection = null;
                        }
                    };
                    if (this.mBluetoothDevice != null) {
                        intent = new Intent("android.media.midi.BluetoothMidiService");
                        intent.setComponent(new ComponentName("com.android.bluetoothmidiservice", "com.android.bluetoothmidiservice.BluetoothMidiService"));
                    } else {
                        intent = new Intent("android.media.midi.MidiDeviceService");
                        intent.setComponent(new ComponentName(this.mServiceInfo.packageName, this.mServiceInfo.name));
                    }
                    if (!MidiService.this.mContext.bindService(intent, this.mServiceConnection, 1)) {
                        Log.e(MidiService.TAG, "Unable to bind service: " + intent);
                        setDeviceServer((IMidiDeviceServer) null);
                        this.mServiceConnection = null;
                    }
                }
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 3 */
        public void removeDeviceConnection(DeviceConnection connection) {
            synchronized (this.mDeviceConnections) {
                this.mDeviceConnections.remove(connection);
                if (this.mDeviceConnections.size() == 0 && this.mServiceConnection != null) {
                    MidiService.this.mContext.unbindService(this.mServiceConnection);
                    this.mServiceConnection = null;
                    if (this.mBluetoothDevice != null) {
                        synchronized (MidiService.this.mDevicesByInfo) {
                            closeLocked();
                        }
                    } else {
                        setDeviceServer((IMidiDeviceServer) null);
                    }
                }
            }
        }

        public void closeLocked() {
            synchronized (this.mDeviceConnections) {
                Iterator<DeviceConnection> it = this.mDeviceConnections.iterator();
                while (it.hasNext()) {
                    DeviceConnection connection = it.next();
                    connection.getClient().removeDeviceConnection(connection);
                }
                this.mDeviceConnections.clear();
            }
            setDeviceServer((IMidiDeviceServer) null);
            if (this.mServiceInfo == null) {
                MidiService.this.removeDeviceLocked(this);
            } else {
                this.mDeviceStatus = new MidiDeviceStatus(this.mDeviceInfo);
            }
            if (this.mBluetoothDevice != null) {
                MidiService.this.mBluetoothDevices.remove(this.mBluetoothDevice);
            }
        }

        public void binderDied() {
            Log.d(MidiService.TAG, "Device died: " + this);
            synchronized (MidiService.this.mDevicesByInfo) {
                closeLocked();
            }
        }

        public String toString() {
            return "Device Info: " + this.mDeviceInfo + " Status: " + this.mDeviceStatus + " UID: " + this.mUid + " DeviceConnection count: " + this.mDeviceConnections.size() + " mServiceConnection: " + this.mServiceConnection;
        }
    }

    private final class DeviceConnection {
        private IMidiDeviceOpenCallback mCallback;
        private final Client mClient;
        private final Device mDevice;
        private final IBinder mToken = new Binder();

        public DeviceConnection(Device device, Client client, IMidiDeviceOpenCallback callback) {
            this.mDevice = device;
            this.mClient = client;
            this.mCallback = callback;
        }

        public Device getDevice() {
            return this.mDevice;
        }

        public Client getClient() {
            return this.mClient;
        }

        public IBinder getToken() {
            return this.mToken;
        }

        public void notifyClient(IMidiDeviceServer deviceServer) {
            IBinder iBinder;
            IMidiDeviceOpenCallback iMidiDeviceOpenCallback = this.mCallback;
            if (iMidiDeviceOpenCallback != null) {
                if (deviceServer == null) {
                    iBinder = null;
                } else {
                    try {
                        iBinder = this.mToken;
                    } catch (RemoteException e) {
                    }
                }
                iMidiDeviceOpenCallback.onDeviceOpened(deviceServer, iBinder);
                this.mCallback = null;
            }
        }

        public String toString() {
            return "DeviceConnection Device ID: " + this.mDevice.getDeviceInfo().getId();
        }
    }

    public MidiService(Context context) {
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
        this.mBluetoothServiceUid = -1;
    }

    /* access modifiers changed from: private */
    public void onUnlockUser() {
        PackageInfo info;
        this.mPackageMonitor.register(this.mContext, (Looper) null, true);
        List<ResolveInfo> resolveInfos = this.mPackageManager.queryIntentServices(new Intent("android.media.midi.MidiDeviceService"), 128);
        if (resolveInfos != null) {
            int count = resolveInfos.size();
            for (int i = 0; i < count; i++) {
                ServiceInfo serviceInfo = resolveInfos.get(i).serviceInfo;
                if (serviceInfo != null) {
                    addPackageDeviceServer(serviceInfo);
                }
            }
        }
        try {
            info = this.mPackageManager.getPackageInfo("com.android.bluetoothmidiservice", 0);
        } catch (PackageManager.NameNotFoundException e) {
            info = null;
        }
        if (info == null || info.applicationInfo == null) {
            this.mBluetoothServiceUid = -1;
        } else {
            this.mBluetoothServiceUid = info.applicationInfo.uid;
        }
    }

    public void registerListener(IBinder token, IMidiDeviceListener listener) {
        Client client = getClient(token);
        if (client != null) {
            client.addListener(listener);
            updateStickyDeviceStatus(client.mUid, listener);
        }
    }

    public void unregisterListener(IBinder token, IMidiDeviceListener listener) {
        Client client = getClient(token);
        if (client != null) {
            client.removeListener(listener);
        }
    }

    private void updateStickyDeviceStatus(int uid, IMidiDeviceListener listener) {
        synchronized (this.mDevicesByInfo) {
            for (Device device : this.mDevicesByInfo.values()) {
                if (device.isUidAllowed(uid)) {
                    try {
                        MidiDeviceStatus status = device.getDeviceStatus();
                        if (status != null) {
                            listener.onDeviceStatusChanged(status);
                        }
                    } catch (RemoteException e) {
                        Log.e(TAG, "remote exception", e);
                    }
                }
            }
        }
    }

    public MidiDeviceInfo[] getDevices() {
        ArrayList<MidiDeviceInfo> deviceInfos = new ArrayList<>();
        int uid = Binder.getCallingUid();
        synchronized (this.mDevicesByInfo) {
            for (Device device : this.mDevicesByInfo.values()) {
                if (device.isUidAllowed(uid)) {
                    deviceInfos.add(device.getDeviceInfo());
                }
            }
        }
        return (MidiDeviceInfo[]) deviceInfos.toArray(EMPTY_DEVICE_INFO_ARRAY);
    }

    /* Debug info: failed to restart local var, previous not found, register: 6 */
    public void openDevice(IBinder token, MidiDeviceInfo deviceInfo, IMidiDeviceOpenCallback callback) {
        Device device;
        Client client = getClient(token);
        if (client != null) {
            synchronized (this.mDevicesByInfo) {
                device = this.mDevicesByInfo.get(deviceInfo);
                if (device == null) {
                    throw new IllegalArgumentException("device does not exist: " + deviceInfo);
                } else if (!device.isUidAllowed(Binder.getCallingUid())) {
                    throw new SecurityException("Attempt to open private device with wrong UID");
                }
            }
            long identity = Binder.clearCallingIdentity();
            try {
                client.addDeviceConnection(device, callback);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public void openBluetoothDevice(IBinder token, BluetoothDevice bluetoothDevice, IMidiDeviceOpenCallback callback) {
        Device device;
        Client client = getClient(token);
        if (client != null) {
            synchronized (this.mDevicesByInfo) {
                device = this.mBluetoothDevices.get(bluetoothDevice);
                if (device == null) {
                    device = new Device(bluetoothDevice);
                    this.mBluetoothDevices.put(bluetoothDevice, device);
                }
            }
            long identity = Binder.clearCallingIdentity();
            try {
                client.addDeviceConnection(device, callback);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public void closeDevice(IBinder clientToken, IBinder deviceToken) {
        Client client = getClient(clientToken);
        if (client != null) {
            client.removeDeviceConnection(deviceToken);
        }
    }

    public MidiDeviceInfo registerDeviceServer(IMidiDeviceServer server, int numInputPorts, int numOutputPorts, String[] inputPortNames, String[] outputPortNames, Bundle properties, int type) {
        MidiDeviceInfo addDeviceLocked;
        int i = type;
        int uid = Binder.getCallingUid();
        if (i == 1 && uid != 1000) {
            throw new SecurityException("only system can create USB devices");
        } else if (i != 3 || uid == this.mBluetoothServiceUid) {
            synchronized (this.mDevicesByInfo) {
                addDeviceLocked = addDeviceLocked(type, numInputPorts, numOutputPorts, inputPortNames, outputPortNames, properties, server, (ServiceInfo) null, false, uid);
            }
            return addDeviceLocked;
        } else {
            throw new SecurityException("only MidiBluetoothService can create Bluetooth devices");
        }
    }

    public void unregisterDeviceServer(IMidiDeviceServer server) {
        synchronized (this.mDevicesByInfo) {
            Device device = this.mDevicesByServer.get(server.asBinder());
            if (device != null) {
                device.closeLocked();
            }
        }
    }

    public MidiDeviceInfo getServiceDeviceInfo(String packageName, String className) {
        synchronized (this.mDevicesByInfo) {
            for (Device device : this.mDevicesByInfo.values()) {
                ServiceInfo serviceInfo = device.getServiceInfo();
                if (serviceInfo != null && packageName.equals(serviceInfo.packageName) && className.equals(serviceInfo.name)) {
                    MidiDeviceInfo deviceInfo = device.getDeviceInfo();
                    return deviceInfo;
                }
            }
            return null;
        }
    }

    public MidiDeviceStatus getDeviceStatus(MidiDeviceInfo deviceInfo) {
        Device device = this.mDevicesByInfo.get(deviceInfo);
        if (device != null) {
            return device.getDeviceStatus();
        }
        throw new IllegalArgumentException("no such device for " + deviceInfo);
    }

    public void setDeviceStatus(IMidiDeviceServer server, MidiDeviceStatus status) {
        Device device = this.mDevicesByServer.get(server.asBinder());
        if (device == null) {
            return;
        }
        if (Binder.getCallingUid() == device.getUid()) {
            device.setDeviceStatus(status);
            notifyDeviceStatusChanged(device, status);
            return;
        }
        throw new SecurityException("setDeviceStatus() caller UID " + Binder.getCallingUid() + " does not match device's UID " + device.getUid());
    }

    private void notifyDeviceStatusChanged(Device device, MidiDeviceStatus status) {
        synchronized (this.mClients) {
            for (Client c : this.mClients.values()) {
                c.deviceStatusChanged(device, status);
            }
        }
    }

    private MidiDeviceInfo addDeviceLocked(int type, int numInputPorts, int numOutputPorts, String[] inputPortNames, String[] outputPortNames, Bundle properties, IMidiDeviceServer server, ServiceInfo serviceInfo, boolean isPrivate, int uid) {
        BluetoothDevice bluetoothDevice;
        Device device;
        IMidiDeviceServer iMidiDeviceServer = server;
        int id = this.mNextDeviceId;
        this.mNextDeviceId = id + 1;
        MidiDeviceInfo deviceInfo = new MidiDeviceInfo(type, id, numInputPorts, numOutputPorts, inputPortNames, outputPortNames, properties, isPrivate);
        if (iMidiDeviceServer != null) {
            try {
                iMidiDeviceServer.setDeviceInfo(deviceInfo);
            } catch (RemoteException e) {
                RemoteException remoteException = e;
                Log.e(TAG, "RemoteException in setDeviceInfo()");
                return null;
            }
        }
        Device device2 = null;
        if (type == 3) {
            BluetoothDevice bluetoothDevice2 = (BluetoothDevice) properties.getParcelable("bluetooth_device");
            device2 = this.mBluetoothDevices.get(bluetoothDevice2);
            if (device2 != null) {
                device2.setDeviceInfo(deviceInfo);
            }
            bluetoothDevice = bluetoothDevice2;
        } else {
            Bundle bundle = properties;
            bluetoothDevice = null;
        }
        if (device2 == null) {
            device = new Device(server, deviceInfo, serviceInfo, uid);
        } else {
            device = device2;
        }
        this.mDevicesByInfo.put(deviceInfo, device);
        if (bluetoothDevice != null) {
            this.mBluetoothDevices.put(bluetoothDevice, device);
        }
        synchronized (this.mClients) {
            for (Client c : this.mClients.values()) {
                c.deviceAdded(device);
            }
        }
        return deviceInfo;
    }

    /* access modifiers changed from: private */
    public void removeDeviceLocked(Device device) {
        IMidiDeviceServer server = device.getDeviceServer();
        if (server != null) {
            this.mDevicesByServer.remove(server.asBinder());
        }
        this.mDevicesByInfo.remove(device.getDeviceInfo());
        synchronized (this.mClients) {
            for (Client c : this.mClients.values()) {
                c.deviceRemoved(device);
            }
        }
    }

    /* access modifiers changed from: private */
    public void addPackageDeviceServers(String packageName) {
        try {
            ServiceInfo[] services2 = this.mPackageManager.getPackageInfo(packageName, 132).services;
            if (services2 != null) {
                for (ServiceInfo addPackageDeviceServer : services2) {
                    addPackageDeviceServer(addPackageDeviceServer);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "handlePackageUpdate could not find package " + packageName, e);
        }
    }

    /* Debug info: failed to restart local var, previous not found, register: 24 */
    private void addPackageDeviceServer(ServiceInfo serviceInfo) {
        XmlResourceParser parser;
        ArrayList<String> outputPortNames;
        ArrayList<String> outputPortNames2;
        HashMap<MidiDeviceInfo, Device> hashMap;
        ServiceInfo serviceInfo2 = serviceInfo;
        XmlResourceParser parser2 = null;
        try {
            parser = serviceInfo2.loadXmlMetaData(this.mPackageManager, "android.media.midi.MidiDeviceService");
            if (parser != null) {
                try {
                    if (!"android.permission.BIND_MIDI_DEVICE_SERVICE".equals(serviceInfo2.permission)) {
                        Log.w(TAG, "Skipping MIDI device service " + serviceInfo2.packageName + ": it does not require the permission " + "android.permission.BIND_MIDI_DEVICE_SERVICE");
                        parser.close();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    ArrayList<String> outputPortNames3 = new ArrayList<>();
                    Bundle properties = null;
                    int numInputPorts = 0;
                    int numOutputPorts = 0;
                    boolean isPrivate = false;
                    while (true) {
                        int eventType = parser.next();
                        if (eventType == 1) {
                            parser.close();
                            return;
                        }
                        if (eventType == 2) {
                            String tagName = parser.getName();
                            if (CloudControlPreinstallService.ConnectEntity.DEVICE.equals(tagName)) {
                                if (properties != null) {
                                    Log.w(TAG, "nested <device> elements in metadata for " + serviceInfo2.packageName);
                                    outputPortNames2 = outputPortNames3;
                                } else {
                                    Bundle properties2 = new Bundle();
                                    properties2.putParcelable("service_info", serviceInfo2);
                                    numInputPorts = 0;
                                    numOutputPorts = 0;
                                    int count = parser.getAttributeCount();
                                    isPrivate = false;
                                    for (int i = 0; i < count; i++) {
                                        String name = parser.getAttributeName(i);
                                        String value = parser.getAttributeValue(i);
                                        if ("private".equals(name)) {
                                            isPrivate = "true".equals(value);
                                        } else {
                                            properties2.putString(name, value);
                                        }
                                    }
                                    properties = properties2;
                                }
                            } else if ("input-port".equals(tagName)) {
                                if (properties == null) {
                                    Log.w(TAG, "<input-port> outside of <device> in metadata for " + serviceInfo2.packageName);
                                    outputPortNames2 = outputPortNames3;
                                } else {
                                    numInputPorts++;
                                    String portName = null;
                                    int count2 = parser.getAttributeCount();
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 >= count2) {
                                            break;
                                        }
                                        String name2 = parser.getAttributeName(i2);
                                        String value2 = parser.getAttributeValue(i2);
                                        if (Settings.ATTR_NAME.equals(name2)) {
                                            portName = value2;
                                            break;
                                        }
                                        i2++;
                                    }
                                    arrayList.add(portName);
                                }
                            } else if ("output-port".equals(tagName)) {
                                if (properties == null) {
                                    Log.w(TAG, "<output-port> outside of <device> in metadata for " + serviceInfo2.packageName);
                                    outputPortNames2 = outputPortNames3;
                                } else {
                                    numOutputPorts++;
                                    String portName2 = null;
                                    int count3 = parser.getAttributeCount();
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= count3) {
                                            break;
                                        }
                                        String name3 = parser.getAttributeName(i3);
                                        String value3 = parser.getAttributeValue(i3);
                                        if (Settings.ATTR_NAME.equals(name3)) {
                                            portName2 = value3;
                                            break;
                                        }
                                        i3++;
                                    }
                                    outputPortNames3.add(portName2);
                                }
                            }
                            outputPortNames = outputPortNames3;
                            outputPortNames3 = outputPortNames;
                        } else {
                            if (eventType == 3) {
                                String tagName2 = parser.getName();
                                if (!CloudControlPreinstallService.ConnectEntity.DEVICE.equals(tagName2)) {
                                    int i4 = eventType;
                                    outputPortNames = outputPortNames3;
                                } else if (properties == null) {
                                    String str = tagName2;
                                    int i5 = eventType;
                                    outputPortNames = outputPortNames3;
                                } else if (numInputPorts == 0 && numOutputPorts == 0) {
                                    Log.w(TAG, "<device> with no ports in metadata for " + serviceInfo2.packageName);
                                    outputPortNames2 = outputPortNames3;
                                } else {
                                    try {
                                        int uid = this.mPackageManager.getApplicationInfo(serviceInfo2.packageName, 0).uid;
                                        HashMap<MidiDeviceInfo, Device> hashMap2 = this.mDevicesByInfo;
                                        synchronized (hashMap2) {
                                            try {
                                                hashMap = hashMap2;
                                                String str2 = tagName2;
                                                int i6 = eventType;
                                                outputPortNames = outputPortNames3;
                                                try {
                                                    addDeviceLocked(2, numInputPorts, numOutputPorts, (String[]) arrayList.toArray(EMPTY_STRING_ARRAY), (String[]) outputPortNames3.toArray(EMPTY_STRING_ARRAY), properties, (IMidiDeviceServer) null, serviceInfo, isPrivate, uid);
                                                    properties = null;
                                                    arrayList.clear();
                                                    outputPortNames.clear();
                                                } catch (Throwable th) {
                                                    th = th;
                                                    throw th;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                hashMap = hashMap2;
                                                String str3 = tagName2;
                                                int i7 = eventType;
                                                ArrayList<String> arrayList2 = outputPortNames3;
                                                throw th;
                                            }
                                        }
                                    } catch (PackageManager.NameNotFoundException e) {
                                        String str4 = tagName2;
                                        int i8 = eventType;
                                        outputPortNames2 = outputPortNames3;
                                        Log.e(TAG, "could not fetch ApplicationInfo for " + serviceInfo2.packageName);
                                    }
                                }
                            } else {
                                outputPortNames = outputPortNames3;
                            }
                            outputPortNames3 = outputPortNames;
                        }
                        outputPortNames3 = outputPortNames2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    parser2 = parser;
                } catch (Throwable th3) {
                    th = th3;
                    if (parser != null) {
                        parser.close();
                    }
                    throw th;
                }
            } else if (parser != null) {
                parser.close();
            }
        } catch (Exception e3) {
            e = e3;
            try {
                Log.w(TAG, "Unable to load component info " + serviceInfo.toString(), e);
                if (parser2 != null) {
                    parser2.close();
                }
                XmlResourceParser xmlResourceParser = parser2;
            } catch (Throwable th4) {
                th = th4;
                parser = parser2;
            }
        }
    }

    /* access modifiers changed from: private */
    public void removePackageDeviceServers(String packageName) {
        synchronized (this.mDevicesByInfo) {
            Iterator<Device> iterator = this.mDevicesByInfo.values().iterator();
            while (iterator.hasNext()) {
                Device device = iterator.next();
                if (packageName.equals(device.getPackageName())) {
                    iterator.remove();
                    removeDeviceLocked(device);
                }
            }
        }
    }

    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
            pw.println("MIDI Manager State:");
            pw.increaseIndent();
            pw.println("Devices:");
            pw.increaseIndent();
            synchronized (this.mDevicesByInfo) {
                for (Device device : this.mDevicesByInfo.values()) {
                    pw.println(device.toString());
                }
            }
            pw.decreaseIndent();
            pw.println("Clients:");
            pw.increaseIndent();
            synchronized (this.mClients) {
                for (Client client : this.mClients.values()) {
                    pw.println(client.toString());
                }
            }
            pw.decreaseIndent();
        }
    }
}
