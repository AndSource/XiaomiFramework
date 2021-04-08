.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThread;

.field private final synthetic f$1:Landroid/telephony/ims/RcsMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/RcsMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;->f$0:Landroid/telephony/ims/RcsThread;

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;->f$1:Landroid/telephony/ims/RcsMessage;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;->f$0:Landroid/telephony/ims/RcsThread;

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;->f$1:Landroid/telephony/ims/RcsMessage;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/RcsThread;->lambda$deleteMessage$3$RcsThread(Landroid/telephony/ims/RcsMessage;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
