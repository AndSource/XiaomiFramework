.class public interface abstract Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;
.super Ljava/lang/Object;
.source "HdmiSwitchClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiSwitchClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSelectListener"
.end annotation


# virtual methods
.method public abstract onSelect(I)V
    .param p1    # I
        .annotation build Landroid/hardware/hdmi/HdmiControlManager$ControlCallbackResult;
        .end annotation
    .end param
.end method
