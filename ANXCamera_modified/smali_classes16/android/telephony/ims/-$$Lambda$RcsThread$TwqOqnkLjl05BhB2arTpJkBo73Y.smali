.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsThread$TwqOqnkLjl05BhB2arTpJkBo73Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsThread;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$TwqOqnkLjl05BhB2arTpJkBo73Y;->f$0:Landroid/telephony/ims/RcsThread;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsThread$TwqOqnkLjl05BhB2arTpJkBo73Y;->f$0:Landroid/telephony/ims/RcsThread;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsThread;->lambda$getSnippet$0$RcsThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageSnippet;

    move-result-object p1

    return-object p1
.end method
