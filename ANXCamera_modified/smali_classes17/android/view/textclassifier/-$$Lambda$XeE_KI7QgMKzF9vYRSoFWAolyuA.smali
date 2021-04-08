.class public final synthetic Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;

    invoke-direct {v0}, Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/textclassifier/ActionsSuggestionsModel;->getLocales(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
