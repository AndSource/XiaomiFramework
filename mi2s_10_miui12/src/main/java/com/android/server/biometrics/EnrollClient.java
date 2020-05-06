package com.android.server.biometrics;

import android.content.Context;
import android.hardware.biometrics.BiometricAuthenticator;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.biometrics.BiometricServiceBase;
import java.util.ArrayList;
import java.util.Arrays;

public abstract class EnrollClient extends ClientMonitor {
    private static final int ENROLLMENT_TIMEOUT_MS = 60000;
    private static final long MS_PER_SEC = 1000;
    private final BiometricUtils mBiometricUtils;
    private final byte[] mCryptoToken;
    private final int[] mDisabledFeatures;
    private long mEnrollmentStartTimeMs;

    public abstract boolean shouldVibrate();

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EnrollClient(Context context, Constants constants, BiometricServiceBase.DaemonWrapper daemon, long halDeviceId, IBinder token, BiometricServiceBase.ServiceListener listener, int userId, int groupId, byte[] cryptoToken, boolean restricted, String owner, BiometricUtils utils, int[] disabledFeatures) {
        super(context, constants, daemon, halDeviceId, token, listener, userId, groupId, restricted, owner, 0);
        byte[] bArr = cryptoToken;
        int[] iArr = disabledFeatures;
        this.mBiometricUtils = utils;
        this.mCryptoToken = Arrays.copyOf(bArr, bArr.length);
        this.mDisabledFeatures = Arrays.copyOf(iArr, iArr.length);
    }

    /* access modifiers changed from: protected */
    public int statsAction() {
        return 1;
    }

    public boolean onEnrollResult(BiometricAuthenticator.Identifier identifier, int remaining) {
        if (remaining == 0) {
            this.mBiometricUtils.addBiometricForUser(getContext(), getTargetUserId(), identifier);
            logOnEnrolled(getTargetUserId(), System.currentTimeMillis() - this.mEnrollmentStartTimeMs, true);
        }
        notifyUserActivity();
        return sendEnrollResult(identifier, remaining);
    }

    private boolean sendEnrollResult(BiometricAuthenticator.Identifier identifier, int remaining) {
        if (shouldVibrate()) {
            vibrateSuccess();
        }
        this.mMetricsLogger.action(this.mConstants.actionBiometricEnroll());
        try {
            BiometricServiceBase.ServiceListener listener = getListener();
            if (listener != null) {
                listener.onEnrollResult(identifier, remaining);
            }
            if (remaining == 0) {
                return true;
            }
            return false;
        } catch (RemoteException e) {
            Slog.w(getLogTag(), "Failed to notify EnrollResult:", e);
            return true;
        }
    }

    public int start() {
        this.mEnrollmentStartTimeMs = System.currentTimeMillis();
        try {
            ArrayList<Integer> disabledFeatures = new ArrayList<>();
            for (int valueOf : this.mDisabledFeatures) {
                disabledFeatures.add(Integer.valueOf(valueOf));
            }
            int result = getDaemonWrapper().enroll(this.mCryptoToken, getGroupId(), 60, disabledFeatures);
            if (result != 0) {
                Slog.w(getLogTag(), "startEnroll failed, result=" + result);
                this.mMetricsLogger.histogram(this.mConstants.tagEnrollStartError(), result);
                onError(getHalDeviceId(), 1, 0);
                return result;
            }
        } catch (RemoteException e) {
            Slog.e(getLogTag(), "startEnroll failed", e);
        }
        return 0;
    }

    public int stop(boolean initiatedByClient) {
        if (this.mAlreadyCancelled) {
            Slog.w(getLogTag(), "stopEnroll: already cancelled!");
            return 0;
        }
        try {
            int result = getDaemonWrapper().cancel();
            if (result != 0) {
                String logTag = getLogTag();
                Slog.w(logTag, "startEnrollCancel failed, result = " + result);
                return result;
            }
        } catch (RemoteException e) {
            Slog.e(getLogTag(), "stopEnrollment failed", e);
        }
        this.mAlreadyCancelled = true;
        return 0;
    }

    public boolean onRemoved(BiometricAuthenticator.Identifier identifier, int remaining) {
        Slog.w(getLogTag(), "onRemoved() called for enroll!");
        return true;
    }

    public boolean onEnumerationResult(BiometricAuthenticator.Identifier identifier, int remaining) {
        Slog.w(getLogTag(), "onEnumerationResult() called for enroll!");
        return true;
    }

    public boolean onAuthenticated(BiometricAuthenticator.Identifier identifier, boolean authenticated, ArrayList<Byte> arrayList) {
        Slog.w(getLogTag(), "onAuthenticated() called for enroll!");
        return true;
    }

    public boolean onError(long deviceId, int error, int vendorCode) {
        logOnEnrolled(getTargetUserId(), System.currentTimeMillis() - this.mEnrollmentStartTimeMs, false);
        return super.onError(deviceId, error, vendorCode);
    }
}
