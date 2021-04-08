.class public abstract Landroid/telephony/ims/RcsEvent;
.super Ljava/lang/Object;
.source "RcsEvent.java"


# instance fields
.field private final mTimestamp:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/telephony/ims/RcsEvent;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsEvent;->mTimestamp:J

    return-wide v0
.end method

.method abstract persist(Landroid/telephony/ims/RcsControllerCall;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation
.end method
