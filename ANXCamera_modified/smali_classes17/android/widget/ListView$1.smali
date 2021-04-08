.class Landroid/widget/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_ListView$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillGap(Landroid/widget/ListView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->originalFillGap(Z)V

    return-void
.end method

.method public init(Landroid/widget/ListView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    return-void
.end method

.method public layoutChildren(Landroid/widget/ListView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/ListView;->originalLayoutChildren()V

    return-void
.end method
