.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsMessage;

.field private final synthetic f$1:Landroid/telephony/ims/RcsFileTransferCreationParams;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsMessage;Landroid/telephony/ims/RcsFileTransferCreationParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;->f$0:Landroid/telephony/ims/RcsMessage;

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;->f$1:Landroid/telephony/ims/RcsFileTransferCreationParams;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;->f$0:Landroid/telephony/ims/RcsMessage;

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;->f$1:Landroid/telephony/ims/RcsFileTransferCreationParams;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/RcsMessage;->lambda$insertFileTransfer$14$RcsMessage(Landroid/telephony/ims/RcsFileTransferCreationParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
