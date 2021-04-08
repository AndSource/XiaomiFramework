.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThread;

.field private final synthetic f$1:Landroid/telephony/ims/RcsOutgoingMessageCreationParams;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/RcsOutgoingMessageCreationParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;->f$0:Landroid/telephony/ims/RcsThread;

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;->f$1:Landroid/telephony/ims/RcsOutgoingMessageCreationParams;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;->f$0:Landroid/telephony/ims/RcsThread;

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;->f$1:Landroid/telephony/ims/RcsOutgoingMessageCreationParams;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/RcsThread;->lambda$addOutgoingMessage$2$RcsThread(Landroid/telephony/ims/RcsOutgoingMessageCreationParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
