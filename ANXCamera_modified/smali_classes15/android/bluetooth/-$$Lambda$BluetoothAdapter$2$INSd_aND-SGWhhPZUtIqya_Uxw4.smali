.class public final synthetic Landroid/bluetooth/-$$Lambda$BluetoothAdapter$2$INSd_aND-SGWhhPZUtIqya_Uxw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Landroid/bluetooth/BluetoothAdapter$2;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothAdapter$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$2$INSd_aND-SGWhhPZUtIqya_Uxw4;->f$0:Landroid/bluetooth/BluetoothAdapter$2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$2$INSd_aND-SGWhhPZUtIqya_Uxw4;->f$0:Landroid/bluetooth/BluetoothAdapter$2;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$2;->lambda$onBluetoothServiceUp$0$BluetoothAdapter$2(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    return-void
.end method
