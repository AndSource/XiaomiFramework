.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThread;

.field private final synthetic f$1:Landroid/telephony/ims/RcsIncomingMessageCreationParams;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/RcsIncomingMessageCreationParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;->f$0:Landroid/telephony/ims/RcsThread;

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;->f$1:Landroid/telephony/ims/RcsIncomingMessageCreationParams;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;->f$0:Landroid/telephony/ims/RcsThread;

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;->f$1:Landroid/telephony/ims/RcsIncomingMessageCreationParams;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/RcsThread;->lambda$addIncomingMessage$1$RcsThread(Landroid/telephony/ims/RcsIncomingMessageCreationParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
