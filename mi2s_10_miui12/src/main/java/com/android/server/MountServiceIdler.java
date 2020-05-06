package com.android.server;

import android.app.ActivityManager;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.util.Slog;
import com.android.server.pm.PackageManagerService;
import java.util.Calendar;

public class MountServiceIdler extends JobService {
    private static int MOUNT_JOB_ID = 808;
    private static final String TAG = "MountServiceIdler";
    private static ComponentName sIdleService = new ComponentName(PackageManagerService.PLATFORM_PACKAGE_NAME, MountServiceIdler.class.getName());
    /* access modifiers changed from: private */
    public Runnable mFinishCallback = new Runnable() {
        public void run() {
            Slog.i(MountServiceIdler.TAG, "Got mount service completion callback");
            synchronized (MountServiceIdler.this.mFinishCallback) {
                if (MountServiceIdler.this.mStarted) {
                    MountServiceIdler.this.jobFinished(MountServiceIdler.this.mJobParams, false);
                    boolean unused = MountServiceIdler.this.mStarted = false;
                }
            }
            MountServiceIdler.scheduleIdlePass(MountServiceIdler.this);
        }
    };
    /* access modifiers changed from: private */
    public JobParameters mJobParams;
    /* access modifiers changed from: private */
    public boolean mStarted;

    public boolean onStartJob(JobParameters params) {
        try {
            if (MountServiceIdlerInjector.canExecuteIdleMaintenance(this)) {
                ActivityManager.getService().performIdleMaintenance();
            }
        } catch (RemoteException e) {
        }
        this.mJobParams = params;
        if (MountServiceIdlerInjector.canExecuteAsyncDiscard(this)) {
            MountServiceIdlerInjector.resetNextTrimDuration();
            StorageManagerService ms = StorageManagerService.sSelf;
            if (ms != null) {
                synchronized (this.mFinishCallback) {
                    this.mStarted = true;
                }
                ms.runIdleMaint(this.mFinishCallback);
            }
            if (ms != null) {
                return true;
            }
            return false;
        }
        MountServiceIdlerInjector.halveNextTrimDuration();
        scheduleIdlePass(this);
        return false;
    }

    public boolean onStopJob(JobParameters params) {
        StorageManagerService ms = StorageManagerService.sSelf;
        if (ms != null) {
            ms.abortIdleMaint(this.mFinishCallback);
            synchronized (this.mFinishCallback) {
                this.mStarted = false;
            }
        }
        return false;
    }

    public static void scheduleIdlePass(Context context) {
        MountServiceIdlerInjector.internalScheduleIdlePass(context, MOUNT_JOB_ID, sIdleService);
    }

    private static Calendar tomorrowMidnight() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.set(11, 3);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(5, 1);
        return calendar;
    }
}
