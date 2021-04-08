.class public final Landroid/location/GnssMeasurementCorrections$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAltitudeMeters:D

.field private mHorizontalPositionUncertaintyMeters:D

.field private mLatitudeDegrees:D

.field private mLongitudeDegrees:D

.field private mSingleSatCorrectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private mToaGpsNanosecondsOfWeek:J

.field private mVerticalPositionUncertaintyMeters:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D

    return-wide v0
.end method

.method static synthetic access$100(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D

    return-wide v0
.end method

.method static synthetic access$200(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D

    return-wide v0
.end method

.method static synthetic access$300(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method static synthetic access$400(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method static synthetic access$500(Landroid/location/GnssMeasurementCorrections$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/location/GnssMeasurementCorrections$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/location/GnssMeasurementCorrections;
    .locals 2

    new-instance v0, Landroid/location/GnssMeasurementCorrections;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssMeasurementCorrections;-><init>(Landroid/location/GnssMeasurementCorrections$Builder;Landroid/location/GnssMeasurementCorrections$1;)V

    return-object v0
.end method

.method public setAltitudeMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D

    return-object p0
.end method

.method public setHorizontalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D

    return-object p0
.end method

.method public setLatitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D

    return-object p0
.end method

.method public setLongitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D

    return-object p0
.end method

.method public setSingleSatelliteCorrectionList(Ljava/util/List;)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;)",
            "Landroid/location/GnssMeasurementCorrections$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;

    return-object p0
.end method

.method public setToaGpsNanosecondsOfWeek(J)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J

    return-object p0
.end method

.method public setVerticalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D

    return-object p0
.end method
