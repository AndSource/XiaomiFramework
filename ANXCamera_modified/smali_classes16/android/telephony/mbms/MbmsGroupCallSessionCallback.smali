.class public interface abstract Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
.super Ljava/lang/Object;
.source "MbmsGroupCallSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsGroupCallSessionCallback$GroupCallError;
    }
.end annotation


# virtual methods
.method public onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMiddlewareReady()V
    .locals 0

    return-void
.end method

.method public onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
