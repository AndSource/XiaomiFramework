.class public Landroid/telephony/ims/RcsEventQueryResult;
.super Ljava/lang/Object;
.source "RcsEventQueryResult.java"


# instance fields
.field private mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/RcsQueryContinuationToken;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsEventQueryResult;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    iput-object p2, p0, Landroid/telephony/ims/RcsEventQueryResult;->mEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContinuationToken()Landroid/telephony/ims/RcsQueryContinuationToken;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsEventQueryResult;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsEventQueryResult;->mEvents:Ljava/util/List;

    return-object v0
.end method
