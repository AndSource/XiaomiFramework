package com.android.server.job;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.StatLogger;
import com.android.server.job.JobSchedulerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.job.controllers.StateController;
import java.util.Iterator;
import java.util.List;

class JobConcurrencyManager {
    /* access modifiers changed from: private */
    public static final boolean DEBUG = JobSchedulerService.DEBUG;
    private static final int MAX_JOB_CONTEXTS_COUNT = 16;
    private static final int SYSTEM_STATE_REFRESH_MIN_INTERVAL = 1000;
    private static final String TAG = "JobScheduler";
    private final JobSchedulerService.Constants mConstants;
    private final Context mContext;
    private boolean mCurrentInteractiveState;
    private boolean mEffectiveInteractiveState;
    private final Handler mHandler;
    private final JobCountTracker mJobCountTracker = new JobCountTracker();
    private int mLastMemoryTrimLevel;
    private long mLastScreenOffRealtime;
    private long mLastScreenOnRealtime;
    private final Object mLock;
    private JobSchedulerService.MaxJobCounts mMaxJobCounts;
    private long mNextSystemStateRefreshTime;
    private PowerManager mPowerManager;
    private final Runnable mRampUpForScreenOff = new Runnable() {
        public final void run() {
            JobConcurrencyManager.this.rampUpForScreenOff();
        }
    };
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {
        /* JADX WARNING: Removed duplicated region for block: B:12:0x002c  */
        /* JADX WARNING: Removed duplicated region for block: B:14:0x0035  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onReceive(android.content.Context r6, android.content.Intent r7) {
            /*
                r5 = this;
                java.lang.String r0 = r7.getAction()
                int r1 = r0.hashCode()
                r2 = -2128145023(0xffffffff81271581, float:-3.0688484E-38)
                r3 = 0
                r4 = 1
                if (r1 == r2) goto L_0x001f
                r2 = -1454123155(0xffffffffa953d76d, float:-4.7038264E-14)
                if (r1 == r2) goto L_0x0015
            L_0x0014:
                goto L_0x0029
            L_0x0015:
                java.lang.String r1 = "android.intent.action.SCREEN_ON"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0014
                r0 = r3
                goto L_0x002a
            L_0x001f:
                java.lang.String r1 = "android.intent.action.SCREEN_OFF"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0014
                r0 = r4
                goto L_0x002a
            L_0x0029:
                r0 = -1
            L_0x002a:
                if (r0 == 0) goto L_0x0035
                if (r0 == r4) goto L_0x002f
                goto L_0x003b
            L_0x002f:
                com.android.server.job.JobConcurrencyManager r0 = com.android.server.job.JobConcurrencyManager.this
                r0.onInteractiveStateChanged(r3)
                goto L_0x003b
            L_0x0035:
                com.android.server.job.JobConcurrencyManager r0 = com.android.server.job.JobConcurrencyManager.this
                r0.onInteractiveStateChanged(r4)
            L_0x003b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.job.JobConcurrencyManager.AnonymousClass1.onReceive(android.content.Context, android.content.Intent):void");
        }
    };
    JobStatus[] mRecycledAssignContextIdToJobMap = new JobStatus[16];
    int[] mRecycledPreferredUidForContext = new int[16];
    boolean[] mRecycledSlotChanged = new boolean[16];
    private final JobSchedulerService mService;
    private final StatLogger mStatLogger = new StatLogger(new String[]{"assignJobsToContexts", "refreshSystemState"});

    interface Stats {
        public static final int ASSIGN_JOBS_TO_CONTEXTS = 0;
        public static final int COUNT = 2;
        public static final int REFRESH_SYSTEM_STATE = 1;
    }

    JobConcurrencyManager(JobSchedulerService service) {
        this.mService = service;
        this.mLock = this.mService.mLock;
        this.mConstants = service.mConstants;
        this.mContext = service.getContext();
        this.mHandler = BackgroundThread.getHandler();
    }

    public void onSystemReady() {
        this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
        IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        this.mContext.registerReceiver(this.mReceiver, filter);
        onInteractiveStateChanged(this.mPowerManager.isInteractive());
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004d, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onInteractiveStateChanged(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.mLock
            monitor-enter(r0)
            boolean r1 = r7.mCurrentInteractiveState     // Catch:{ all -> 0x004e }
            if (r1 != r8) goto L_0x0009
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            return
        L_0x0009:
            r7.mCurrentInteractiveState = r8     // Catch:{ all -> 0x004e }
            boolean r1 = DEBUG     // Catch:{ all -> 0x004e }
            if (r1 == 0) goto L_0x0025
            java.lang.String r1 = "JobScheduler"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x004e }
            r2.<init>()     // Catch:{ all -> 0x004e }
            java.lang.String r3 = "Interactive: "
            r2.append(r3)     // Catch:{ all -> 0x004e }
            r2.append(r8)     // Catch:{ all -> 0x004e }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x004e }
            android.util.Slog.d(r1, r2)     // Catch:{ all -> 0x004e }
        L_0x0025:
            java.time.Clock r1 = com.android.server.job.JobSchedulerService.sElapsedRealtimeClock     // Catch:{ all -> 0x004e }
            long r1 = r1.millis()     // Catch:{ all -> 0x004e }
            if (r8 == 0) goto L_0x003a
            r7.mLastScreenOnRealtime = r1     // Catch:{ all -> 0x004e }
            r3 = 1
            r7.mEffectiveInteractiveState = r3     // Catch:{ all -> 0x004e }
            android.os.Handler r3 = r7.mHandler     // Catch:{ all -> 0x004e }
            java.lang.Runnable r4 = r7.mRampUpForScreenOff     // Catch:{ all -> 0x004e }
            r3.removeCallbacks(r4)     // Catch:{ all -> 0x004e }
            goto L_0x004c
        L_0x003a:
            r7.mLastScreenOffRealtime = r1     // Catch:{ all -> 0x004e }
            android.os.Handler r3 = r7.mHandler     // Catch:{ all -> 0x004e }
            java.lang.Runnable r4 = r7.mRampUpForScreenOff     // Catch:{ all -> 0x004e }
            com.android.server.job.JobSchedulerService$Constants r5 = r7.mConstants     // Catch:{ all -> 0x004e }
            android.util.KeyValueListParser$IntValue r5 = r5.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS     // Catch:{ all -> 0x004e }
            int r5 = r5.getValue()     // Catch:{ all -> 0x004e }
            long r5 = (long) r5     // Catch:{ all -> 0x004e }
            r3.postDelayed(r4, r5)     // Catch:{ all -> 0x004e }
        L_0x004c:
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            return
        L_0x004e:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.job.JobConcurrencyManager.onInteractiveStateChanged(boolean):void");
    }

    /* access modifiers changed from: private */
    public void rampUpForScreenOff() {
        synchronized (this.mLock) {
            if (this.mEffectiveInteractiveState) {
                if (this.mLastScreenOnRealtime <= this.mLastScreenOffRealtime) {
                    if (this.mLastScreenOffRealtime + ((long) this.mConstants.SCREEN_OFF_JOB_CONCURRENCY_INCREASE_DELAY_MS.getValue()) <= JobSchedulerService.sElapsedRealtimeClock.millis()) {
                        this.mEffectiveInteractiveState = false;
                        if (DEBUG) {
                            Slog.d("JobScheduler", "Ramping up concurrency");
                        }
                        this.mService.maybeRunPendingJobsLocked();
                    }
                }
            }
        }
    }

    private boolean isFgJob(JobStatus job) {
        return job.lastEvaluatedPriority >= 40;
    }

    @GuardedBy({"mLock"})
    private void refreshSystemStateLocked() {
        long nowUptime = JobSchedulerService.sUptimeMillisClock.millis();
        if (nowUptime >= this.mNextSystemStateRefreshTime) {
            long start = this.mStatLogger.getTime();
            this.mNextSystemStateRefreshTime = 1000 + nowUptime;
            this.mLastMemoryTrimLevel = 0;
            try {
                this.mLastMemoryTrimLevel = ActivityManager.getService().getMemoryTrimLevel();
            } catch (RemoteException e) {
            }
            this.mStatLogger.logDurationStat(1, start);
        }
    }

    @GuardedBy({"mLock"})
    private void updateMaxCountsLocked() {
        JobSchedulerService.MaxJobCountsPerMemoryTrimLevel jobCounts;
        refreshSystemStateLocked();
        if (this.mEffectiveInteractiveState) {
            jobCounts = this.mConstants.MAX_JOB_COUNTS_SCREEN_ON;
        } else {
            jobCounts = this.mConstants.MAX_JOB_COUNTS_SCREEN_OFF;
        }
        int i = this.mLastMemoryTrimLevel;
        if (i == 1) {
            this.mMaxJobCounts = jobCounts.moderate;
        } else if (i == 2) {
            this.mMaxJobCounts = jobCounts.low;
        } else if (i != 3) {
            this.mMaxJobCounts = jobCounts.normal;
        } else {
            this.mMaxJobCounts = jobCounts.critical;
        }
    }

    /* access modifiers changed from: package-private */
    @GuardedBy({"mLock"})
    public void assignJobsToContextsLocked() {
        long start = this.mStatLogger.getTime();
        assignJobsToContextsInternalLocked();
        this.mStatLogger.logDurationStat(0, start);
    }

    @GuardedBy({"mLock"})
    private void assignJobsToContextsInternalLocked() {
        int i;
        int i2;
        int[] preferredUidForContext;
        int jobRunningContext;
        int selectedContextId;
        int jobRunningContext2;
        int minPriorityForPreemption;
        if (DEBUG) {
            Slog.d("JobScheduler", printPendingQueueLocked());
        }
        JobPackageTracker tracker = this.mService.mJobPackageTracker;
        List<JobStatus> pendingJobs = this.mService.mPendingJobs;
        List<JobServiceContext> activeServices = this.mService.mActiveServices;
        List<StateController> controllers = this.mService.mControllers;
        updateMaxCountsLocked();
        JobStatus[] contextIdToJobMap = this.mRecycledAssignContextIdToJobMap;
        boolean[] slotChanged = this.mRecycledSlotChanged;
        int[] preferredUidForContext2 = this.mRecycledPreferredUidForContext;
        this.mJobCountTracker.reset(this.mMaxJobCounts.getMaxTotal(), this.mMaxJobCounts.getMaxBg(), this.mMaxJobCounts.getMinBg());
        int i3 = 0;
        while (true) {
            i = 16;
            if (i3 >= 16) {
                break;
            }
            JobServiceContext js = this.mService.mActiveServices.get(i3);
            JobStatus status = js.getRunningJobLocked();
            contextIdToJobMap[i3] = status;
            if (status != null) {
                this.mJobCountTracker.incrementRunningJobCount(isFgJob(status));
            }
            slotChanged[i3] = false;
            preferredUidForContext2[i3] = js.getPreferredUid();
            i3++;
        }
        if (DEBUG != 0) {
            Slog.d("JobScheduler", printContextIdToJobMap(contextIdToJobMap, "running jobs initial"));
        }
        int i4 = 0;
        while (true) {
            i2 = -1;
            if (i4 >= pendingJobs.size()) {
                break;
            }
            JobStatus pending = pendingJobs.get(i4);
            if (findJobContextIdFromMap(pending, contextIdToJobMap) == -1) {
                pending.lastEvaluatedPriority = this.mService.evaluateJobPriorityLocked(pending);
                this.mJobCountTracker.incrementPendingJobCount(isFgJob(pending));
            }
            i4++;
        }
        this.mJobCountTracker.onCountDone();
        int i5 = 0;
        while (i5 < pendingJobs.size()) {
            JobStatus nextPending = pendingJobs.get(i5);
            int jobRunningContext3 = findJobContextIdFromMap(nextPending, contextIdToJobMap);
            if (jobRunningContext3 != i2) {
                preferredUidForContext = preferredUidForContext2;
                jobRunningContext = i2;
            } else {
                boolean isPendingFg = isFgJob(nextPending);
                int selectedContextId2 = -1;
                boolean startingJob = false;
                int minPriorityForPreemption2 = Integer.MAX_VALUE;
                int j = 0;
                while (true) {
                    if (j >= i) {
                        preferredUidForContext = preferredUidForContext2;
                        int i6 = jobRunningContext3;
                        int i7 = minPriorityForPreemption2;
                        selectedContextId = selectedContextId2;
                        break;
                    }
                    JobStatus job = contextIdToJobMap[j];
                    int preferredUid = preferredUidForContext2[j];
                    if (job == null) {
                        preferredUidForContext = preferredUidForContext2;
                        boolean preferredUidOkay = preferredUid == nextPending.getUid() || preferredUid == -1;
                        if (preferredUidOkay) {
                            boolean z = preferredUidOkay;
                            if (this.mJobCountTracker.canJobStart(isPendingFg)) {
                                startingJob = true;
                                int i8 = jobRunningContext3;
                                selectedContextId = j;
                                int i9 = minPriorityForPreemption2;
                                break;
                            }
                        }
                        jobRunningContext2 = jobRunningContext3;
                        minPriorityForPreemption = minPriorityForPreemption2;
                    } else {
                        preferredUidForContext = preferredUidForContext2;
                        jobRunningContext2 = jobRunningContext3;
                        if (job.getUid() != nextPending.getUid()) {
                            minPriorityForPreemption = minPriorityForPreemption2;
                        } else {
                            int jobPriority = this.mService.evaluateJobPriorityLocked(job);
                            if (jobPriority >= nextPending.lastEvaluatedPriority) {
                                minPriorityForPreemption = minPriorityForPreemption2;
                            } else {
                                int i10 = jobPriority;
                                minPriorityForPreemption = minPriorityForPreemption2;
                                if (minPriorityForPreemption > nextPending.lastEvaluatedPriority) {
                                    minPriorityForPreemption2 = nextPending.lastEvaluatedPriority;
                                    selectedContextId2 = j;
                                    j++;
                                    preferredUidForContext2 = preferredUidForContext;
                                    jobRunningContext3 = jobRunningContext2;
                                    i = 16;
                                }
                            }
                        }
                    }
                    minPriorityForPreemption2 = minPriorityForPreemption;
                    j++;
                    preferredUidForContext2 = preferredUidForContext;
                    jobRunningContext3 = jobRunningContext2;
                    i = 16;
                }
                jobRunningContext = -1;
                if (selectedContextId != -1) {
                    contextIdToJobMap[selectedContextId] = nextPending;
                    slotChanged[selectedContextId] = true;
                }
                if (startingJob) {
                    this.mJobCountTracker.onStartingNewJob(isPendingFg);
                }
            }
            i5++;
            i2 = jobRunningContext;
            preferredUidForContext2 = preferredUidForContext;
            i = 16;
        }
        if (DEBUG) {
            Slog.d("JobScheduler", printContextIdToJobMap(contextIdToJobMap, "running jobs final"));
        }
        this.mJobCountTracker.logStatus();
        tracker.noteConcurrency(this.mJobCountTracker.getTotalRunningJobCountToNote(), this.mJobCountTracker.getFgRunningJobCountToNote());
        for (int i11 = 0; i11 < 16; i11++) {
            boolean preservePreferredUid = false;
            if (slotChanged[i11]) {
                if (activeServices.get(i11).getRunningJobLocked() != null) {
                    if (DEBUG) {
                        Slog.d("JobScheduler", "preempting job: " + activeServices.get(i11).getRunningJobLocked());
                    }
                    activeServices.get(i11).preemptExecutingJobLocked();
                    preservePreferredUid = true;
                } else {
                    JobStatus pendingJob = contextIdToJobMap[i11];
                    if (DEBUG) {
                        Slog.d("JobScheduler", "About to run job on context " + i11 + ", job: " + pendingJob);
                    }
                    for (int ic = 0; ic < controllers.size(); ic++) {
                        controllers.get(ic).prepareForExecutionLocked(pendingJob);
                    }
                    if (!activeServices.get(i11).executeRunnableJob(pendingJob)) {
                        Slog.d("JobScheduler", "Error executing " + pendingJob);
                    }
                    if (pendingJobs.remove(pendingJob)) {
                        tracker.noteNonpending(pendingJob);
                    }
                }
            }
            if (!preservePreferredUid) {
                activeServices.get(i11).clearPreferredUid();
            }
        }
    }

    private static int findJobContextIdFromMap(JobStatus jobStatus, JobStatus[] map) {
        for (int i = 0; i < map.length; i++) {
            if (map[i] != null && map[i].matches(jobStatus.getUid(), jobStatus.getJobId())) {
                return i;
            }
        }
        return -1;
    }

    @GuardedBy({"mLock"})
    private String printPendingQueueLocked() {
        StringBuilder s = new StringBuilder("Pending queue: ");
        Iterator<JobStatus> it = this.mService.mPendingJobs.iterator();
        while (it.hasNext()) {
            JobStatus js = it.next();
            s.append("(");
            s.append(js.getJob().getId());
            s.append(", ");
            s.append(js.getUid());
            s.append(") ");
        }
        return s.toString();
    }

    private static String printContextIdToJobMap(JobStatus[] map, String initial) {
        StringBuilder s = new StringBuilder(initial + ": ");
        for (int i = 0; i < map.length; i++) {
            s.append("(");
            int i2 = -1;
            s.append(map[i] == null ? -1 : map[i].getJobId());
            if (map[i] != null) {
                i2 = map[i].getUid();
            }
            s.append(i2);
            s.append(")");
        }
        return s.toString();
    }

    public void dumpLocked(IndentingPrintWriter pw, long now, long nowRealtime) {
        pw.println("Concurrency:");
        pw.increaseIndent();
        try {
            pw.print("Screen state: current ");
            String str = "ON";
            pw.print(this.mCurrentInteractiveState ? str : "OFF");
            pw.print("  effective ");
            if (!this.mEffectiveInteractiveState) {
                str = "OFF";
            }
            pw.print(str);
            pw.println();
            pw.print("Last screen ON : ");
            TimeUtils.dumpTimeWithDelta(pw, (now - nowRealtime) + this.mLastScreenOnRealtime, now);
            pw.println();
            pw.print("Last screen OFF: ");
            TimeUtils.dumpTimeWithDelta(pw, (now - nowRealtime) + this.mLastScreenOffRealtime, now);
            pw.println();
            pw.println();
            pw.println("Current max jobs:");
            pw.println("  ");
            pw.println(this.mJobCountTracker);
            pw.println();
            pw.print("mLastMemoryTrimLevel: ");
            pw.print(this.mLastMemoryTrimLevel);
            pw.println();
            this.mStatLogger.dump(pw);
        } finally {
            pw.decreaseIndent();
        }
    }

    public void dumpProtoLocked(ProtoOutputStream proto, long tag, long now, long nowRealtime) {
        long token = proto.start(tag);
        proto.write(1133871366145L, this.mCurrentInteractiveState);
        proto.write(1133871366146L, this.mEffectiveInteractiveState);
        proto.write(1112396529667L, nowRealtime - this.mLastScreenOnRealtime);
        proto.write(1112396529668L, nowRealtime - this.mLastScreenOffRealtime);
        this.mJobCountTracker.dumpProto(proto, 1146756268037L);
        proto.write(1120986464262L, this.mLastMemoryTrimLevel);
        proto.end(token);
    }

    @VisibleForTesting
    static class JobCountTracker {
        private int mConfigNumMaxBgJobs;
        private int mConfigNumMaxTotalJobs;
        private int mConfigNumMinBgJobs;
        private int mNumActualMaxBgJobs;
        private int mNumActualMaxFgJobs;
        private int mNumPendingBgJobs;
        private int mNumPendingFgJobs;
        private int mNumReservedForBg;
        private int mNumRunningBgJobs;
        private int mNumRunningFgJobs;
        private int mNumStartingBgJobs;
        private int mNumStartingFgJobs;

        JobCountTracker() {
        }

        /* access modifiers changed from: package-private */
        public void reset(int numTotalMaxJobs, int numMaxBgJobs, int numMinBgJobs) {
            this.mConfigNumMaxTotalJobs = numTotalMaxJobs;
            this.mConfigNumMaxBgJobs = numMaxBgJobs;
            this.mConfigNumMinBgJobs = numMinBgJobs;
            this.mNumRunningFgJobs = 0;
            this.mNumRunningBgJobs = 0;
            this.mNumPendingFgJobs = 0;
            this.mNumPendingBgJobs = 0;
            this.mNumStartingFgJobs = 0;
            this.mNumStartingBgJobs = 0;
            this.mNumReservedForBg = 0;
            this.mNumActualMaxFgJobs = 0;
            this.mNumActualMaxBgJobs = 0;
        }

        /* access modifiers changed from: package-private */
        public void incrementRunningJobCount(boolean isFg) {
            if (isFg) {
                this.mNumRunningFgJobs++;
            } else {
                this.mNumRunningBgJobs++;
            }
        }

        /* access modifiers changed from: package-private */
        public void incrementPendingJobCount(boolean isFg) {
            if (isFg) {
                this.mNumPendingFgJobs++;
            } else {
                this.mNumPendingBgJobs++;
            }
        }

        /* access modifiers changed from: package-private */
        public void onStartingNewJob(boolean isFg) {
            if (isFg) {
                this.mNumStartingFgJobs++;
            } else {
                this.mNumStartingBgJobs++;
            }
        }

        /* access modifiers changed from: package-private */
        public void onCountDone() {
            this.mNumReservedForBg = Math.min(Math.min(this.mConfigNumMinBgJobs, this.mNumRunningBgJobs + this.mNumPendingBgJobs), this.mConfigNumMaxTotalJobs - this.mNumRunningFgJobs);
            this.mNumActualMaxFgJobs = Math.min(this.mConfigNumMaxTotalJobs - Math.max(this.mNumRunningBgJobs, this.mNumReservedForBg), this.mNumRunningFgJobs + this.mNumPendingFgJobs);
            this.mNumActualMaxBgJobs = Math.min(Math.min(this.mConfigNumMaxBgJobs, this.mConfigNumMaxTotalJobs - this.mNumActualMaxFgJobs), this.mNumRunningBgJobs + this.mNumPendingBgJobs);
        }

        /* access modifiers changed from: package-private */
        public boolean canJobStart(boolean isFg) {
            if (isFg) {
                if (this.mNumRunningFgJobs + this.mNumStartingFgJobs < this.mNumActualMaxFgJobs) {
                    return true;
                }
                return false;
            } else if (this.mNumRunningBgJobs + this.mNumStartingBgJobs < this.mNumActualMaxBgJobs) {
                return true;
            } else {
                return false;
            }
        }

        public int getNumStartingFgJobs() {
            return this.mNumStartingFgJobs;
        }

        public int getNumStartingBgJobs() {
            return this.mNumStartingBgJobs;
        }

        /* access modifiers changed from: package-private */
        public int getTotalRunningJobCountToNote() {
            return this.mNumRunningFgJobs + this.mNumRunningBgJobs + this.mNumStartingFgJobs + this.mNumStartingBgJobs;
        }

        /* access modifiers changed from: package-private */
        public int getFgRunningJobCountToNote() {
            return this.mNumRunningFgJobs + this.mNumStartingFgJobs;
        }

        /* access modifiers changed from: package-private */
        public void logStatus() {
            if (JobConcurrencyManager.DEBUG) {
                Slog.d("JobScheduler", "assignJobsToContexts: " + this);
            }
        }

        public String toString() {
            String str;
            String str2;
            String str3;
            String str4;
            int totalFg = this.mNumRunningFgJobs + this.mNumStartingFgJobs;
            int totalBg = this.mNumRunningBgJobs + this.mNumStartingBgJobs;
            Object[] objArr = new Object[25];
            objArr[0] = Integer.valueOf(this.mConfigNumMaxTotalJobs);
            objArr[1] = Integer.valueOf(this.mConfigNumMinBgJobs);
            objArr[2] = Integer.valueOf(this.mConfigNumMaxBgJobs);
            objArr[3] = Integer.valueOf(this.mNumRunningFgJobs);
            objArr[4] = Integer.valueOf(this.mNumRunningBgJobs);
            objArr[5] = Integer.valueOf(this.mNumRunningFgJobs + this.mNumRunningBgJobs);
            objArr[6] = Integer.valueOf(this.mNumPendingFgJobs);
            objArr[7] = Integer.valueOf(this.mNumPendingBgJobs);
            objArr[8] = Integer.valueOf(this.mNumPendingFgJobs + this.mNumPendingBgJobs);
            objArr[9] = Integer.valueOf(this.mNumActualMaxFgJobs);
            String str5 = "";
            objArr[10] = totalFg <= this.mConfigNumMaxTotalJobs ? str5 : "*";
            objArr[11] = Integer.valueOf(this.mNumActualMaxBgJobs);
            if (totalBg <= this.mConfigNumMaxBgJobs) {
                str = str5;
            } else {
                str = "*";
            }
            objArr[12] = str;
            objArr[13] = Integer.valueOf(this.mNumActualMaxFgJobs + this.mNumActualMaxBgJobs);
            if (this.mNumActualMaxFgJobs + this.mNumActualMaxBgJobs <= this.mConfigNumMaxTotalJobs) {
                str2 = str5;
            } else {
                str2 = "*";
            }
            objArr[14] = str2;
            objArr[15] = Integer.valueOf(this.mNumReservedForBg);
            objArr[16] = Integer.valueOf(this.mNumStartingFgJobs);
            objArr[17] = Integer.valueOf(this.mNumStartingBgJobs);
            objArr[18] = Integer.valueOf(this.mNumStartingFgJobs + this.mNumStartingBgJobs);
            objArr[19] = Integer.valueOf(totalFg);
            if (totalFg <= this.mNumActualMaxFgJobs) {
                str3 = str5;
            } else {
                str3 = "*";
            }
            objArr[20] = str3;
            objArr[21] = Integer.valueOf(totalBg);
            if (totalBg <= this.mNumActualMaxBgJobs) {
                str4 = str5;
            } else {
                str4 = "*";
            }
            objArr[22] = str4;
            objArr[23] = Integer.valueOf(totalFg + totalBg);
            if (totalFg + totalBg > this.mConfigNumMaxTotalJobs) {
                str5 = "*";
            }
            objArr[24] = str5;
            return String.format("Config={tot=%d bg min/max=%d/%d} Running[FG/BG (total)]: %d / %d (%d) Pending: %d / %d (%d) Actual max: %d%s / %d%s (%d%s) Res BG: %d Starting: %d / %d (%d) Total: %d%s / %d%s (%d%s)", objArr);
        }

        public void dumpProto(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.mConfigNumMaxTotalJobs);
            proto.write(1120986464258L, this.mConfigNumMaxBgJobs);
            proto.write(1120986464259L, this.mConfigNumMinBgJobs);
            proto.write(1120986464260L, this.mNumRunningFgJobs);
            proto.write(1120986464261L, this.mNumRunningBgJobs);
            proto.write(1120986464262L, this.mNumPendingFgJobs);
            proto.write(1120986464263L, this.mNumPendingBgJobs);
            proto.end(token);
        }
    }
}
