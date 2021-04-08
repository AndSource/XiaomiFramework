.class public Lcom/miui/internal/content/MiSyncStatusInfo;
.super Ljava/lang/Object;
.source "MiSyncStatusInfo.java"


# static fields
.field static final MICLOUD_VERSION:I = 0x2


# instance fields
.field public lastResultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/content/MiSyncStatusInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
