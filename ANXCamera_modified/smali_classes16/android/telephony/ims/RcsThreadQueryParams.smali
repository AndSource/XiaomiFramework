.class public final Landroid/telephony/ims/RcsThreadQueryParams;
.super Ljava/lang/Object;
.source "RcsThreadQueryParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsThreadQueryParams$Builder;,
        Landroid/telephony/ims/RcsThreadQueryParams$SortingProperty;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsThreadQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_BY_CREATION_ORDER:I = 0x0

.field public static final SORT_BY_TIMESTAMP:I = 0x1

.field public static final THREAD_QUERY_PARAMETERS_KEY:Ljava/lang/String; = "thread_query_parameters"

.field public static final THREAD_TYPE_1_TO_1:I = 0x2

.field public static final THREAD_TYPE_GROUP:I = 0x1


# instance fields
.field private final mIsAscending:Z

.field private final mLimit:I

.field private final mRcsParticipantIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSortingProperty:I

.field private final mThreadType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsThreadQueryParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsThreadQueryParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsThreadQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/Set;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mThreadType:I

    invoke-static {p2}, Landroid/telephony/ims/RcsThreadQueryParams;->convertParticipantSetToIdList(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mRcsParticipantIds:Ljava/util/List;

    iput p3, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mLimit:I

    iput p4, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mSortingProperty:I

    iput-boolean p5, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mIsAscending:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mThreadType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mRcsParticipantIds:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mRcsParticipantIds:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mSortingProperty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mIsAscending:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsThreadQueryParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsThreadQueryParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static convertParticipantSetToIdList(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsParticipant;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mLimit:I

    return v0
.end method

.method public getRcsParticipantsIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mRcsParticipantIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSortDirection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mIsAscending:Z

    return v0
.end method

.method public getSortingProperty()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mSortingProperty:I

    return v0
.end method

.method public getThreadType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mThreadType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mThreadType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mRcsParticipantIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mSortingProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ims/RcsThreadQueryParams;->mIsAscending:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
