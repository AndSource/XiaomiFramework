package com.android.server.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Slog;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.util.DumpUtils;
import com.android.server.accessibility.AbstractAccessibilityServiceConnection;
import com.android.server.accessibility.AccessibilityManagerService;
import com.android.server.accessibility.UiAutomationManager;
import com.android.server.wm.WindowManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class UiAutomationManager {
    /* access modifiers changed from: private */
    public static final ComponentName COMPONENT_NAME = new ComponentName("com.android.server.accessibility", "UiAutomation");
    private static final String LOG_TAG = "UiAutomationManager";
    private final Object mLock;
    private AbstractAccessibilityServiceConnection.SystemSupport mSystemSupport;
    private int mUiAutomationFlags;
    private UiAutomationService mUiAutomationService;
    private AccessibilityServiceInfo mUiAutomationServiceInfo;
    /* access modifiers changed from: private */
    public IBinder mUiAutomationServiceOwner;
    private final IBinder.DeathRecipient mUiAutomationServiceOwnerDeathRecipient = new IBinder.DeathRecipient() {
        public void binderDied() {
            UiAutomationManager.this.mUiAutomationServiceOwner.unlinkToDeath(this, 0);
            IBinder unused = UiAutomationManager.this.mUiAutomationServiceOwner = null;
            UiAutomationManager.this.destroyUiAutomationService();
        }
    };

    UiAutomationManager(Object lock) {
        this.mLock = lock;
    }

    /* Debug info: failed to restart local var, previous not found, register: 17 */
    /* access modifiers changed from: package-private */
    public void registerUiTestAutomationServiceLocked(IBinder owner, IAccessibilityServiceClient serviceClient, Context context, AccessibilityServiceInfo accessibilityServiceInfo, int id, Handler mainHandler, AccessibilityManagerService.SecurityPolicy securityPolicy, AbstractAccessibilityServiceConnection.SystemSupport systemSupport, WindowManagerInternal windowManagerInternal, GlobalActionPerformer globalActionPerfomer, int flags) {
        Object obj;
        UiAutomationService uiAutomationService;
        IBinder iBinder = owner;
        IAccessibilityServiceClient iAccessibilityServiceClient = serviceClient;
        AccessibilityServiceInfo accessibilityServiceInfo2 = accessibilityServiceInfo;
        Object obj2 = this.mLock;
        synchronized (obj2) {
            try {
                accessibilityServiceInfo2.setComponentName(COMPONENT_NAME);
                if (this.mUiAutomationService == null) {
                    try {
                        iBinder.linkToDeath(this.mUiAutomationServiceOwnerDeathRecipient, 0);
                        this.mSystemSupport = systemSupport;
                        obj = obj2;
                    } catch (RemoteException re) {
                        int i = flags;
                        Object obj3 = obj2;
                        Slog.e(LOG_TAG, "Couldn't register for the death of a UiTestAutomationService!", re);
                        return;
                    }
                    try {
                        uiAutomationService = new UiAutomationService(this, context, accessibilityServiceInfo, id, mainHandler, this.mLock, securityPolicy, systemSupport, windowManagerInternal, globalActionPerfomer);
                        this.mUiAutomationService = uiAutomationService;
                        this.mUiAutomationServiceOwner = iBinder;
                        try {
                            this.mUiAutomationFlags = flags;
                            this.mUiAutomationServiceInfo = accessibilityServiceInfo2;
                            this.mUiAutomationService.mServiceInterface = iAccessibilityServiceClient;
                            this.mUiAutomationService.onAdded();
                            this.mUiAutomationService.mServiceInterface.asBinder().linkToDeath(this.mUiAutomationService, 0);
                            this.mUiAutomationService.connectServiceUnknownThread();
                        } catch (RemoteException re2) {
                            Slog.e(LOG_TAG, "Failed registering death link: " + re2);
                            destroyUiAutomationService();
                        } catch (Throwable th) {
                            re = th;
                            throw re;
                        }
                    } catch (Throwable th2) {
                        re = th2;
                        int i2 = flags;
                        throw re;
                    }
                } else {
                    int i3 = flags;
                    Object obj4 = obj2;
                    throw new IllegalStateException("UiAutomationService " + iAccessibilityServiceClient + "already registered!");
                }
            } catch (Throwable th3) {
                re = th3;
                int i4 = flags;
                obj = obj2;
                throw re;
            }
        }
    }

    /* Debug info: failed to restart local var, previous not found, register: 4 */
    /* access modifiers changed from: package-private */
    public void unregisterUiTestAutomationServiceLocked(IAccessibilityServiceClient serviceClient) {
        synchronized (this.mLock) {
            if (this.mUiAutomationService == null || serviceClient == null || this.mUiAutomationService.mServiceInterface == null || serviceClient.asBinder() != this.mUiAutomationService.mServiceInterface.asBinder()) {
                throw new IllegalStateException("UiAutomationService " + serviceClient + " not registered!");
            }
            destroyUiAutomationService();
        }
    }

    /* access modifiers changed from: package-private */
    public void sendAccessibilityEventLocked(AccessibilityEvent event) {
        UiAutomationService uiAutomationService = this.mUiAutomationService;
        if (uiAutomationService != null) {
            uiAutomationService.notifyAccessibilityEvent(event);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean isUiAutomationRunningLocked() {
        return this.mUiAutomationService != null;
    }

    /* access modifiers changed from: package-private */
    public boolean suppressingAccessibilityServicesLocked() {
        return this.mUiAutomationService != null && (this.mUiAutomationFlags & 1) == 0;
    }

    /* access modifiers changed from: package-private */
    public boolean isTouchExplorationEnabledLocked() {
        UiAutomationService uiAutomationService = this.mUiAutomationService;
        return uiAutomationService != null && uiAutomationService.mRequestTouchExplorationMode;
    }

    /* access modifiers changed from: package-private */
    public boolean canRetrieveInteractiveWindowsLocked() {
        UiAutomationService uiAutomationService = this.mUiAutomationService;
        return uiAutomationService != null && uiAutomationService.mRetrieveInteractiveWindows;
    }

    /* access modifiers changed from: package-private */
    public int getRequestedEventMaskLocked() {
        UiAutomationService uiAutomationService = this.mUiAutomationService;
        if (uiAutomationService == null) {
            return 0;
        }
        return uiAutomationService.mEventTypes;
    }

    /* access modifiers changed from: package-private */
    public int getRelevantEventTypes() {
        UiAutomationService uiAutomationService;
        synchronized (this.mLock) {
            uiAutomationService = this.mUiAutomationService;
        }
        if (uiAutomationService == null) {
            return 0;
        }
        return uiAutomationService.getRelevantEventTypes();
    }

    /* access modifiers changed from: package-private */
    public AccessibilityServiceInfo getServiceInfo() {
        UiAutomationService uiAutomationService;
        synchronized (this.mLock) {
            uiAutomationService = this.mUiAutomationService;
        }
        if (uiAutomationService == null) {
            return null;
        }
        return uiAutomationService.getServiceInfo();
    }

    /* access modifiers changed from: package-private */
    public void dumpUiAutomationService(FileDescriptor fd, PrintWriter pw, String[] args) {
        UiAutomationService uiAutomationService;
        synchronized (this.mLock) {
            uiAutomationService = this.mUiAutomationService;
        }
        if (uiAutomationService != null) {
            uiAutomationService.dump(fd, pw, args);
        }
    }

    /* access modifiers changed from: private */
    public void destroyUiAutomationService() {
        synchronized (this.mLock) {
            if (this.mUiAutomationService != null) {
                this.mUiAutomationService.mServiceInterface.asBinder().unlinkToDeath(this.mUiAutomationService, 0);
                this.mUiAutomationService.onRemoved();
                this.mUiAutomationService.resetLocked();
                this.mUiAutomationService = null;
                this.mUiAutomationFlags = 0;
                if (this.mUiAutomationServiceOwner != null) {
                    this.mUiAutomationServiceOwner.unlinkToDeath(this.mUiAutomationServiceOwnerDeathRecipient, 0);
                    this.mUiAutomationServiceOwner = null;
                }
                this.mSystemSupport.onClientChangeLocked(false);
            }
        }
    }

    private class UiAutomationService extends AbstractAccessibilityServiceConnection {
        private final Handler mMainHandler;
        final /* synthetic */ UiAutomationManager this$0;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        UiAutomationService(UiAutomationManager uiAutomationManager, Context context, AccessibilityServiceInfo accessibilityServiceInfo, int id, Handler mainHandler, Object lock, AccessibilityManagerService.SecurityPolicy securityPolicy, AbstractAccessibilityServiceConnection.SystemSupport systemSupport, WindowManagerInternal windowManagerInternal, GlobalActionPerformer globalActionPerfomer) {
            super(context, UiAutomationManager.COMPONENT_NAME, accessibilityServiceInfo, id, mainHandler, lock, securityPolicy, systemSupport, windowManagerInternal, globalActionPerfomer);
            this.this$0 = uiAutomationManager;
            this.mMainHandler = mainHandler;
        }

        /* access modifiers changed from: package-private */
        public void connectServiceUnknownThread() {
            this.mMainHandler.post(new Runnable() {
                public final void run() {
                    UiAutomationManager.UiAutomationService.this.lambda$connectServiceUnknownThread$0$UiAutomationManager$UiAutomationService();
                }
            });
        }

        /* Debug info: failed to restart local var, previous not found, register: 4 */
        public /* synthetic */ void lambda$connectServiceUnknownThread$0$UiAutomationManager$UiAutomationService() {
            IAccessibilityServiceClient serviceInterface;
            IBinder service;
            try {
                synchronized (this.mLock) {
                    serviceInterface = this.mServiceInterface;
                    this.mService = serviceInterface == null ? null : this.mServiceInterface.asBinder();
                    service = this.mService;
                }
                if (serviceInterface != null) {
                    service.linkToDeath(this, 0);
                    serviceInterface.init(this, this.mId, this.mOverlayWindowToken);
                }
            } catch (RemoteException re) {
                Slog.w(UiAutomationManager.LOG_TAG, "Error initialized connection", re);
                this.this$0.destroyUiAutomationService();
            }
        }

        public void binderDied() {
            this.this$0.destroyUiAutomationService();
        }

        /* access modifiers changed from: protected */
        public boolean isCalledForCurrentUserLocked() {
            return true;
        }

        /* access modifiers changed from: protected */
        public boolean supportsFlagForNotImportantViews(AccessibilityServiceInfo info) {
            return true;
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(this.mContext, UiAutomationManager.LOG_TAG, pw)) {
                synchronized (this.mLock) {
                    pw.append("Ui Automation[eventTypes=" + AccessibilityEvent.eventTypeToString(this.mEventTypes));
                    pw.append(", notificationTimeout=" + this.mNotificationTimeout);
                    pw.append("]");
                }
            }
        }

        public boolean setSoftKeyboardShowMode(int mode) {
            return false;
        }

        public int getSoftKeyboardShowMode() {
            return 0;
        }

        public boolean isAccessibilityButtonAvailable() {
            return false;
        }

        public void disableSelf() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder service) {
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }

        public boolean isCapturingFingerprintGestures() {
            return false;
        }

        public void onFingerprintGestureDetectionActiveChanged(boolean active) {
        }

        public void onFingerprintGesture(int gesture) {
        }
    }
}