.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsFileTransferPart;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsFileTransferPart;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    iput p2, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;->f$1:I

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    iget v1, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/RcsFileTransferPart;->lambda$setWidth$13$RcsFileTransferPart(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
