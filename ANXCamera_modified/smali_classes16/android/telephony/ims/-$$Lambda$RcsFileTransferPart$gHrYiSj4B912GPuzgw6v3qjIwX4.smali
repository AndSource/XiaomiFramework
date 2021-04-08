.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;


# instance fields
.field private final synthetic f$0:Landroid/telephony/ims/RcsFileTransferPart;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsFileTransferPart;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    iput-object p2, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;->f$0:Landroid/telephony/ims/RcsFileTransferPart;

    iget-object v1, p0, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/RcsFileTransferPart;->lambda$setContentUri$2$RcsFileTransferPart(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    return-void
.end method
