.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessage$uP-7yJmMalJRjXgq_qS_YvAUKuo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsOutgoingMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsOutgoingMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessage$uP-7yJmMalJRjXgq_qS_YvAUKuo;->f$0:Landroid/telephony/ims/RcsOutgoingMessage;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessage$uP-7yJmMalJRjXgq_qS_YvAUKuo;->f$0:Landroid/telephony/ims/RcsOutgoingMessage;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsOutgoingMessage;->lambda$getOutgoingDeliveries$0$RcsOutgoingMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method
