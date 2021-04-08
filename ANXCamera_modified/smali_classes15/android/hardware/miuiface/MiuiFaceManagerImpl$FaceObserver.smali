.class Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;
.super Landroid/database/ContentObserver;
.source "MiuiFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x65de7d08

    const-string v3, "face_unlock_valid_feature"

    const-string/jumbo v4, "power_supersave_mode_open"

    const-string v5, "face_unlock_has_feature"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v2, :cond_3

    const v2, 0x10b69525

    if-eq v1, v2, :cond_2

    const v2, 0x7192709a

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-static {v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v8, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    invoke-static {v1, v7}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1102(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z

    goto :goto_4

    :cond_6
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-static {v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move v7, v8

    :goto_3
    invoke-static {v1, v7}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1002(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z

    goto :goto_4

    :cond_8
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-static {v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v8, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$802(Landroid/hardware/miuiface/MiuiFaceManagerImpl;I)I

    nop

    :goto_4
    return-void
.end method
