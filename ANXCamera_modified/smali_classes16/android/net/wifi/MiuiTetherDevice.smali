.class public Landroid/net/wifi/MiuiTetherDevice;
.super Ljava/lang/Object;
.source "MiuiTetherDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/MiuiTetherDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCONNECTED:I


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/MiuiTetherDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/MiuiTetherDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/MiuiTetherDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceState:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceState:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceState:I

    :goto_0
    iput-object p1, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/net/wifi/MiuiTetherDevice;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/MiuiTetherDevice;

    iget-object v2, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v0, v1, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/MiuiTetherDevice;->deviceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
