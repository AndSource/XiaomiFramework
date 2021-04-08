.class public final synthetic Landroid/net/util/-$$Lambda$DnsUtils$E7rjA1PKdcqMJSVvye8jaivYDec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/-$$Lambda$DnsUtils$E7rjA1PKdcqMJSVvye8jaivYDec;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroid/net/util/-$$Lambda$DnsUtils$E7rjA1PKdcqMJSVvye8jaivYDec;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/net/util/-$$Lambda$DnsUtils$E7rjA1PKdcqMJSVvye8jaivYDec;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroid/net/util/-$$Lambda$DnsUtils$E7rjA1PKdcqMJSVvye8jaivYDec;->f$1:Landroid/net/Network;

    check-cast p1, Ljava/net/InetAddress;

    invoke-static {v0, v1, p1}, Landroid/net/util/DnsUtils;->lambda$rfc6724Sort$0(Ljava/util/List;Landroid/net/Network;Ljava/net/InetAddress;)V

    return-void
.end method
