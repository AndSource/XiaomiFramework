.class public final Landroid/telephony/ims/RcsEventQueryParams;
.super Ljava/lang/Object;
.source "RcsEventQueryParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsEventQueryParams$Builder;,
        Landroid/telephony/ims/RcsEventQueryParams$SortingProperty;,
        Landroid/telephony/ims/RcsEventQueryParams$EventType;
    }
.end annotation


# static fields
.field public static final ALL_EVENTS:I = -0x1

.field public static final ALL_GROUP_THREAD_EVENTS:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsEventQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_QUERY_PARAMETERS_KEY:Ljava/lang/String; = "event_query_parameters"

.field public static final GROUP_THREAD_ICON_CHANGED_EVENT:I = 0x8

.field public static final GROUP_THREAD_NAME_CHANGED_EVENT:I = 0x10

.field public static final GROUP_THREAD_PARTICIPANT_JOINED_EVENT:I = 0x2

.field public static final GROUP_THREAD_PARTICIPANT_LEFT_EVENT:I = 0x4

.field public static final PARTICIPANT_ALIAS_CHANGED_EVENT:I = 0x1

.field public static final SORT_BY_CREATION_ORDER:I = 0x0

.field public static final SORT_BY_TIMESTAMP:I = 0x1


# instance fields
.field private mEventType:I

.field private mIsAscending:Z

.field private mLimit:I

.field private mSortingProperty:I

.field private mThreadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsEventQueryParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsEventQueryParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsEventQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/RcsEventQueryParams;->mEventType:I

    iput p3, p0, Landroid/telephony/ims/RcsEventQueryParams;->mSortingProperty:I

    iput-boolean p4, p0, Landroid/telephony/ims/RcsEventQueryParams;->mIsAscending:Z

    iput p5, p0, Landroid/telephony/ims/RcsEventQueryParams;->mLimit:I

    iput p2, p0, Landroid/telephony/ims/RcsEventQueryParams;->mThreadId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mThreadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mSortingProperty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mIsAscending:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mLimit:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsEventQueryParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsEventQueryParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mEventType:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mLimit:I

    return v0
.end method

.method public getSortDirection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mIsAscending:Z

    return v0
.end method

.method public getSortingProperty()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mSortingProperty:I

    return v0
.end method

.method public getThreadId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mThreadId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mSortingProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mIsAscending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/ims/RcsEventQueryParams;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
