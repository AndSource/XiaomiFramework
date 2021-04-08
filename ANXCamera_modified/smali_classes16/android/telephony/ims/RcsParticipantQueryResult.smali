.class public final Landroid/telephony/ims/RcsParticipantQueryResult;
.super Ljava/lang/Object;
.source "RcsParticipantQueryResult.java"


# instance fields
.field private final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

.field private final mRcsParticipantQueryResultParcelable:Landroid/telephony/ims/RcsParticipantQueryResultParcelable;


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsParticipantQueryResultParcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsParticipantQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput-object p2, p0, Landroid/telephony/ims/RcsParticipantQueryResult;->mRcsParticipantQueryResultParcelable:Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    return-void
.end method


# virtual methods
.method public getContinuationToken()Landroid/telephony/ims/RcsQueryContinuationToken;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResult;->mRcsParticipantQueryResultParcelable:Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    iget-object v0, v0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResult;->mRcsParticipantQueryResultParcelable:Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    iget-object v0, v0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mParticipantIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsParticipantQueryResult$5cUqqqG-A5Xe8Jrc2zruOvBMj44;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsParticipantQueryResult$5cUqqqG-A5Xe8Jrc2zruOvBMj44;-><init>(Landroid/telephony/ims/RcsParticipantQueryResult;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic lambda$getParticipants$0$RcsParticipantQueryResult(Ljava/lang/Integer;)Landroid/telephony/ims/RcsParticipant;
    .locals 3

    new-instance v0, Landroid/telephony/ims/RcsParticipant;

    iget-object v1, p0, Landroid/telephony/ims/RcsParticipantQueryResult;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method
