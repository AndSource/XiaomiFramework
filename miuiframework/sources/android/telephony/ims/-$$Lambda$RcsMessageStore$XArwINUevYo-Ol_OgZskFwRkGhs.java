package android.telephony.ims;

import android.telephony.ims.aidl.IRcs;

/* compiled from: lambda */
public final /* synthetic */ class -$$Lambda$RcsMessageStore$XArwINUevYo-Ol_OgZskFwRkGhs implements RcsServiceCall {
    private final /* synthetic */ RcsQueryContinuationToken f$0;

    public /* synthetic */ -$$Lambda$RcsMessageStore$XArwINUevYo-Ol_OgZskFwRkGhs(RcsQueryContinuationToken rcsQueryContinuationToken) {
        this.f$0 = rcsQueryContinuationToken;
    }

    public final Object methodOnIRcs(IRcs iRcs, String str) {
        return iRcs.getRcsThreadsWithToken(this.f$0, str);
    }
}