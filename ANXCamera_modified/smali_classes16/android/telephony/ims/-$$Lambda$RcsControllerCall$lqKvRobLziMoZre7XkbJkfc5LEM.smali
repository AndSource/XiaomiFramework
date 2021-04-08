.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsControllerCall$lqKvRobLziMoZre7XkbJkfc5LEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsControllerCall$lqKvRobLziMoZre7XkbJkfc5LEM;->f$0:Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsControllerCall$lqKvRobLziMoZre7XkbJkfc5LEM;->f$0:Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsControllerCall;->lambda$callWithNoReturn$0(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
