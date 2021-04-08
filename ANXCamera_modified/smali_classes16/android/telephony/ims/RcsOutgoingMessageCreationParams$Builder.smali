.class public Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;
.super Landroid/telephony/ims/RcsMessageCreationParams$Builder;
.source "RcsOutgoingMessageCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsOutgoingMessageCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/telephony/ims/RcsMessageCreationParams;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;->build()Landroid/telephony/ims/RcsOutgoingMessageCreationParams;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/telephony/ims/RcsOutgoingMessageCreationParams;
    .locals 2

    new-instance v0, Landroid/telephony/ims/RcsOutgoingMessageCreationParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/RcsOutgoingMessageCreationParams;-><init>(Landroid/telephony/ims/RcsOutgoingMessageCreationParams$Builder;Landroid/telephony/ims/RcsOutgoingMessageCreationParams$1;)V

    return-object v0
.end method
