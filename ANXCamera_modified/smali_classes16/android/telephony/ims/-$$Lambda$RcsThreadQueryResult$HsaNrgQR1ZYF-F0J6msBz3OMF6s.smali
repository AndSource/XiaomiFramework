.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsThreadQueryResult$HsaNrgQR1ZYF-F0J6msBz3OMF6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThreadQueryResult;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThreadQueryResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsThreadQueryResult$HsaNrgQR1ZYF-F0J6msBz3OMF6s;->f$0:Landroid/telephony/ims/RcsThreadQueryResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsThreadQueryResult$HsaNrgQR1ZYF-F0J6msBz3OMF6s;->f$0:Landroid/telephony/ims/RcsThreadQueryResult;

    check-cast p1, Lcom/android/ims/RcsTypeIdPair;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RcsThreadQueryResult;->lambda$getThreads$0$RcsThreadQueryResult(Lcom/android/ims/RcsTypeIdPair;)Landroid/telephony/ims/RcsThread;

    move-result-object p1

    return-object p1
.end method
