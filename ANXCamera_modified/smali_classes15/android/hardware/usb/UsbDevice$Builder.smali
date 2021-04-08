.class public Landroid/hardware/usb/UsbDevice$Builder;
.super Ljava/lang/Object;
.source "UsbDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mClass:I

.field private final mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

.field private final mManufacturerName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mProductName:Ljava/lang/String;

.field private final mProtocol:I

.field private final mSubclass:I

.field private final mVendorId:I

.field private final mVersion:Ljava/lang/String;

.field public final serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice$Builder;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/usb/UsbDevice$Builder;->mVendorId:I

    iput p3, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProductId:I

    iput p4, p0, Landroid/hardware/usb/UsbDevice$Builder;->mClass:I

    iput p5, p0, Landroid/hardware/usb/UsbDevice$Builder;->mSubclass:I

    iput p6, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProtocol:I

    iput-object p7, p0, Landroid/hardware/usb/UsbDevice$Builder;->mManufacturerName:Ljava/lang/String;

    iput-object p8, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProductName:Ljava/lang/String;

    invoke-static {p9}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/UsbDevice$Builder;->mVersion:Ljava/lang/String;

    iput-object p10, p0, Landroid/hardware/usb/UsbDevice$Builder;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    iput-object p11, p0, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;
    .locals 14

    new-instance v13, Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice$Builder;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/usb/UsbDevice$Builder;->mVendorId:I

    iget v3, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProductId:I

    iget v4, p0, Landroid/hardware/usb/UsbDevice$Builder;->mClass:I

    iget v5, p0, Landroid/hardware/usb/UsbDevice$Builder;->mSubclass:I

    iget v6, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProtocol:I

    iget-object v7, p0, Landroid/hardware/usb/UsbDevice$Builder;->mManufacturerName:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/usb/UsbDevice$Builder;->mProductName:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/usb/UsbDevice$Builder;->mVersion:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/usb/UsbDevice$Builder;->mConfigurations:[Landroid/hardware/usb/UsbConfiguration;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v11, p1

    invoke-direct/range {v0 .. v12}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Landroid/hardware/usb/IUsbSerialReader;Landroid/hardware/usb/UsbDevice$1;)V

    return-object v13
.end method
