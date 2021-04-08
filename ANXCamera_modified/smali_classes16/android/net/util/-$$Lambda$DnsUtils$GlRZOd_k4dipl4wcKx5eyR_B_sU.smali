.class public final synthetic Landroid/net/util/-$$Lambda$DnsUtils$GlRZOd_k4dipl4wcKx5eyR_B_sU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/-$$Lambda$DnsUtils$GlRZOd_k4dipl4wcKx5eyR_B_sU;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/net/util/-$$Lambda$DnsUtils$GlRZOd_k4dipl4wcKx5eyR_B_sU;->f$0:Ljava/util/List;

    check-cast p1, Landroid/net/util/DnsUtils$SortableAddress;

    invoke-static {v0, p1}, Landroid/net/util/DnsUtils;->lambda$rfc6724Sort$1(Ljava/util/List;Landroid/net/util/DnsUtils$SortableAddress;)V

    return-void
.end method
