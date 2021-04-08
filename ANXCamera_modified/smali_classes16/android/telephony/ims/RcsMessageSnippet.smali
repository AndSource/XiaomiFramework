.class public final Landroid/telephony/ims/RcsMessageSnippet;
.super Ljava/lang/Object;
.source "RcsMessageSnippet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsMessageSnippet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatus:I

.field private final mText:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsMessageSnippet$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsMessageSnippet$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsMessageSnippet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsMessageSnippet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageSnippet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsMessageSnippet;->mText:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/ims/RcsMessageSnippet;->mStatus:I

    iput-wide p3, p0, Landroid/telephony/ims/RcsMessageSnippet;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSnippetStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mStatus:I

    return v0
.end method

.method public getSnippetText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippetTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mTimestamp:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageSnippet;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
