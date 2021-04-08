.class Landroid/net/DnsResolver$InetAddressAnswerAccumulator;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InetAddressAnswerAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final mAllAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsException:Landroid/net/DnsResolver$DnsException;

.field private final mNetwork:Landroid/net/Network;

.field private mRcode:I

.field private mReceivedAnswerCount:I

.field private final mTargetAnswerCount:I

.field private final mUserCallback:Landroid/net/DnsResolver$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/DnsResolver$Callback<",
            "-",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/DnsResolver;


# direct methods
.method constructor <init>(Landroid/net/DnsResolver;Landroid/net/Network;ILandroid/net/DnsResolver$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "I",
            "Landroid/net/DnsResolver$Callback<",
            "-",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->this$0:Landroid/net/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mReceivedAnswerCount:I

    iput-object p2, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mNetwork:Landroid/net/Network;

    iput p3, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mTargetAnswerCount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mAllAnswers:Ljava/util/List;

    iput-object p4, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    return-void
.end method

.method private maybeReportAnswer()V
    .locals 3

    iget v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mReceivedAnswerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mReceivedAnswerCount:I

    iget v1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mTargetAnswerCount:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mAllAnswers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->maybeReportError()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    iget-object v1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mAllAnswers:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/net/util/DnsUtils;->rfc6724Sort(Landroid/net/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mRcode:I

    invoke-interface {v0, v1, v2}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    return-void
.end method

.method private maybeReportError()Z
    .locals 4

    iget v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mRcode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    iget-object v3, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mAllAnswers:Ljava/util/List;

    invoke-interface {v2, v3, v0}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mDnsException:Landroid/net/DnsResolver$DnsException;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {v2, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->onAnswer([BI)V

    return-void
.end method

.method public onAnswer([BI)V
    .locals 3

    iget v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mReceivedAnswerCount:I

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iput p2, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mRcode:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mAllAnswers:Ljava/util/List;

    new-instance v1, Landroid/net/DnsResolver$DnsAddressAnswer;

    invoke-direct {v1, p1}, Landroid/net/DnsResolver$DnsAddressAnswer;-><init>([B)V

    invoke-virtual {v1}, Landroid/net/DnsResolver$DnsAddressAnswer;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/net/DnsResolver$DnsException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    iput-object v1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mDnsException:Landroid/net/DnsResolver$DnsException;

    :goto_0
    invoke-direct {p0}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->maybeReportAnswer()V

    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 0

    iput-object p1, p0, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->mDnsException:Landroid/net/DnsResolver$DnsException;

    invoke-direct {p0}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;->maybeReportAnswer()V

    return-void
.end method
