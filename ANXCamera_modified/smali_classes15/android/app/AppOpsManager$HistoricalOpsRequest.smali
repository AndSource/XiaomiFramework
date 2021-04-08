.class public final Landroid/app/AppOpsManager$HistoricalOpsRequest;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


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
    name = "HistoricalOpsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    }
.end annotation


# instance fields
.field private final mBeginTimeMillis:J

.field private final mEndTimeMillis:J

.field private final mFlags:I

.field private final mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/util/List;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mUid:I

    iput-object p2, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    iput-wide p4, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mBeginTimeMillis:J

    iput-wide p6, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mEndTimeMillis:J

    iput p8, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;JJILandroid/app/AppOpsManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/app/AppOpsManager$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/util/List;JJI)V

    return-void
.end method

.method static synthetic access$4200(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mUid:I

    return v0
.end method

.method static synthetic access$4300(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mBeginTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$4600(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mEndTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$4700(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFlags:I

    return v0
.end method
