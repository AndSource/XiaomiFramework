package android.os;

import android.os.FileUtils.ProgressListener;

/* compiled from: lambda */
public final /* synthetic */ class -$$Lambda$FileUtils$QtbHtI8Y1rifwydngi6coGK5l2A implements Runnable {
    private final /* synthetic */ ProgressListener f$0;
    private final /* synthetic */ long f$1;

    public /* synthetic */ -$$Lambda$FileUtils$QtbHtI8Y1rifwydngi6coGK5l2A(ProgressListener progressListener, long j) {
        this.f$0 = progressListener;
        this.f$1 = j;
    }

    public final void run() {
        this.f$0.onProgress(this.f$1);
    }
}
