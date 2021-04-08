.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsMessage$ArUQB5LoWlQIN8Wq6WO2D83-1MM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsFileTransferPart;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsFileTransferPart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$ArUQB5LoWlQIN8Wq6WO2D83-1MM;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsMessage$ArUQB5LoWlQIN8Wq6WO2D83-1MM;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsMessage;->lambda$removeFileTransferPart$16(Landroid/telephony/ims/RcsFileTransferPart;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
