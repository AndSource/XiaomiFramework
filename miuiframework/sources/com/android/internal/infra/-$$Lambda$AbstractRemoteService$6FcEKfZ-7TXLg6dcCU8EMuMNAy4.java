package com.android.internal.infra;

import com.android.internal.infra.AbstractRemoteService.BasePendingRequest;
import java.util.function.BiConsumer;

/* compiled from: lambda */
public final /* synthetic */ class -$$Lambda$AbstractRemoteService$6FcEKfZ-7TXLg6dcCU8EMuMNAy4 implements BiConsumer {
    public static final /* synthetic */ -$$Lambda$AbstractRemoteService$6FcEKfZ-7TXLg6dcCU8EMuMNAy4 INSTANCE = new -$$Lambda$AbstractRemoteService$6FcEKfZ-7TXLg6dcCU8EMuMNAy4();

    private /* synthetic */ -$$Lambda$AbstractRemoteService$6FcEKfZ-7TXLg6dcCU8EMuMNAy4() {
    }

    public final void accept(Object obj, Object obj2) {
        ((AbstractRemoteService) obj).handleFinishRequest((BasePendingRequest) obj2);
    }
}
