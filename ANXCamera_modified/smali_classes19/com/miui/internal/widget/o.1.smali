.class Lcom/miui/internal/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarView;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/o;->j:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/o;->j:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->t(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/widget/o;->j:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarView;->t(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/internal/widget/o;->j:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->action_bar_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/miui/internal/widget/o;->j:Lcom/miui/internal/widget/ActionBarView;

    new-instance v1, Landroid/view/TouchDelegate;

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarView;->t(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method
