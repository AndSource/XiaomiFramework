.class public final Landroid/net/wifi/rtt/ResponderLocation;
.super Ljava/lang/Object;
.source "ResponderLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/ResponderLocation$ExpectedToMoveType;,
        Landroid/net/wifi/rtt/ResponderLocation$DatumType;,
        Landroid/net/wifi/rtt/ResponderLocation$AltitudeType;
    }
.end annotation


# static fields
.field public static final ALTITUDE_FLOORS:I = 0x2

.field private static final ALTITUDE_FRACTION_BITS:I = 0x8

.field public static final ALTITUDE_METERS:I = 0x1

.field private static final ALTITUDE_UNCERTAINTY_BASE:I = 0x15

.field public static final ALTITUDE_UNDEFINED:I = 0x0

.field private static final BYTES_IN_A_BSSID:I = 0x6

.field private static final BYTE_MASK:I = 0xff

.field private static final CIVIC_COUNTRY_CODE_INDEX:I = 0x0

.field private static final CIVIC_TLV_LIST_INDEX:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATUM_NAD83_MLLW:I = 0x3

.field public static final DATUM_NAD83_NAV88:I = 0x2

.field public static final DATUM_UNDEFINED:I = 0x0

.field public static final DATUM_WGS84:I = 0x1

.field private static final LATLNG_FRACTION_BITS:I = 0x19

.field private static final LATLNG_UNCERTAINTY_BASE:I = 0x8

.field private static final LAT_ABS_LIMIT:D = 90.0

.field public static final LCI_VERSION_1:I = 0x1

.field private static final LEAD_LCI_ELEMENT_BYTES:[B

.field private static final LEAD_LCR_ELEMENT_BYTES:[B

.field private static final LNG_ABS_LIMIT:D = 180.0

.field public static final LOCATION_FIXED:I = 0x0

.field public static final LOCATION_MOVEMENT_UNKNOWN:I = 0x2

.field private static final LOCATION_PROVIDER:Ljava/lang/String; = "WiFi Access Point"

.field public static final LOCATION_RESERVED:I = 0x3

.field public static final LOCATION_VARIABLE:I = 0x1

.field private static final LSB_IN_BYTE:I = 0x1

.field private static final MAP_TYPE_URL_DEFINED:I = 0x0

.field private static final MAX_BUFFER_SIZE:I = 0x100

.field private static final MEASUREMENT_REPORT_MODE:B = 0x0t

.field private static final MEASUREMENT_TOKEN_AUTONOMOUS:B = 0x1t

.field private static final MEASUREMENT_TYPE_LCI:B = 0x8t

.field private static final MEASUREMENT_TYPE_LCR:B = 0xbt

.field private static final MIN_BUFFER_SIZE:I = 0x3

.field private static final MSB_IN_BYTE:I = 0x80

.field private static final SUBELEMENT_BSSID_LIST:B = 0x7t

.field private static final SUBELEMENT_BSSID_LIST_INDEX:I = 0x1

.field private static final SUBELEMENT_BSSID_LIST_MIN_BUFFER_LENGTH:I = 0x1

.field private static final SUBELEMENT_BSSID_MAX_INDICATOR_INDEX:I = 0x0

.field private static final SUBELEMENT_IMAGE_MAP_TYPE_INDEX:I = 0x0

.field private static final SUBELEMENT_LCI:B = 0x0t

.field private static final SUBELEMENT_LCI_ALT_INDEX:I = 0x6

.field private static final SUBELEMENT_LCI_ALT_TYPE_INDEX:I = 0x4

.field private static final SUBELEMENT_LCI_ALT_UNCERTAINTY_INDEX:I = 0x5

.field private static final SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

.field private static final SUBELEMENT_LCI_DATUM_INDEX:I = 0x7

.field private static final SUBELEMENT_LCI_DEPENDENT_STA_INDEX:I = 0xa

.field private static final SUBELEMENT_LCI_LAT_INDEX:I = 0x1

.field private static final SUBELEMENT_LCI_LAT_UNCERTAINTY_INDEX:I = 0x0

.field private static final SUBELEMENT_LCI_LENGTH:I = 0x10

.field private static final SUBELEMENT_LCI_LNG_INDEX:I = 0x3

.field private static final SUBELEMENT_LCI_LNG_UNCERTAINTY_INDEX:I = 0x2

.field private static final SUBELEMENT_LCI_REGLOC_AGREEMENT_INDEX:I = 0x8

.field private static final SUBELEMENT_LCI_REGLOC_DSE_INDEX:I = 0x9

.field private static final SUBELEMENT_LCI_VERSION_INDEX:I = 0xb

.field private static final SUBELEMENT_LOCATION_CIVIC:B = 0x0t

.field private static final SUBELEMENT_LOCATION_CIVIC_MAX_LENGTH:I = 0x100

.field private static final SUBELEMENT_LOCATION_CIVIC_MIN_LENGTH:I = 0x2

.field private static final SUBELEMENT_MAP_IMAGE:B = 0x5t

.field private static final SUBELEMENT_MAP_IMAGE_URL_MAX_LENGTH:I = 0x100

.field private static final SUBELEMENT_USAGE:B = 0x6t

.field private static final SUBELEMENT_USAGE_LENGTH1:I = 0x1

.field private static final SUBELEMENT_USAGE_LENGTH3:I = 0x3

.field private static final SUBELEMENT_USAGE_MASK_RETENTION_EXPIRES:I = 0x2

.field private static final SUBELEMENT_USAGE_MASK_RETRANSMIT:I = 0x1

.field private static final SUBELEMENT_USAGE_MASK_STA_LOCATION_POLICY:I = 0x4

.field private static final SUBELEMENT_USAGE_PARAMS_INDEX:I = 0x0

.field private static final SUBELEMENT_Z:B = 0x4t

.field private static final SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

.field private static final SUBELEMENT_Z_FLOOR_NUMBER_INDEX:I = 0x1

.field private static final SUBELEMENT_Z_HEIGHT_ABOVE_FLOOR_INDEX:I = 0x2

.field private static final SUBELEMENT_Z_HEIGHT_ABOVE_FLOOR_UNCERTAINTY_INDEX:I = 0x3

.field private static final SUBELEMENT_Z_LAT_EXPECTED_TO_MOVE_INDEX:I = 0x0

.field private static final SUBELEMENT_Z_LENGTH:I = 0x6

.field private static final SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

.field private static final UNCERTAINTY_UNDEFINED:I = 0x0

.field private static final Z_FLOOR_HEIGHT_FRACTION_BITS:I = 0xc

.field private static final Z_FLOOR_NUMBER_FRACTION_BITS:I = 0x4

.field private static final Z_MAX_HEIGHT_UNCERTAINTY_FACTOR:I = 0x19


# instance fields
.field private mAltitude:D

.field private mAltitudeType:I

.field private mAltitudeUncertainty:D

.field private mBssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

.field private mCivicLocationCountryCode:Ljava/lang/String;

.field private mCivicLocationString:Ljava/lang/String;

.field private mDatum:I

.field private mExpectedToMove:I

.field private mFloorNumber:D

.field private mHeightAboveFloorMeters:D

.field private mHeightAboveFloorUncertaintyMeters:D

.field private mIsBssidListValid:Z

.field private mIsLciValid:Z

.field private mIsLocationCivicValid:Z

.field private mIsMapImageValid:Z

.field private mIsUsageValid:Z

.field private final mIsValid:Z

.field private mIsZValid:Z

.field private mLatitude:D

.field private mLatitudeUncertainty:D

.field private mLciDependentStation:Z

.field private mLciRegisteredLocationAgreement:Z

.field private mLciRegisteredLocationDse:Z

.field private mLciVersion:I

.field private mLongitude:D

.field private mLongitudeUncertainty:D

.field private mMapImageType:I

.field private mMapImageUri:Landroid/net/Uri;

.field private mUsageExtraInfoOnAssociation:Z

.field private mUsageRetentionExpires:Z

.field private mUsageRetransmit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCI_ELEMENT_BYTES:[B

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCR_ELEMENT_BYTES:[B

    const-string v1, ""

    const-string/jumbo v2, "png"

    const-string/jumbo v3, "gif"

    const-string/jumbo v4, "jpg"

    const-string/jumbo v5, "svg"

    const-string v6, "dxf"

    const-string v7, "dwg"

    const-string v8, "dwf"

    const-string v9, "cad"

    const-string/jumbo v10, "tif"

    const-string/jumbo v11, "gml"

    const-string/jumbo v12, "kml"

    const-string v13, "bmp"

    const-string/jumbo v14, "pgm"

    const-string/jumbo v15, "ppm"

    const-string/jumbo v16, "xbm"

    const-string/jumbo v17, "xpm"

    const-string/jumbo v18, "ico"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    new-instance v0, Landroid/net/wifi/rtt/ResponderLocation$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderLocation$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x8t
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x22
        0x6
        0x22
        0x4
        0x6
        0x1e
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xe
        0x18
        0x8
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x0t
        0xbt
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    move v2, v0

    :goto_9
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    move v2, v0

    :goto_a
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    move v2, v0

    :goto_b
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    const-class v0, Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/rtt/CivicLocation;

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    goto :goto_c

    :cond_d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    :goto_c
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/ResponderLocation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setLciSubelementDefaults()V

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setZaxisSubelementDefaults()V

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setUsageSubelementDefaults()V

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setBssidListSubelementDefaults()V

    invoke-virtual {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setCivicLocationSubelementDefaults()V

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setMapImageSubelementDefaults()V

    if-eqz p1, :cond_0

    array-length v4, p1

    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCI_ELEMENT_BYTES:[B

    array-length v6, v5

    if-le v4, v6, :cond_0

    const/16 v4, 0x8

    invoke-direct {p0, v4, p1, v5}, Landroid/net/wifi/rtt/ResponderLocation;->parseInformationElementBuffer(I[B[B)Z

    move-result v2

    :cond_0
    if-eqz p2, :cond_1

    array-length v4, p2

    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCR_ELEMENT_BYTES:[B

    array-length v6, v5

    if-le v4, v6, :cond_1

    const/16 v4, 0xb

    invoke-direct {p0, v4, p2, v5}, Landroid/net/wifi/rtt/ResponderLocation;->parseInformationElementBuffer(I[B[B)Z

    move-result v3

    :cond_1
    if-eqz v2, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-eqz v4, :cond_3

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    if-eqz v3, :cond_5

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-eqz v5, :cond_5

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setLciSubelementDefaults()V

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setZaxisSubelementDefaults()V

    invoke-virtual {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setCivicLocationSubelementDefaults()V

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setMapImageSubelementDefaults()V

    :cond_8
    return-void
.end method

.method private decodeLciAltUncertainty(J)D
    .locals 4

    const-wide/16 v0, 0x15

    sub-long/2addr v0, p1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private decodeLciLatLng([J[IID)D
    .locals 8

    aget-wide v0, p1, p3

    aget v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, -0x19

    if-eqz v0, :cond_0

    aget-wide v2, p1, p3

    long-to-double v2, v2

    aget v0, p2, p3

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v1}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    aget-wide v2, p1, p3

    long-to-float v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-double v0, v0

    :goto_0
    cmpl-double v2, v0, p4

    if-lez v2, :cond_1

    move-wide v0, p4

    goto :goto_1

    :cond_1
    neg-double v2, p4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    neg-double v0, p4

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private decodeLciLatLngUncertainty(J)D
    .locals 4

    const-wide/16 v0, 0x8

    sub-long/2addr v0, p1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private decodeZUnsignedToSignedValue([J[III)D
    .locals 9

    aget-wide v0, p1, p3

    long-to-int v0, v0

    aget v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    int-to-double v5, v0

    aget v2, p2, p3

    int-to-double v7, v2

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v5, v2

    double-to-int v0, v5

    :cond_0
    int-to-float v2, v0

    neg-int v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->scalb(FI)F

    move-result v2

    float-to-double v2, v2

    return-wide v2
.end method

.method private getBitAtBitOffsetInByteArray([BI)I
    .locals 4

    div-int/lit8 v0, p2, 0x8

    rem-int/lit8 v1, p2, 0x8

    aget-byte v2, p1, v0

    const/16 v3, 0x80

    shr-int/2addr v3, v1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method private getFieldData([B[I)[J
    .locals 11

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget v5, p2, v3

    const/16 v6, 0x40

    if-le v5, v6, :cond_0

    return-object v4

    :cond_0
    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    return-object v4

    :cond_2
    array-length v2, p2

    new-array v2, v2, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_4

    aget v5, p2, v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    add-int v9, v3, v8

    invoke-direct {p0, p1, v9}, Landroid/net/wifi/rtt/ResponderLocation;->getBitAtBitOffsetInByteArray([BI)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v8

    or-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    aput-wide v6, v2, v4

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private imageTypeToMime(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-le p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    return-object v1

    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    if-nez p1, :cond_3

    nop

    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    sget-object v2, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseInformationElementBuffer(I[B[B)Z
    .locals 9

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_e

    const/16 v3, 0x100

    if-le v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v3, p3

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    array-length v4, p3

    add-int/2addr v0, v4

    :goto_0
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ge v4, v1, :cond_d

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p2, v0

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    add-int v7, v6, v4

    if-gt v7, v1, :cond_c

    if-gtz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    add-int v7, v6, v4

    invoke-static {p2, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const/16 v8, 0x8

    if-ne p1, v8, :cond_8

    if-eqz v0, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_4

    const/4 v5, 0x7

    if-eq v0, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementBssidList([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-nez v5, :cond_b

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setBssidListSubelementDefaults()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementUsage([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementZ([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-nez v5, :cond_b

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setZaxisSubelementDefaults()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementLci([B)Z

    move-result v8

    iput-boolean v8, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    iget-boolean v8, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v8, :cond_7

    iget v8, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    if-eq v8, v5, :cond_b

    :cond_7
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setLciSubelementDefaults()V

    goto :goto_1

    :cond_8
    const/16 v5, 0xb

    if-ne p1, v5, :cond_b

    if-eqz v0, :cond_a

    const/4 v5, 0x5

    if-eq v0, v5, :cond_9

    goto :goto_1

    :cond_9
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementMapImage([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-nez v5, :cond_b

    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setMapImageSubelementDefaults()V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementLocationCivic([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-nez v5, :cond_b

    invoke-virtual {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setCivicLocationSubelementDefaults()V

    :cond_b
    :goto_1
    add-int v0, v6, v4

    goto/16 :goto_0

    :cond_c
    :goto_2
    return v2

    :cond_d
    return v5

    :cond_e
    :goto_3
    return v2
.end method

.method private parseSubelementBssidList([B)Z
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    return v1

    :cond_1
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    array-length v3, p1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x6

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    add-int/lit8 v5, v1, 0x6

    invoke-static {p1, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private parseSubelementLci([B)Z
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;->swapEndianByteByByte([B)V

    sget-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/rtt/ResponderLocation;->getFieldData([B[I)[J

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLngUncertainty(J)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    sget-object v4, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    const/4 v5, 0x1

    const-wide v6, 0x4056800000000000L    # 90.0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLng([J[IID)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLngUncertainty(J)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    sget-object v4, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    const/4 v5, 0x3

    const-wide v6, 0x4066800000000000L    # 180.0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLng([J[IID)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    const/4 v2, 0x4

    aget-wide v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    const/4 v2, 0x5

    aget-wide v2, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciAltUncertainty(J)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    const/4 v2, 0x6

    aget-wide v2, v0, v2

    long-to-float v2, v2

    const/4 v3, -0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->scalb(FI)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    const/4 v2, 0x7

    aget-wide v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    const/16 v2, 0x8

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    const/16 v2, 0x9

    aget-wide v6, v0, v2

    cmp-long v2, v6, v4

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    const/16 v2, 0xa

    aget-wide v6, v0, v2

    cmp-long v2, v6, v4

    if-nez v2, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    const/16 v1, 0xb

    aget-wide v1, v0, v1

    long-to-int v1, v1

    iput v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    return v3
.end method

.method private parseSubelementLocationCivic([B)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    array-length v0, p1

    const/16 v3, 0x100

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    new-instance v0, Landroid/net/wifi/rtt/CivicLocation;

    array-length v3, p1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/net/wifi/rtt/CivicLocation;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private parseSubelementMapImage([B)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    aget-byte v0, p1, v1

    sget-object v2, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ltz v0, :cond_2

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    array-length v1, p1

    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method private parseSubelementUsage([B)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    aget-byte v0, p1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method private parseSubelementZ([B)Z
    .locals 11

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;->swapEndianByteByByte([B)V

    sget-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/rtt/ResponderLocation;->getFieldData([B[I)[J

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    aget-wide v2, v0, v1

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    sget-object v2, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4, v3}, Landroid/net/wifi/rtt/ResponderLocation;->decodeZUnsignedToSignedValue([J[III)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    sget-object v2, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    const/4 v3, 0x2

    const/16 v5, 0xc

    invoke-direct {p0, v0, v2, v3, v5}, Landroid/net/wifi/rtt/ResponderLocation;->decodeZUnsignedToSignedValue([J[III)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_2

    const-wide/16 v5, 0x19

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/16 v7, 0xc

    sub-long/2addr v7, v2

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    long-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    return v4

    :cond_2
    return v1
.end method

.method private setBssidListSubelementDefaults()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    return-void
.end method

.method private setLciSubelementDefaults()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    return-void
.end method

.method private setMapImageSubelementDefaults()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    return-void
.end method

.method private setUsageSubelementDefaults()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    return-void
.end method

.method private setZaxisSubelementDefaults()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    return-void
.end method

.method private swapEndianByteByByte([B)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    shl-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    and-int v5, v1, v3

    if-eqz v5, :cond_0

    or-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    :cond_0
    shl-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/rtt/ResponderLocation;

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAltitude()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getAltitude(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAltitudeType()I
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAltitudeUncertainty()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCivicLocationCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCivicLocationElementValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0, p1}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColocatedBssids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDatum()I
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getDatum(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDependentStationIndication()Z
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getDependentStationIndication(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExpectedToMove()I
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getExpectedToMove(): invoked on an invalid result: mIsZValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtraInfoOnAssociationIndication()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    return v0
.end method

.method public getFloorNumber()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getFloorNumber(): invoked on an invalid result: mIsZValid = false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeightAboveFloorMeters()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getHeightAboveFloorMeters(): invoked on an invalid result: mIsZValid = false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeightAboveFloorUncertaintyMeters()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getHeightAboveFloorUncertaintyMeters():invoked on an invalid result: mIsZValid = false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLatitude()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLatitude(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLatitudeUncertainty()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLciVersion()I
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLciVersion(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLongitude()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLongitudeUncertainty()D
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getLongitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMapImageMimeType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/net/wifi/rtt/ResponderLocation;->imageTypeToMime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRegisteredLocationAgreementIndication()Z
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getRegisteredLocationAgreementIndication(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegisteredLocationDseIndication()Z
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getRegisteredLocationDseIndication(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRetentionExpiresIndication()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    return v0
.end method

.method public getRetransmitPolicyIndication()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLciSubelementValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    return v0
.end method

.method public isZaxisSubelementValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    return v0
.end method

.method public setCivicLocationSubelementDefaults()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    return-void
.end method

.method public toCivicLocationAddress()Landroid/location/Address;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->toAddress()Landroid/location/Address;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toCivicLocationSparseArray()Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->toSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toLocation()Landroid/location/Location;
    .locals 5

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/location/Location;

    const-string v1, "WiFi Access Point"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "toLocation(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
