.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessageQueryResult$20XnTdVu75hlh0utIOyf1L-ZpTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsMessageQueryResult;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsMessageQueryResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageQueryResult$20XnTdVu75hlh0utIOyf1L-ZpTE;->f$0:Landroid/telephony/ims/RcsMessageQueryResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessageQueryResult$20XnTdVu75hlh0utIOyf1L-ZpTE;->f$0:Landroid/telephony/ims/RcsMessageQueryResult;

    check-cast p1, Lcom/android/ims/RcsTypeIdPair;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RcsMessageQueryResult;->lambda$getMessages$0$RcsMessageQueryResult(Lcom/android/ims/RcsTypeIdPair;)Landroid/telephony/ims/RcsMessage;

    move-result-object p1

    return-object p1
.end method
