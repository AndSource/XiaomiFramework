.class Lmiui/widget/TriggerViewDrawer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/TriggerViewDrawer$ScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/TriggerViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private ZY:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer$b;->ZY:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/TriggerViewDrawer$b;->ZY:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
