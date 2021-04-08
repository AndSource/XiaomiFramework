.class public final Landroid/telephony/ims/RcsThreadQueryResult;
.super Ljava/lang/Object;
.source "RcsThreadQueryResult.java"


# instance fields
.field private final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

.field private final mRcsThreadQueryResultParcelable:Landroid/telephony/ims/RcsThreadQueryResultParcelable;


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsThreadQueryResultParcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsThreadQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput-object p2, p0, Landroid/telephony/ims/RcsThreadQueryResult;->mRcsThreadQueryResultParcelable:Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    return-void
.end method


# virtual methods
.method public getContinuationToken()Landroid/telephony/ims/RcsQueryContinuationToken;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryResult;->mRcsThreadQueryResultParcelable:Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    iget-object v0, v0, Landroid/telephony/ims/RcsThreadQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    return-object v0
.end method

.method public getThreads()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsThread;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryResult;->mRcsThreadQueryResultParcelable:Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    iget-object v0, v0, Landroid/telephony/ims/RcsThreadQueryResultParcelable;->mRcsThreadIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsThreadQueryResult$HsaNrgQR1ZYF-F0J6msBz3OMF6s;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsThreadQueryResult$HsaNrgQR1ZYF-F0J6msBz3OMF6s;-><init>(Landroid/telephony/ims/RcsThreadQueryResult;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic lambda$getThreads$0$RcsThreadQueryResult(Lcom/android/ims/RcsTypeIdPair;)Landroid/telephony/ims/RcsThread;
    .locals 3

    invoke-virtual {p1}, Lcom/android/ims/RcsTypeIdPair;->getType()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/telephony/ims/Rcs1To1Thread;

    iget-object v1, p0, Landroid/telephony/ims/RcsThreadQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {p1}, Lcom/android/ims/RcsTypeIdPair;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/Rcs1To1Thread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telephony/ims/RcsGroupThread;

    iget-object v1, p0, Landroid/telephony/ims/RcsThreadQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {p1}, Lcom/android/ims/RcsTypeIdPair;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsGroupThread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    :goto_0
    return-object v0
.end method
