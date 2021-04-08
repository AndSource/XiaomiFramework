.class public Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;
.super Landroid/telephony/ims/RcsMessageCreationParams$Builder;
.source "RcsIncomingMessageCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsIncomingMessageCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mArrivalTimestamp:J

.field private mSeenTimestamp:J

.field private mSenderParticipant:Landroid/telephony/ims/RcsParticipant;


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;-><init>(JI)V

    iput-wide p3, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mArrivalTimestamp:J

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mArrivalTimestamp:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mSeenTimestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)Landroid/telephony/ims/RcsParticipant;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mSenderParticipant:Landroid/telephony/ims/RcsParticipant;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsIncomingMessageCreationParams;
    .locals 2

    new-instance v0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/RcsIncomingMessageCreationParams;-><init>(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;Landroid/telephony/ims/RcsIncomingMessageCreationParams$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroid/telephony/ims/RcsMessageCreationParams;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->build()Landroid/telephony/ims/RcsIncomingMessageCreationParams;

    move-result-object v0

    return-object v0
.end method

.method public setArrivalTimestamp(J)Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mArrivalTimestamp:J

    return-object p0
.end method

.method public setSeenTimestamp(J)Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mSeenTimestamp:J

    return-object p0
.end method

.method public setSenderParticipant(Landroid/telephony/ims/RcsParticipant;)Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->mSenderParticipant:Landroid/telephony/ims/RcsParticipant;

    return-object p0
.end method
