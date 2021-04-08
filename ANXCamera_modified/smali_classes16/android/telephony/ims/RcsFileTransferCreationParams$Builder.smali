.class public Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
.super Ljava/lang/Object;
.source "RcsFileTransferCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsFileTransferCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mContentMimeType:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mFileSize:J

.field private mFileTransferStatus:I

.field private mHeight:I

.field private mLength:J

.field private mPreviewMimeType:Ljava/lang/String;

.field private mPreviewUri:Landroid/net/Uri;

.field private mRcsFileTransferSessionId:Ljava/lang/String;

.field private mTransferOffset:J

.field private mWidth:I

.field final synthetic this$0:Landroid/telephony/ims/RcsFileTransferCreationParams;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/RcsFileTransferCreationParams;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->this$0:Landroid/telephony/ims/RcsFileTransferCreationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mRcsFileTransferSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mFileTransferStatus:I

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mContentMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mTransferOffset:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$700(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mLength:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mPreviewUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mPreviewMimeType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsFileTransferCreationParams;
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsFileTransferCreationParams;

    invoke-direct {v0, p0}, Landroid/telephony/ims/RcsFileTransferCreationParams;-><init>(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)V

    return-object v0
.end method

.method public setContentMimeType(Ljava/lang/String;)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mContentMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setContentUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setFileSize(J)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mFileSize:J

    return-object p0
.end method

.method public setFileTransferSessionId(Ljava/lang/String;)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mRcsFileTransferSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public setFileTransferStatus(I)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mFileTransferStatus:I

    return-object p0
.end method

.method public setHeight(I)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mHeight:I

    return-object p0
.end method

.method public setMediaDuration(J)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mLength:J

    return-object p0
.end method

.method public setPreviewMimeType(Ljava/lang/String;)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mPreviewMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setPreviewUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mPreviewUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setTransferOffset(J)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mTransferOffset:J

    return-object p0
.end method

.method public setWidth(I)Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->mWidth:I

    return-object p0
.end method
