package android.os;

import android.os.FileUtils.ProgressListener;

/* compiled from: lambda */
public final /* synthetic */ class -$$Lambda$FileUtils$e0JoE-HjVf9vMX679eNxZixyUZ0 implements Runnable {
    private final /* synthetic */ ProgressListener f$0;
    private final /* synthetic */ long f$1;

    public /* synthetic */ -$$Lambda$FileUtils$e0JoE-HjVf9vMX679eNxZixyUZ0(ProgressListener progressListener, long j) {
        this.f$0 = progressListener;
        this.f$1 = j;
    }

    public final void run() {
        this.f$0.onProgress(this.f$1);
    }
}
