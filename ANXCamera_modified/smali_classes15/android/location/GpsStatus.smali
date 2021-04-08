.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method private clearSatellites()V
    .locals 4

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/location/GpsSatellite;->mValid:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 9

    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_9

    aget v1, p2, v0

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0xf

    aget v3, p2, v0

    shr-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v4, :cond_0

    add-int/lit8 v3, v3, 0x40

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    add-int/lit16 v3, v3, 0xc8

    goto :goto_1

    :cond_1
    if-ne v1, v5, :cond_2

    add-int/lit8 v3, v3, -0x57

    goto :goto_1

    :cond_2
    if-eq v1, v6, :cond_3

    if-eq v1, v2, :cond_3

    goto :goto_5

    :cond_3
    :goto_1
    if-lez v3, :cond_8

    const/16 v4, 0xff

    if-gt v3, v4, :cond_8

    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    if-nez v4, :cond_4

    new-instance v7, Landroid/location/GpsSatellite;

    invoke-direct {v7, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    move-object v4, v7

    iget-object v7, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    iput-boolean v6, v4, Landroid/location/GpsSatellite;->mValid:Z

    aget v7, p3, v0

    iput v7, v4, Landroid/location/GpsSatellite;->mSnr:F

    aget v7, p4, v0

    iput v7, v4, Landroid/location/GpsSatellite;->mElevation:F

    aget v7, p5, v0

    iput v7, v4, Landroid/location/GpsSatellite;->mAzimuth:F

    aget v7, p2, v0

    and-int/2addr v7, v6

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    iput-boolean v7, v4, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    aget v7, p2, v0

    and-int/2addr v5, v7

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v8

    :goto_3
    iput-boolean v5, v4, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    aget v5, p2, v0

    and-int/2addr v2, v5

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v6, v8

    :goto_4
    iput-boolean v6, v4, Landroid/location/GpsSatellite;->mUsedInFix:Z

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .locals 6

    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return-void
.end method
