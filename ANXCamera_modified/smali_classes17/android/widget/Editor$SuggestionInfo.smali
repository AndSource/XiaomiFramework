.class Landroid/widget/Editor$SuggestionInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionInfo"
.end annotation


# instance fields
.field highlightSpan:Landroid/text/style/TextAppearanceSpan;

.field suggestionEnd:I

.field suggestionIndex:I

.field suggestionSpan:Landroid/text/style/SuggestionSpan;

.field suggestionStart:I

.field text:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$SuggestionInfo;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030118

    invoke-direct {p1, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor;)V

    return-void
.end method
