.class public final Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessTimes:Landroid/util/LongSparseLongArray;

.field private final mDurations:Landroid/util/LongSparseLongArray;

.field private final mMode:I

.field private final mOp:I

.field private final mProxyPackageNames:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyUids:Landroid/util/LongSparseLongArray;

.field private final mRejectTimes:Landroid/util/LongSparseLongArray;

.field private final mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUids:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    iput-boolean p2, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    iput p3, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    iput-object p4, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    iput-object p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    iput-object p6, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    iput-object p7, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUids:Landroid/util/LongSparseLongArray;

    iput-object p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    invoke-static {p1}, Landroid/app/AppOpsManager;->access$700(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->access$700(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->access$700(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->access$700(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUids:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->access$800(Landroid/os/Parcel;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public collectKeys()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->access$000(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->access$000(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->access$000(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 3

    const/16 v0, 0x64

    const/16 v1, 0x2bc

    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessBackgroundTime(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessForegroundTime(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessTime(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    const/16 v1, 0x64

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAccessTime(III)J
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastBackgroundDuration(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->access$200(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDuration(III)J
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->access$200(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastForegroundDuration(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->access$200(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectBackgroundTime(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectForegroundTime(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectTime(I)J
    .locals 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    const/16 v1, 0x64

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRejectTime(III)J
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->access$100(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public getOp()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public getOpStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageNames:Landroid/util/LongSparseArray;

    const/16 v1, 0x64

    const/16 v2, 0x2bc

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->access$400(Landroid/util/LongSparseArray;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPackageName(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageNames:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p1, p2}, Landroid/app/AppOpsManager;->access$400(Landroid/util/LongSparseArray;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyUid()I
    .locals 4

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    const/16 v1, 0x64

    const/16 v2, 0x2bc

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->access$300(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getProxyUid(II)I
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p1, p2}, Landroid/app/AppOpsManager;->access$300(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRejectTime()J
    .locals 2

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->access$500(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->access$500(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->access$500(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUids:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->access$500(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageNames:Landroid/util/LongSparseArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->access$600(Landroid/util/LongSparseArray;Landroid/os/Parcel;)V

    return-void
.end method
