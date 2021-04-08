.class public final synthetic Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;

    invoke-direct {v0}, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;-><init>()V

    sput-object v0, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final chooseTitle(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->lambda$createTitleChooser$1(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
