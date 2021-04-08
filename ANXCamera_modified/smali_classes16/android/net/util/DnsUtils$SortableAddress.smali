.class public Landroid/net/util/DnsUtils$SortableAddress;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/DnsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortableAddress"
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public final hasSrcAddr:I

.field public final label:I

.field public final labelMatch:I

.field public final precedence:I

.field public final prefixMatchLen:I

.field public final scope:I

.field public final scopeMatch:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/DnsUtils$SortableAddress;->address:Ljava/net/InetAddress;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$000(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->label:I

    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$100(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$200(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->precedence:I

    if-eqz p2, :cond_1

    iget v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->label:I

    invoke-static {p2}, Landroid/net/util/DnsUtils;->access$000(Ljava/net/InetAddress;)I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->labelMatch:I

    if-eqz p2, :cond_2

    iget v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    invoke-static {p2}, Landroid/net/util/DnsUtils;->access$100(Ljava/net/InetAddress;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Landroid/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$300(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/net/util/DnsUtils;->access$300(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p1}, Landroid/net/util/DnsUtils;->access$400(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    goto :goto_3

    :cond_3
    iput v1, p0, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    :goto_3
    return-void
.end method
