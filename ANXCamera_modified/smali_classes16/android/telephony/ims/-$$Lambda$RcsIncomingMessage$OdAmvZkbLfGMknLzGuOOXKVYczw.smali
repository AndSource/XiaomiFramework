.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsIncomingMessage;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsIncomingMessage;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;->f$0:Landroid/telephony/ims/RcsIncomingMessage;

    iput-wide p2, p0, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;->f$1:J

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;->f$0:Landroid/telephony/ims/RcsIncomingMessage;

    iget-wide v1, p0, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;->f$1:J

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/telephony/ims/RcsIncomingMessage;->lambda$setArrivalTimestamp$0$RcsIncomingMessage(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
