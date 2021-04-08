.class public final Landroid/app/timedetector/TimeSignal;
.super Ljava/lang/Object;
.source "TimeSignal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/TimeSignal;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_ID_NITZ:Ljava/lang/String; = "nitz"


# instance fields
.field private final mSourceId:Ljava/lang/String;

.field private final mUtcTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timedetector/TimeSignal$1;

    invoke-direct {v0}, Landroid/app/timedetector/TimeSignal$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/TimeSignal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/TimestampedValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TimestampedValue;

    iput-object v0, p0, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/app/timedetector/TimeSignal;
    .locals 1

    invoke-static {p0}, Landroid/app/timedetector/TimeSignal;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TimeSignal;

    move-result-object v0

    return-object v0
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TimeSignal;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/util/TimestampedValue;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/TimestampedValue;

    move-result-object v1

    new-instance v2, Landroid/app/timedetector/TimeSignal;

    invoke-direct {v2, v0, v1}, Landroid/app/timedetector/TimeSignal;-><init>(Ljava/lang/String;Landroid/util/TimestampedValue;)V

    return-object v2
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
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/timedetector/TimeSignal;

    iget-object v3, p0, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

    iget-object v4, v2, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

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

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcTime()Landroid/util/TimestampedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeSignal{mSourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mUtcTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/timedetector/TimeSignal;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/timedetector/TimeSignal;->mUtcTime:Landroid/util/TimestampedValue;

    invoke-static {p1, v0}, Landroid/util/TimestampedValue;->writeToParcel(Landroid/os/Parcel;Landroid/util/TimestampedValue;)V

    return-void
.end method
