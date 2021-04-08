.class public final Landroid/telephony/ims/RcsQueryContinuationToken;
.super Ljava/lang/Object;
.source "RcsQueryContinuationToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsQueryContinuationToken$ContinuationTokenType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsQueryContinuationToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_QUERY_CONTINUATION_TOKEN_TYPE:I = 0x0

.field public static final MESSAGE_QUERY_CONTINUATION_TOKEN_TYPE:I = 0x1

.field public static final PARTICIPANT_QUERY_CONTINUATION_TOKEN_TYPE:I = 0x2

.field public static final QUERY_CONTINUATION_TOKEN:Ljava/lang/String; = "query_continuation_token"

.field public static final THREAD_QUERY_CONTINUATION_TOKEN_TYPE:I = 0x3


# instance fields
.field private final mLimit:I

.field private mOffset:I

.field private mQueryType:I

.field private final mRawQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsQueryContinuationToken$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsQueryContinuationToken$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsQueryContinuationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mQueryType:I

    iput-object p2, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mRawQuery:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mLimit:I

    iput p4, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mOffset:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mQueryType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mRawQuery:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsQueryContinuationToken$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsQueryContinuationToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mOffset:I

    return v0
.end method

.method public getQueryType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mQueryType:I

    return v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mRawQuery:Ljava/lang/String;

    return-object v0
.end method

.method public incrementOffset()V
    .locals 2

    iget v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mOffset:I

    iget v1, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mOffset:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mQueryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mRawQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsQueryContinuationToken;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
