.class public final synthetic Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;

    invoke-direct {v0}, Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
