.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$Hwf3ep_etCKWfwwAtq0Sdu0dtwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsOutgoingMessageDelivery;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$Hwf3ep_etCKWfwwAtq0Sdu0dtwY;->f$0:Landroid/telephony/ims/RcsOutgoingMessageDelivery;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$Hwf3ep_etCKWfwwAtq0Sdu0dtwY;->f$0:Landroid/telephony/ims/RcsOutgoingMessageDelivery;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->lambda$getStatus$5$RcsOutgoingMessageDelivery(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
