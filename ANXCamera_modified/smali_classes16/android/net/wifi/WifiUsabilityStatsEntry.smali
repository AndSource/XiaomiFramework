.class public final Landroid/net/wifi/WifiUsabilityStatsEntry;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiUsabilityStatsEntry$ProbeStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROBE_STATUS_FAILURE:I = 0x3

.field public static final PROBE_STATUS_NO_PROBE:I = 0x1

.field public static final PROBE_STATUS_SUCCESS:I = 0x2

.field public static final PROBE_STATUS_UNKNOWN:I


# instance fields
.field private final mCellularDataNetworkType:I

.field private final mCellularSignalStrengthDb:I

.field private final mCellularSignalStrengthDbm:I

.field private final mIsSameRegisteredCell:Z

.field private final mLinkSpeedMbps:I

.field private final mProbeElapsedTimeSinceLastUpdateMillis:I

.field private final mProbeMcsRateSinceLastUpdate:I

.field private final mProbeStatusSinceLastUpdate:I

.field private final mRssi:I

.field private final mRxLinkSpeedMbps:I

.field private final mTimeStampMillis:J

.field private final mTotalBackgroundScanTimeMillis:J

.field private final mTotalBeaconRx:J

.field private final mTotalCcaBusyFreqTimeMillis:J

.field private final mTotalHotspot2ScanTimeMillis:J

.field private final mTotalNanScanTimeMillis:J

.field private final mTotalPnoScanTimeMillis:J

.field private final mTotalRadioOnFreqTimeMillis:J

.field private final mTotalRadioOnTimeMillis:J

.field private final mTotalRadioRxTimeMillis:J

.field private final mTotalRadioTxTimeMillis:J

.field private final mTotalRoamScanTimeMillis:J

.field private final mTotalRxSuccess:J

.field private final mTotalScanTimeMillis:J

.field private final mTotalTxBad:J

.field private final mTotalTxRetries:J

.field private final mTotalTxSuccess:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIJJJJJJJJJJJJJJJJIIIIIIIZ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    move/from16 v3, p3

    iput v3, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    move/from16 v4, p4

    iput v4, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    move-wide/from16 v1, p33

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    move-wide/from16 v1, p35

    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    move/from16 v15, p37

    iput v15, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    move/from16 v1, p38

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    move/from16 v2, p39

    iput v2, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    move/from16 v1, p40

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    move/from16 v1, p41

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    move/from16 v1, p42

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    move/from16 v1, p43

    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    move/from16 v1, p44

    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCellularDataNetworkType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    return v0
.end method

.method public getCellularSignalStrengthDb()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    return v0
.end method

.method public getCellularSignalStrengthDbm()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    return v0
.end method

.method public getLinkSpeedMbps()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    return v0
.end method

.method public getProbeElapsedTimeSinceLastUpdateMillis()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    return v0
.end method

.method public getProbeMcsRateSinceLastUpdate()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    return v0
.end method

.method public getProbeStatusSinceLastUpdate()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    return v0
.end method

.method public getRxLinkSpeedMbps()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    return v0
.end method

.method public getTimeStampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    return-wide v0
.end method

.method public getTotalBackgroundScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    return-wide v0
.end method

.method public getTotalBeaconRx()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    return-wide v0
.end method

.method public getTotalCcaBusyFreqTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    return-wide v0
.end method

.method public getTotalHotspot2ScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    return-wide v0
.end method

.method public getTotalNanScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    return-wide v0
.end method

.method public getTotalPnoScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    return-wide v0
.end method

.method public getTotalRadioOnFreqTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    return-wide v0
.end method

.method public getTotalRadioOnTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    return-wide v0
.end method

.method public getTotalRadioRxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    return-wide v0
.end method

.method public getTotalRadioTxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    return-wide v0
.end method

.method public getTotalRoamScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    return-wide v0
.end method

.method public getTotalRxSuccess()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    return-wide v0
.end method

.method public getTotalScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    return-wide v0
.end method

.method public getTotalTxBad()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    return-wide v0
.end method

.method public getTotalTxRetries()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    return-wide v0
.end method

.method public getTotalTxSuccess()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    return-wide v0
.end method

.method public isSameRegisteredCell()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
