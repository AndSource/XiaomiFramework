.class public Landroid/net/DnsPacket$DnsHeader;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsHeader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DnsHeader"


# instance fields
.field public final flags:I

.field public final id:I

.field private final mRecordCount:[I

.field public final rcode:I

.field final synthetic this$0:Landroid/net/DnsPacket;


# direct methods
.method constructor <init>(Landroid/net/DnsPacket;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    iput-object p1, p0, Landroid/net/DnsPacket$DnsHeader;->this$0:Landroid/net/DnsPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v0

    iput v0, p0, Landroid/net/DnsPacket$DnsHeader;->id:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v0

    iput v0, p0, Landroid/net/DnsPacket$DnsHeader;->flags:I

    iget v0, p0, Landroid/net/DnsPacket$DnsHeader;->flags:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/net/DnsPacket$DnsHeader;->rcode:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/DnsPacket$DnsHeader;->mRecordCount:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/net/DnsPacket$DnsHeader;->mRecordCount:[I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getRecordCount(I)I
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPacket$DnsHeader;->mRecordCount:[I

    aget v0, v0, p1

    return v0
.end method
