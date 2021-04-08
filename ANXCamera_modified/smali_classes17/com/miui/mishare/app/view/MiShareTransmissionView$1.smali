.class Lcom/miui/mishare/app/view/MiShareTransmissionView$1;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

.field final synthetic val$space:I

.field final synthetic val$spaceStart:I


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iput p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$spaceStart:I

    iput p3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$space:I

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$spaceStart:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$space:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_1
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$spaceStart:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iput v1, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    iget v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void
.end method
