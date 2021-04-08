.class Landroid/hardware/miuiface/Miui3DFaceManagerImpl$2;
.super Landroid/database/ContentObserver;
.source "Miui3DFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;


# direct methods
.method constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$2;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$200(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "power_supersave_mode_open"

    invoke-static {v1, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v0, v2}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$302(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Z)Z

    return-void
.end method
