.class public final Landroid/telephony/data/DataCallResponse$Builder;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mCause:I

.field private mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mInterfaceName:Ljava/lang/String;

.field private mLinkStatus:I

.field private mMtu:I

.field private mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocolType:I

.field private mSuggestedRetryTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/DataCallResponse;
    .locals 13

    new-instance v12, Landroid/telephony/data/DataCallResponse;

    iget v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    iget v2, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:I

    iget v3, p0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    iget v4, p0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    iget v5, p0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v9, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    iget-object v10, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    iget v11, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/data/DataCallResponse;-><init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-object v12
.end method

.method public setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setCause(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    return-object p0
.end method

.method public setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    return-object p0
.end method

.method public setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    return-object p0
.end method

.method public setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    return-object p0
.end method

.method public setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    return-object p0
.end method

.method public setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    return-object p0
.end method

.method public setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:I

    return-object p0
.end method
