.class Lcom/miui/internal/variable/v16/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/g;->j:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillGap(Landroid/widget/GridView;Z)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v16/g;->j:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleFillGap(JLandroid/widget/GridView;Z)V

    return-void
.end method

.method public layoutChildren(Landroid/widget/GridView;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v16/g;->j:Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/internal/variable/v16/Android_Widget_GridView_class;->handleLayoutChildren(JLandroid/widget/GridView;)V

    return-void
.end method
