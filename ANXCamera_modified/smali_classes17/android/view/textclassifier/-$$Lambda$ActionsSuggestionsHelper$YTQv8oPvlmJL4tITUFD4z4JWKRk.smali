.class public final synthetic Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;

    invoke-direct {v0}, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/textclassifier/ConversationActions$Message;

    invoke-static {p1}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->lambda$YTQv8oPvlmJL4tITUFD4z4JWKRk(Landroid/view/textclassifier/ConversationActions$Message;)I

    move-result p1

    return p1
.end method
