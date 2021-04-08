.class public Landroid/telephony/ims/RcsMessageCreationParams$Builder;
.super Ljava/lang/Object;
.source "RcsMessageCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsMessageCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatitude:D

.field private mLongitude:D

.field private mMessageStatus:I

.field private mOriginationTimestamp:J

.field private mRcsMessageGlobalId:Ljava/lang/String;

.field private mSubId:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mLatitude:D

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mLongitude:D

    iput-wide p1, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mOriginationTimestamp:J

    iput p3, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mRcsMessageGlobalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mSubId:I

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mMessageStatus:I

    return v0
.end method

.method static synthetic access$300(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mOriginationTimestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$600(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)D
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mLongitude:D

    return-wide v0
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsMessageCreationParams;
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsMessageCreationParams;

    invoke-direct {v0, p0}, Landroid/telephony/ims/RcsMessageCreationParams;-><init>(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)V

    return-object v0
.end method

.method public setLatitude(D)Landroid/telephony/ims/RcsMessageCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mLatitude:D

    return-object p0
.end method

.method public setLongitude(D)Landroid/telephony/ims/RcsMessageCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mLongitude:D

    return-object p0
.end method

.method public setRcsMessageId(Ljava/lang/String;)Landroid/telephony/ims/RcsMessageCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mRcsMessageGlobalId:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Landroid/telephony/ims/RcsMessageCreationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mMessageStatus:I

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/telephony/ims/RcsMessageCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method
