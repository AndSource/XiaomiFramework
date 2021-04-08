.class Landroid/widget/SortableListView$1;
.super Ljava/lang/Object;
.source "SortableListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SortableListView;


# direct methods
.method constructor <init>(Landroid/widget/SortableListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v0}, Landroid/widget/SortableListView;->access$000(Landroid/widget/SortableListView;)Landroid/widget/SortableListView$OnOrderChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v0, p2}, Landroid/widget/SortableListView;->access$100(Landroid/widget/SortableListView;Landroid/view/MotionEvent;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v1, v0}, Landroid/widget/SortableListView;->access$202(Landroid/widget/SortableListView;I)I

    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v1, v0}, Landroid/widget/SortableListView;->access$302(Landroid/widget/SortableListView;I)I

    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/SortableListView;->access$402(Landroid/widget/SortableListView;Z)Z

    iget-object v1, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v3}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/SortableListView;->access$502(Landroid/widget/SortableListView;I)I

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/SortableListView;->access$602(Landroid/widget/SortableListView;I)I

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v3}, Landroid/widget/SortableListView;->access$700(Landroid/widget/SortableListView;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SortableListView;->getLocationOnScreen([I)V

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v5}, Landroid/widget/SortableListView;->access$700(Landroid/widget/SortableListView;)[I

    move-result-object v5

    aget v2, v5, v2

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/widget/SortableListView;->access$802(Landroid/widget/SortableListView;I)I

    iget-object v2, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v2}, Landroid/widget/SortableListView;->access$800(Landroid/widget/SortableListView;)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Landroid/widget/SortableListView;->access$902(Landroid/widget/SortableListView;I)I

    iget-object v2, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v2}, Landroid/widget/SortableListView;->access$500(Landroid/widget/SortableListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v3}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/widget/SortableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4, v5}, Landroid/widget/SortableListView;->access$1002(Landroid/widget/SortableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1000(Landroid/widget/SortableListView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    const/16 v5, 0x99

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1000(Landroid/widget/SortableListView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v8}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v7}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v7

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$1400(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v6}, Landroid/widget/SortableListView;->access$1200(Landroid/widget/SortableListView;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v8}, Landroid/widget/SortableListView;->access$600(Landroid/widget/SortableListView;)I

    move-result v8

    iget-object v10, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v10}, Landroid/widget/SortableListView;->access$1300(Landroid/widget/SortableListView;)I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v4}, Landroid/widget/SortableListView;->access$500(Landroid/widget/SortableListView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v6}, Landroid/widget/SortableListView;->access$500(Landroid/widget/SortableListView;)I

    move-result v6

    invoke-static {v4, v5, v6, v9, v9}, Landroid/widget/SortableListView;->access$1500(Landroid/widget/SortableListView;IIII)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/SortableListView$1;->this$0:Landroid/widget/SortableListView;

    invoke-static {v0}, Landroid/widget/SortableListView;->access$400(Landroid/widget/SortableListView;)Z

    move-result v0

    return v0
.end method
