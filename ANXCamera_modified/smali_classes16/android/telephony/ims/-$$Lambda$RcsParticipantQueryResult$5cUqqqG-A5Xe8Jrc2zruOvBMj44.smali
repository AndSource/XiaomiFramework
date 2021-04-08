.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsParticipantQueryResult$5cUqqqG-A5Xe8Jrc2zruOvBMj44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsParticipantQueryResult;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsParticipantQueryResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsParticipantQueryResult$5cUqqqG-A5Xe8Jrc2zruOvBMj44;->f$0:Landroid/telephony/ims/RcsParticipantQueryResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsParticipantQueryResult$5cUqqqG-A5Xe8Jrc2zruOvBMj44;->f$0:Landroid/telephony/ims/RcsParticipantQueryResult;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RcsParticipantQueryResult;->lambda$getParticipants$0$RcsParticipantQueryResult(Ljava/lang/Integer;)Landroid/telephony/ims/RcsParticipant;

    move-result-object p1

    return-object p1
.end method
