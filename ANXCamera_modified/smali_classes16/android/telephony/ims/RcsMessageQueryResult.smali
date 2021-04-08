.class public final Landroid/telephony/ims/RcsMessageQueryResult;
.super Ljava/lang/Object;
.source "RcsMessageQueryResult.java"


# instance fields
.field private final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

.field private final mRcsMessageQueryResultParcelable:Landroid/telephony/ims/RcsMessageQueryResultParcelable;


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsMessageQueryResultParcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsMessageQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput-object p2, p0, Landroid/telephony/ims/RcsMessageQueryResult;->mRcsMessageQueryResultParcelable:Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    return-void
.end method


# virtual methods
.method public getContinuationToken()Landroid/telephony/ims/RcsQueryContinuationToken;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResult;->mRcsMessageQueryResultParcelable:Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    iget-object v0, v0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResult;->mRcsMessageQueryResultParcelable:Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    iget-object v0, v0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mMessageTypeIdPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessageQueryResult$20XnTdVu75hlh0utIOyf1L-ZpTE;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessageQueryResult$20XnTdVu75hlh0utIOyf1L-ZpTE;-><init>(Landroid/telephony/ims/RcsMessageQueryResult;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic lambda$getMessages$0$RcsMessageQueryResult(Lcom/android/ims/RcsTypeIdPair;)Landroid/telephony/ims/RcsMessage;
    .locals 3

    invoke-virtual {p1}, Lcom/android/ims/RcsTypeIdPair;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/telephony/ims/RcsIncomingMessage;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {p1}, Lcom/android/ims/RcsTypeIdPair;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsIncomingMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telephony/ims/RcsOutgoingMessage;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {p1}, Lcom/android/ims/RcsTypeIdPair;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsOutgoingMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    :goto_0
    return-object v0
.end method
