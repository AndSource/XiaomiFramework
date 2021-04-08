package android.content;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IIntentSender extends IInterface {

    public static class Default implements IIntentSender {
        public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) throws RemoteException {
        }

        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IIntentSender {
        private static final String DESCRIPTOR = "android.content.IIntentSender";
        static final int TRANSACTION_send = 1;

        private static class Proxy implements IIntentSender {
            public static IIntentSender sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) throws RemoteException {
                Throwable th;
                String str;
                IBinder iBinder;
                String str2;
                Intent intent2 = intent;
                Bundle bundle = options;
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeInt(code);
                        if (intent2 != null) {
                            _data.writeInt(1);
                            intent2.writeToParcel(_data, 0);
                        } else {
                            _data.writeInt(0);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str = resolvedType;
                        iBinder = whitelistToken;
                        str2 = requiredPermission;
                        _data.recycle();
                        throw th;
                    }
                    try {
                        _data.writeString(resolvedType);
                        try {
                            _data.writeStrongBinder(whitelistToken);
                            _data.writeStrongBinder(finishedReceiver != null ? finishedReceiver.asBinder() : null);
                        } catch (Throwable th3) {
                            th = th3;
                            str2 = requiredPermission;
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        iBinder = whitelistToken;
                        str2 = requiredPermission;
                        _data.recycle();
                        throw th;
                    }
                    try {
                        _data.writeString(requiredPermission);
                        if (bundle != null) {
                            _data.writeInt(1);
                            bundle.writeToParcel(_data, 0);
                        } else {
                            _data.writeInt(0);
                        }
                        if (this.mRemote.transact(1, _data, null, 1) || Stub.getDefaultImpl() == null) {
                            _data.recycle();
                            return;
                        }
                        Stub.getDefaultImpl().send(code, intent, resolvedType, whitelistToken, finishedReceiver, requiredPermission, options);
                        _data.recycle();
                    } catch (Throwable th5) {
                        th = th5;
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    int i = code;
                    str = resolvedType;
                    iBinder = whitelistToken;
                    str2 = requiredPermission;
                    _data.recycle();
                    throw th;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIntentSender asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IIntentSender)) {
                return new Proxy(obj);
            }
            return (IIntentSender) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public static String getDefaultTransactionName(int transactionCode) {
            if (transactionCode != 1) {
                return null;
            }
            return "send";
        }

        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            int i = code;
            Parcel parcel = data;
            String descriptor = DESCRIPTOR;
            if (i == 1) {
                Intent _arg1;
                Bundle _arg6;
                Parcel parcel2 = reply;
                parcel.enforceInterface(descriptor);
                int _arg0 = data.readInt();
                if (data.readInt() != 0) {
                    _arg1 = (Intent) Intent.CREATOR.createFromParcel(parcel);
                } else {
                    _arg1 = null;
                }
                String _arg2 = data.readString();
                IBinder _arg3 = data.readStrongBinder();
                IIntentReceiver _arg4 = android.content.IIntentReceiver.Stub.asInterface(data.readStrongBinder());
                String _arg5 = data.readString();
                if (data.readInt() != 0) {
                    _arg6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                } else {
                    _arg6 = null;
                }
                send(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(code, data, reply, flags);
            } else {
                reply.writeString(descriptor);
                return true;
            }
        }

        public static boolean setDefaultImpl(IIntentSender impl) {
            if (Proxy.sDefaultImpl != null || impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IIntentSender getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }

    void send(int i, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) throws RemoteException;
}
