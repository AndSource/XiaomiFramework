.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsGroupThread$hYpkX2Z60Pf5FiSb6pvoBpmHfXA;
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

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$hYpkX2Z60Pf5FiSb6pvoBpmHfXA;->f$0:Landroid/telephony/ims/RcsGroupThread;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$hYpkX2Z60Pf5FiSb6pvoBpmHfXA;->f$0:Landroid/telephony/ims/RcsGroupThread;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RcsGroupThread;->lambda$getConferenceUri$9$RcsGroupThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
