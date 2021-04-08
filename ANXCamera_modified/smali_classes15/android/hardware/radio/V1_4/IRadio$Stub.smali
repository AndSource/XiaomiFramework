.class public abstract Landroid/hardware/radio/V1_4/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_1
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x1dt
        0x19t
        0x72t
        0xdt
        0x4ft
        -0x2dt
        -0x75t
        0x10t
        -0x6bt
        -0x10t
        -0xbt
        0x55t
        -0x5ct
        -0x43t
        -0x6et
        -0x4dt
        -0x4ft
        0x2ct
        -0x65t
        0x1dt
        0xft
        0x56t
        0xbt
        0xet
        -0x66t
        0x47t
        0x4ct
        -0x2at
        -0x24t
        -0x3et
        0xdt
        -0x4at
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x62t
        -0x21t
        0x50t
        -0x5dt
        0x78t
        -0x57t
        -0x37t
        -0x45t
        0x73t
        0x7ft
        -0x6dt
        -0xet
        0x5t
        -0x26t
        -0x47t
        0x1bt
        0x4ct
        0x63t
        -0x16t
        0x49t
        0x72t
        0x3at
        -0x4t
        0x6ft
        -0x7bt
        0x6ct
        0x13t
        -0x7et
        0x3t
        -0x16t
        -0x7ft
    .end array-data

    :array_4
    .array-data 1
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
    .end array-data

    :array_5
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.4::IRadio"

    const-string v2, "android.hardware.radio@1.3::IRadio"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    const-string v5, "android.hardware.radio@1.0::IRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.radio@1.4::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.4::IRadio"

    const-string v4, "android.hardware.radio@1.0::IRadio"

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    move v0, v6

    if-eqz v0, :cond_14a

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_1
    move v1, v6

    if-eq v1, v7, :cond_2

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_8

    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v1, v7

    if-eqz v1, :cond_4

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v12}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    move v1, v7

    if-eqz v1, :cond_6

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->ping()V

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    if-eqz v0, :cond_14a

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v7

    :cond_8
    move v1, v6

    if-eq v1, v7, :cond_9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_8

    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v1, v7

    if-eqz v1, :cond_b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_d

    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v13, 0x20

    if-ne v9, v13, :cond_c

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v9, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v7, v6

    :goto_4
    move v1, v7

    if-eqz v1, :cond_f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v7, v6

    :goto_5
    move v1, v7

    if-eqz v1, :cond_11

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_11
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v7, v6

    :goto_6
    move v1, v7

    if-eqz v1, :cond_13

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v6, v7

    :cond_14
    move v0, v6

    if-eq v0, v7, :cond_15

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_15
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength_1_4(I)V

    goto/16 :goto_8

    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v6, v7

    :cond_16
    move v0, v6

    if-eq v0, v7, :cond_17

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_17
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    goto/16 :goto_8

    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v7

    :cond_18
    move v0, v6

    if-eq v0, v7, :cond_19

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_19
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    goto/16 :goto_8

    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v6, v7

    :cond_1a
    move v0, v6

    if-eq v0, v7, :cond_1b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_1b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    goto/16 :goto_8

    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v7

    :cond_1c
    move v0, v6

    if-eq v0, v7, :cond_1d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_1d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    goto/16 :goto_8

    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v7

    :cond_1e
    move v0, v6

    if-eq v0, v7, :cond_1f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_1f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto/16 :goto_8

    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v8, v6

    if-eq v8, v7, :cond_21

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_21
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v13, v0

    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto/16 :goto_8

    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v6, v7

    :cond_22
    move v0, v6

    if-eq v0, v7, :cond_23

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_23
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v6, v7

    :cond_24
    move v0, v6

    if-eq v0, v7, :cond_25

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_25
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    goto/16 :goto_8

    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v7

    :cond_26
    move v8, v6

    if-eq v8, v7, :cond_27

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_27
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v14, v0

    invoke-virtual {v14, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_28

    move v6, v7

    :cond_28
    move v1, v6

    if-eq v1, v7, :cond_29

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_29
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemStackStatus(I)V

    goto/16 :goto_8

    :pswitch_b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2a

    move v6, v7

    :cond_2a
    move v1, v6

    if-eq v1, v7, :cond_2b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->enableModem(IZ)V

    goto/16 :goto_8

    :pswitch_c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2c

    move v6, v7

    :cond_2c
    move v1, v6

    if-eq v1, v7, :cond_2d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2d
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v6, v7

    :cond_2e
    move v0, v6

    if-eq v0, v7, :cond_2f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_2f
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    goto/16 :goto_8

    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v6, v7

    :cond_30
    move v13, v6

    if-eq v13, v7, :cond_31

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_31
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v7

    :cond_32
    move v8, v6

    if-eq v8, v7, :cond_33

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_33
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto/16 :goto_8

    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v7

    :cond_34
    if-eq v6, v7, :cond_35

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_35
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    goto/16 :goto_8

    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v7

    :cond_36
    move v0, v6

    if-eq v0, v7, :cond_37

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_37
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    goto/16 :goto_8

    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v7

    :cond_38
    move v0, v6

    if-eq v0, v7, :cond_39

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_39
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto/16 :goto_8

    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v7

    :cond_3a
    move v0, v6

    if-eq v0, v7, :cond_3b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_3b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopKeepalive(II)V

    goto/16 :goto_8

    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v6, v7

    :cond_3c
    move v0, v6

    if-eq v0, v7, :cond_3d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_3d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    goto/16 :goto_8

    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v7

    :cond_3e
    move v0, v6

    if-eq v0, v7, :cond_3f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_3f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopNetworkScan(I)V

    goto/16 :goto_8

    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v6, v7

    :cond_40
    move v0, v6

    if-eq v0, v7, :cond_41

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_41
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    goto/16 :goto_8

    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v7

    :cond_42
    move v0, v6

    if-eq v0, v7, :cond_43

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_43
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    goto/16 :goto_8

    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v6, v7

    :cond_44
    move v0, v6

    if-eq v0, v7, :cond_45

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_45
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    goto/16 :goto_8

    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v7

    :cond_46
    move v0, v6

    if-eq v0, v7, :cond_47

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_47
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_8

    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v7

    :cond_48
    move v0, v6

    if-eq v0, v7, :cond_49

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_49
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_8

    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v6, v7

    :cond_4a
    move v0, v6

    if-eq v0, v7, :cond_4b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_8

    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v6, v7

    :cond_4c
    move v0, v6

    if-eq v0, v7, :cond_4d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_8

    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v6, v7

    :cond_4e
    move v0, v6

    if-eq v0, v7, :cond_4f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_4f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_8

    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v7

    :cond_50
    move v0, v6

    if-eq v0, v7, :cond_51

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_51
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    invoke-virtual {v3, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_8

    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v6, v7

    :cond_52
    move v0, v6

    if-eq v0, v7, :cond_53

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_53
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_8

    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v6, v7

    :cond_54
    move v0, v6

    if-eq v0, v7, :cond_55

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_55
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_8

    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v7

    :cond_56
    move v0, v6

    if-eq v0, v7, :cond_57

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_57
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_8

    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v6, v7

    :cond_58
    move v0, v6

    if-eq v0, v7, :cond_59

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_59
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_8

    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v6, v7

    :cond_5a
    move v0, v6

    if-eq v0, v7, :cond_5b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_5b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_8

    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v7

    :cond_5c
    move v0, v6

    if-eq v0, v7, :cond_5d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_5d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_8

    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v7

    :cond_5e
    move v0, v6

    if-eq v0, v7, :cond_5f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_5f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_8

    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v6, v7

    :cond_60
    move v0, v6

    if-eq v0, v7, :cond_61

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_61
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_8

    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v7

    :cond_62
    move v0, v6

    if-eq v0, v7, :cond_63

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_63
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v7

    :cond_64
    move v0, v6

    if-eq v0, v7, :cond_65

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_65
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_8

    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v7

    :cond_66
    move v0, v6

    if-eq v0, v7, :cond_67

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_67
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_8

    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v7

    :cond_68
    move v0, v6

    if-eq v0, v7, :cond_69

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_69
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_8

    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v7

    :cond_6a
    move v0, v6

    if-eq v0, v7, :cond_6b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_8

    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v7

    :cond_6c
    move v0, v6

    if-eq v0, v7, :cond_6d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v7

    :cond_6e
    move v0, v6

    if-eq v0, v7, :cond_6f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_6f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_8

    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v7

    :cond_70
    move v0, v6

    if-eq v0, v7, :cond_71

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_71
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_8

    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v7

    :cond_72
    move v0, v6

    if-eq v0, v7, :cond_73

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_73
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_8

    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v7

    :cond_74
    move v0, v6

    if-eq v0, v7, :cond_75

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_75
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_8

    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v7

    :cond_76
    move v0, v6

    if-eq v0, v7, :cond_77

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_77
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_8

    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v7

    :cond_78
    move v0, v6

    if-eq v0, v7, :cond_79

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_79
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_8

    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v7

    :cond_7a
    move v0, v6

    if-eq v0, v7, :cond_7b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_7b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_8

    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v6, v7

    :cond_7c
    move v0, v6

    if-eq v0, v7, :cond_7d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_7d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_8

    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v6, v7

    :cond_7e
    move v0, v6

    if-eq v0, v7, :cond_7f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_7f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_8

    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v7

    :cond_80
    move v0, v6

    if-eq v0, v7, :cond_81

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_81
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_8

    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v7

    :cond_82
    move v0, v6

    if-eq v0, v7, :cond_83

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_83
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_8

    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v7

    :cond_84
    move v0, v6

    if-eq v0, v7, :cond_85

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_85
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_8

    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v7

    :cond_86
    move v0, v6

    if-eq v0, v7, :cond_87

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_87
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v6, v7

    :cond_88
    move v0, v6

    if-eq v0, v7, :cond_89

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_89
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v7

    :cond_8a
    move v0, v6

    if-eq v0, v7, :cond_8b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_8b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v7

    :cond_8c
    move v0, v6

    if-eq v0, v7, :cond_8d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_8d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_8

    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v6, v7

    :cond_8e
    move v0, v6

    if-eq v0, v7, :cond_8f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_8f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_8

    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v7

    :cond_90
    move v0, v6

    if-eq v0, v7, :cond_91

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_91
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_8

    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v7

    :cond_92
    move v0, v6

    if-eq v0, v7, :cond_93

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_93
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v7

    :cond_94
    move v0, v6

    if-eq v0, v7, :cond_95

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_95
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_8

    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v7

    :cond_96
    move v0, v6

    if-eq v0, v7, :cond_97

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_97
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_8

    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v7

    :cond_98
    move v0, v6

    if-eq v0, v7, :cond_99

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_99
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_8

    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v6, v7

    :cond_9a
    move v0, v6

    if-eq v0, v7, :cond_9b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_8

    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v7

    :cond_9c
    move v0, v6

    if-eq v0, v7, :cond_9d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_8

    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v7

    :cond_9e
    move v0, v6

    if-eq v0, v7, :cond_9f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_9f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_8

    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v7

    :cond_a0
    move v0, v6

    if-eq v0, v7, :cond_a1

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_8

    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v7

    :cond_a2
    move v0, v6

    if-eq v0, v7, :cond_a3

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v7

    :cond_a4
    move v0, v6

    if-eq v0, v7, :cond_a5

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_8

    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v7

    :cond_a6
    move v0, v6

    if-eq v0, v7, :cond_a7

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_8

    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v7

    :cond_a8
    move v0, v6

    if-eq v0, v7, :cond_a9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_a9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v6, v7

    :cond_aa
    move v0, v6

    if-eq v0, v7, :cond_ab

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ab
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_8

    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v7

    :cond_ac
    move v0, v6

    if-eq v0, v7, :cond_ad

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ad
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_8

    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v7

    :cond_ae
    move v0, v6

    if-eq v0, v7, :cond_af

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_af
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_8

    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v7

    :cond_b0
    move v0, v6

    if-eq v0, v7, :cond_b1

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_8

    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v7

    :cond_b2
    move v0, v6

    if-eq v0, v7, :cond_b3

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v7

    :cond_b4
    move v0, v6

    if-eq v0, v7, :cond_b5

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_8

    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v6, v7

    :cond_b6
    move v0, v6

    if-eq v0, v7, :cond_b7

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_8

    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v7

    :cond_b8
    move v0, v6

    if-eq v0, v7, :cond_b9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_b9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_8

    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v7

    :cond_ba
    move v0, v6

    if-eq v0, v7, :cond_bb

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_bb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_8

    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v7

    :cond_bc
    move v0, v6

    if-eq v0, v7, :cond_bd

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_bd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_8

    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v7

    :cond_be
    move v0, v6

    if-eq v0, v7, :cond_bf

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_bf
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_8

    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v6, v7

    :cond_c0
    move v0, v6

    if-eq v0, v7, :cond_c1

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_8

    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v6, v7

    :cond_c2
    move v0, v6

    if-eq v0, v7, :cond_c3

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_8

    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v6, v7

    :cond_c4
    move v0, v6

    if-eq v0, v7, :cond_c5

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_8

    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v6, v7

    :cond_c6
    move v0, v6

    if-eq v0, v7, :cond_c7

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_8

    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v7

    :cond_c8
    move v0, v6

    if-eq v0, v7, :cond_c9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_c9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_8

    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v7

    :cond_ca
    move v0, v6

    if-eq v0, v7, :cond_cb

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_cb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_8

    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v7

    :cond_cc
    move v0, v6

    if-eq v0, v7, :cond_cd

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_cd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_8

    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v7

    :cond_ce
    move v0, v6

    if-eq v0, v7, :cond_cf

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_cf
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v7

    :cond_d0
    move v0, v6

    if-eq v0, v7, :cond_d1

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v7

    :cond_d2
    move v0, v6

    if-eq v0, v7, :cond_d3

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_8

    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v7

    :cond_d4
    move v0, v6

    if-eq v0, v7, :cond_d5

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_8

    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v7

    :cond_d6
    move v0, v6

    if-eq v0, v7, :cond_d7

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_8

    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v6, v7

    :cond_d8
    move v0, v6

    if-eq v0, v7, :cond_d9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_d9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_8

    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v6, v7

    :cond_da
    move v0, v6

    if-eq v0, v7, :cond_db

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_db
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_8

    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v6, v7

    :cond_dc
    move v0, v6

    if-eq v0, v7, :cond_dd

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_dd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_8

    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v6, v7

    :cond_de
    move v0, v6

    if-eq v0, v7, :cond_df

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_df
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClip(I)V

    goto/16 :goto_8

    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v6, v7

    :cond_e0
    move v0, v6

    if-eq v0, v7, :cond_e1

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getMute(I)V

    goto/16 :goto_8

    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v7

    :cond_e2
    move v0, v6

    if-eq v0, v7, :cond_e3

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_8

    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v6, v7

    :cond_e4
    move v0, v6

    if-eq v0, v7, :cond_e5

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_8

    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v6, v7

    :cond_e6
    move v0, v6

    if-eq v0, v7, :cond_e7

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_8

    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v7

    :cond_e8
    move v0, v6

    if-eq v0, v7, :cond_e9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_e9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_8

    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v7

    :cond_ea
    move v0, v6

    if-eq v0, v7, :cond_eb

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_eb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v6, v7

    :cond_ec
    move v0, v6

    if-eq v0, v7, :cond_ed

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ed
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_8

    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v7

    :cond_ee
    move v0, v6

    if-eq v0, v7, :cond_ef

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ef
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v6, v7

    :cond_f0
    move v0, v6

    if-eq v0, v7, :cond_f1

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f1
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_8

    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v6, v7

    :cond_f2
    move v0, v6

    if-eq v0, v7, :cond_f3

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f3
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_8

    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v7

    :cond_f4
    move v0, v6

    if-eq v0, v7, :cond_f5

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f5
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v7

    :cond_f6
    move v8, v6

    if-eq v8, v7, :cond_f7

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f7
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v6, v7

    :cond_f8
    if-eq v6, v7, :cond_f9

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_f9
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v7

    :cond_fa
    move v0, v6

    if-eq v0, v7, :cond_fb

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_fb
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_8

    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v7

    :cond_fc
    move v0, v6

    if-eq v0, v7, :cond_fd

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_fd
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_8

    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v7

    :cond_fe
    move v0, v6

    if-eq v0, v7, :cond_ff

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_ff
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_8

    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v6, v7

    :cond_100
    move v0, v6

    if-eq v0, v7, :cond_101

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_101
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_8

    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v7

    :cond_102
    move v0, v6

    if-eq v0, v7, :cond_103

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_103
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_8

    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v7

    :cond_104
    move v0, v6

    if-eq v0, v7, :cond_105

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_105
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_8

    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v6, v7

    :cond_106
    move v0, v6

    if-eq v0, v7, :cond_107

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_107
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_8

    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v6, v7

    :cond_108
    move v0, v6

    if-eq v0, v7, :cond_109

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_109
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setClir(II)V

    goto/16 :goto_8

    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v7

    :cond_10a
    move v0, v6

    if-eq v0, v7, :cond_10b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClir(I)V

    goto/16 :goto_8

    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v7

    :cond_10c
    move v0, v6

    if-eq v0, v7, :cond_10d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_8

    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v6, v7

    :cond_10e
    move v0, v6

    if-eq v0, v7, :cond_10f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_10f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v7

    :cond_110
    move v0, v6

    if-eq v0, v7, :cond_111

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_111
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_8

    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v7

    :cond_112
    move v8, v6

    if-eq v8, v7, :cond_113

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_113
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v13, v0

    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_8

    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v7

    :cond_114
    move v0, v6

    if-eq v0, v7, :cond_115

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_115
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_8

    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v7

    :cond_116
    move v0, v6

    if-eq v0, v7, :cond_117

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_117
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_8

    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v7

    :cond_118
    move v0, v6

    if-eq v0, v7, :cond_119

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_119
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v7

    :cond_11a
    move v0, v6

    if-eq v0, v7, :cond_11b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_11b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_8

    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v6, v7

    :cond_11c
    move v0, v6

    if-eq v0, v7, :cond_11d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_11d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_8

    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v7

    :cond_11e
    move v0, v6

    if-eq v0, v7, :cond_11f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_11f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_8

    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v7

    :cond_120
    move v0, v6

    if-eq v0, v7, :cond_121

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_121
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_8

    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v7

    :cond_122
    move v0, v6

    if-eq v0, v7, :cond_123

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_123
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_8

    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v7

    :cond_124
    move v0, v6

    if-eq v0, v7, :cond_125

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_125
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_8

    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v7

    :cond_126
    move v0, v6

    if-eq v0, v7, :cond_127

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_127
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_8

    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v7

    :cond_128
    move v0, v6

    if-eq v0, v7, :cond_129

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_129
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->conference(I)V

    goto/16 :goto_8

    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v7

    :cond_12a
    move v0, v6

    if-eq v0, v7, :cond_12b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_12b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_8

    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v7

    :cond_12c
    move v0, v6

    if-eq v0, v7, :cond_12d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_12d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_8

    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v6, v7

    :cond_12e
    move v0, v6

    if-eq v0, v7, :cond_12f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_12f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_8

    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v7

    :cond_130
    move v0, v6

    if-eq v0, v7, :cond_131

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_131
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangup(II)V

    goto/16 :goto_8

    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v7

    :cond_132
    move v0, v6

    if-eq v0, v7, :cond_133

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_133
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v7

    :cond_134
    move v0, v6

    if-eq v0, v7, :cond_135

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_135
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_8

    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v7

    :cond_136
    move v0, v6

    if-eq v0, v7, :cond_137

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_137
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_8

    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v6, v7

    :cond_138
    move v0, v6

    if-eq v0, v7, :cond_139

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_139
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v6, v7

    :cond_13a
    move v0, v6

    if-eq v0, v7, :cond_13b

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_13b
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v6, v7

    :cond_13c
    move v0, v6

    if-eq v0, v7, :cond_13d

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_13d
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v6, v7

    :cond_13e
    move v0, v6

    if-eq v0, v7, :cond_13f

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_13f
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v7

    :cond_140
    move v0, v6

    if-eq v0, v7, :cond_141

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_141
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v7

    :cond_142
    move v0, v6

    if-eq v0, v7, :cond_143

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :cond_143
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v7

    :cond_144
    move v0, v6

    if-eq v0, v7, :cond_145

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_145
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v7

    :cond_146
    move v0, v6

    if-eq v0, v7, :cond_147

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_147
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_8

    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    goto :goto_7

    :cond_148
    move v7, v6

    :goto_7
    move v0, v7

    if-eqz v0, :cond_149

    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_149
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    invoke-virtual {v12, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    nop

    :cond_14a
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
