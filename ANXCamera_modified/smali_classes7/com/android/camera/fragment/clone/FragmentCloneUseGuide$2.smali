.class Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;
.super Ljava/lang/Object;
.source "FragmentCloneUseGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-static {v0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->access$200(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-static {v1}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->access$000(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-static {v2}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->access$100(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide$2;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-static {p0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;->access$100(Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;->onScrollStateIdle(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V

    return-void
.end method
