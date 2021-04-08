.class public Landroid/telephony/ims/RcsEventQueryResultDescriptor;
.super Ljava/lang/Object;
.source "RcsEventQueryResultDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsEventQueryResultDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsEventDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsEventQueryResultDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsEventQueryResultDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RcsQueryContinuationToken;

    iput-object v0, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mEvents:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mEvents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/RcsQueryContinuationToken;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsEventDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    iput-object p2, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$getRcsEventQueryResult$0(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsEventDescriptor;)Landroid/telephony/ims/RcsEvent;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/telephony/ims/RcsEventDescriptor;->createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getRcsEventQueryResult(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEventQueryResult;
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsEventQueryResultDescriptor$0eoTyoA0JNoBx53J3zXvi1fQcnA;

    invoke-direct {v1, p1}, Landroid/telephony/ims/-$$Lambda$RcsEventQueryResultDescriptor$0eoTyoA0JNoBx53J3zXvi1fQcnA;-><init>(Landroid/telephony/ims/RcsControllerCall;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Landroid/telephony/ims/RcsEventQueryResult;

    iget-object v2, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/RcsEventQueryResult;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->mEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
