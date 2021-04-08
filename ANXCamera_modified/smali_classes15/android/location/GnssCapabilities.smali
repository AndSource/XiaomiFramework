.class public final Landroid/location/GnssCapabilities;
.super Ljava/lang/Object;
.source "GnssCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final GEOFENCING:J = 0x4L

.field public static final INVALID_CAPABILITIES:J = -0x1L

.field public static final LOW_POWER_MODE:J = 0x1L

.field public static final MEASUREMENTS:J = 0x8L

.field public static final MEASUREMENT_CORRECTIONS:J = 0x20L

.field public static final MEASUREMENT_CORRECTIONS_EXCESS_PATH_LENGTH:J = 0x80L

.field public static final MEASUREMENT_CORRECTIONS_LOS_SATS:J = 0x40L

.field public static final MEASUREMENT_CORRECTIONS_REFLECTING_PLANE:J = 0x100L

.field public static final NAV_MESSAGES:J = 0x10L

.field public static final SATELLITE_BLACKLIST:J = 0x2L


# instance fields
.field private final mGnssCapabilities:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/GnssCapabilities;->mGnssCapabilities:J

    return-void
.end method

.method private hasCapability(J)Z
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssCapabilities;->mGnssCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static of(J)Landroid/location/GnssCapabilities;
    .locals 1

    new-instance v0, Landroid/location/GnssCapabilities;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssCapabilities;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public hasGeofencing()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasLowPowerMode()Z
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrections()Z
    .locals 2

    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsExcessPathLength()Z
    .locals 2

    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsLosSats()Z
    .locals 2

    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsReflectingPane()Z
    .locals 2

    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurements()Z
    .locals 2

    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasNavMessages()Z
    .locals 2

    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasSatelliteBlacklist()Z
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssCapabilities: ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasLowPowerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSatelliteBlacklist()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SATELLITE_BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasGeofencing()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurements()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasNavMessages()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrections()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsLosSats()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MEASUREMENT_CORRECTIONS_LOS_SATS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "MEASUREMENT_CORRECTIONS_EXCESS_PATH_LENGTH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsReflectingPane()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "MEASUREMENT_CORRECTIONS_REFLECTING_PLANE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
