.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsFileTransferPart;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsFileTransferPart;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    iput-wide p2, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;->f$1:J

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    iget-wide v1, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;->f$1:J

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/telephony/ims/RcsFileTransferPart;->lambda$setFileSize$6$RcsFileTransferPart(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
