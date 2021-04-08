.class public final Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MiShareDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$800(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lmiui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$900(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$900(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$Receiver;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->access$800(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
