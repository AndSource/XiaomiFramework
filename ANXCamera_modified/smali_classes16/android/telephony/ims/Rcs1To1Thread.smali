.class public Landroid/telephony/ims/Rcs1To1Thread;
.super Landroid/telephony/ims/RcsThread;
.source "Rcs1To1Thread.java"


# instance fields
.field private mThreadId:I


# direct methods
.method public constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsThread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    iput p2, p0, Landroid/telephony/ims/Rcs1To1Thread;->mThreadId:I

    return-void
.end method


# virtual methods
.method public getFallbackThreadId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/Rcs1To1Thread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$_6gUCvjDS6WXqf0AClQwrZ7ZpSc;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$_6gUCvjDS6WXqf0AClQwrZ7ZpSc;-><init>(Landroid/telephony/ims/Rcs1To1Thread;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecipient()Landroid/telephony/ims/RcsParticipant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipant;

    iget-object v1, p0, Landroid/telephony/ims/Rcs1To1Thread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iget-object v2, p0, Landroid/telephony/ims/Rcs1To1Thread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$DlCgifrXUJFouqWWh-0GG6hzH-s;

    invoke-direct {v3, p0}, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$DlCgifrXUJFouqWWh-0GG6hzH-s;-><init>(Landroid/telephony/ims/Rcs1To1Thread;)V

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public isGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$getFallbackThreadId$0$Rcs1To1Thread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/Rcs1To1Thread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->get1To1ThreadFallbackThreadId(ILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getRecipient$2$Rcs1To1Thread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/Rcs1To1Thread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->get1To1ThreadOtherParticipantId(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setFallbackThreadId$1$Rcs1To1Thread(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/Rcs1To1Thread;->mThreadId:I

    invoke-interface {p3, v0, p1, p2, p4}, Landroid/telephony/ims/aidl/IRcs;->set1To1ThreadFallbackThreadId(IJLjava/lang/String;)V

    return-void
.end method

.method public setFallbackThreadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/Rcs1To1Thread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$vx_evSYitgJIMB6l-hANvSJpdBE;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$Rcs1To1Thread$vx_evSYitgJIMB6l-hANvSJpdBE;-><init>(Landroid/telephony/ims/Rcs1To1Thread;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
