.class Landroid/net/DnsResolver$DnsAddressAnswer;
.super Landroid/net/DnsPacket;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsAddressAnswer"
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DnsResolver.DnsAddressAnswer"


# instance fields
.field private final mQueryType:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/net/DnsPacket;-><init>([B)V

    iget-object v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mHeader:Landroid/net/DnsPacket$DnsHeader;

    iget v0, v0, Landroid/net/DnsPacket$DnsHeader;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mHeader:Landroid/net/DnsPacket$DnsHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mRecords:[Ljava/util/List;

    aget-object v0, v0, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPacket$DnsRecord;

    iget v0, v0, Landroid/net/DnsPacket$DnsRecord;->nsType:I

    iput v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mQueryType:I

    return-void

    :cond_0
    new-instance v0, Landroid/net/ParseException;

    const-string v1, "No question found"

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/net/ParseException;

    const-string v1, "Not an answer packet"

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mHeader:Landroid/net/DnsPacket$DnsHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mRecords:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/DnsPacket$DnsRecord;

    iget v4, v3, Landroid/net/DnsPacket$DnsRecord;->nsType:I

    iget v5, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mQueryType:I

    if-ne v4, v5, :cond_1

    if-eq v4, v2, :cond_2

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Landroid/net/DnsPacket$DnsRecord;->getRR()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    goto :goto_0

    :cond_3
    return-object v0
.end method
