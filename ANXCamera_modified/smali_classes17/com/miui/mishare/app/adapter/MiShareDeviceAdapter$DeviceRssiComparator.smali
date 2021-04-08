.class final Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;
.super Ljava/lang/Object;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceRssiComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/mishare/app/model/MiShareDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;->this$0:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/mishare/app/model/MiShareDevice;Lcom/miui/mishare/app/model/MiShareDevice;)I
    .locals 4

    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->LAST_SENT_DEVICE:Landroid/util/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->LAST_SENT_DEVICE:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->LAST_SENT_DEVICE:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p2, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "rssi"

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v2}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v2}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    nop

    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v3}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v1}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_5
    :goto_2
    move v0, v1

    sub-int v1, v0, v2

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/mishare/app/model/MiShareDevice;

    check-cast p2, Lcom/miui/mishare/app/model/MiShareDevice;

    invoke-virtual {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;->compare(Lcom/miui/mishare/app/model/MiShareDevice;Lcom/miui/mishare/app/model/MiShareDevice;)I

    move-result p1

    return p1
.end method
