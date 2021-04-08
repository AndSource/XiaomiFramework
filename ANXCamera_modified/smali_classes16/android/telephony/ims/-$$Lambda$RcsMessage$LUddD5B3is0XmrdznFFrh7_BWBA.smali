.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsMessage;

.field private final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsMessage;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;->f$0:Landroid/telephony/ims/RcsMessage;

    iput-wide p2, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;->f$1:D

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;->f$0:Landroid/telephony/ims/RcsMessage;

    iget-wide v1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;->f$1:D

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/telephony/ims/RcsMessage;->lambda$setLongitude$13$RcsMessage(DLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
