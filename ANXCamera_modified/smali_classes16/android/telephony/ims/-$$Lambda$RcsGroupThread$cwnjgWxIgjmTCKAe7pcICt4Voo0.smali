.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsGroupThread$cwnjgWxIgjmTCKAe7pcICt4Voo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsGroupThread;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsGroupThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$cwnjgWxIgjmTCKAe7pcICt4Voo0;->f$0:Landroid/telephony/ims/RcsGroupThread;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$cwnjgWxIgjmTCKAe7pcICt4Voo0;->f$0:Landroid/telephony/ims/RcsGroupThread;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsGroupThread;->lambda$getGroupName$0$RcsGroupThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
