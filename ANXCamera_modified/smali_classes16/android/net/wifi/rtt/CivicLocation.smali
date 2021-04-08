.class public final Landroid/net/wifi/rtt/CivicLocation;
.super Ljava/lang/Object;
.source "CivicLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ADDRESS_LINE_0_ROOM_DESK_FLOOR:I = 0x0

.field private static final ADDRESS_LINE_1_NUMBER_ROAD_SUFFIX_APT:I = 0x1

.field private static final ADDRESS_LINE_2_CITY:I = 0x2

.field private static final ADDRESS_LINE_3_STATE_POSTAL_CODE:I = 0x3

.field private static final ADDRESS_LINE_4_COUNTRY:I = 0x4

.field private static final BYTE_MASK:I = 0xff

.field private static final COUNTRY_CODE_LENGTH:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/CivicLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CIVIC_BUFFER_SIZE:I = 0x100

.field private static final MIN_CIVIC_BUFFER_SIZE:I = 0x3

.field private static final TLV_LENGTH_INDEX:I = 0x1

.field private static final TLV_TYPE_INDEX:I = 0x0

.field private static final TLV_VALUE_INDEX:I = 0x2


# instance fields
.field private mCivicAddressElements:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCountryCode:Ljava/lang/String;

.field private final mIsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/rtt/CivicLocation$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/CivicLocation$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/CivicLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/CivicLocation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/CivicLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    iput-object p2, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lt v2, v1, :cond_1

    array-length v1, p1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/CivicLocation;->parseCivicTLVs([B)Z

    move-result v0

    :cond_1
    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    return-void
.end method

.method private formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getSparseArrayKeys(Landroid/util/SparseArray;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getSparseArrayValues(Landroid/util/SparseArray;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private isSparseArrayStringEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private parseCivicTLVs([B)Z
    .locals 8

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_1

    add-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    if-le v4, v1, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v0, 0x2

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/CivicLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/CivicLocation;

    iget-boolean v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/rtt/CivicLocation;->isSparseArrayStringEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCivicElementValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Landroid/net/wifi/rtt/CivicLocation;->getSparseArrayKeys(Landroid/util/SparseArray;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Landroid/net/wifi/rtt/CivicLocation;->getSparseArrayValues(Landroid/util/SparseArray;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    return v0
.end method

.method public toAddress()Landroid/location/Address;
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/location/Address;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Room: "

    invoke-direct {v0, v3, v2}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " Desk: "

    invoke-direct {v0, v4, v3}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-virtual {v0, v4}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ", Flr: "

    invoke-direct {v0, v5, v4}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v0, v7, v6}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    const/16 v9, 0x22

    invoke-virtual {v0, v9}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    invoke-direct {v0, v11, v10}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x12

    invoke-virtual {v0, v12}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1a

    invoke-virtual {v0, v13}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ", Apt: "

    invoke-direct {v0, v14, v13}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v7, v15}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    const/16 v7, 0x18

    invoke-virtual {v0, v7}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v11, v14}, Landroid/net/wifi/rtt/CivicLocation;->formatAddressElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v2

    iget-object v2, v0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v14}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v7}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v3, 0x2

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    invoke-virtual {v1, v3, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v9}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    const/16 v3, 0x18

    invoke-virtual {v0, v3}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    return-object v1
.end method

.method public toSparseArray()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    return-void
.end method
