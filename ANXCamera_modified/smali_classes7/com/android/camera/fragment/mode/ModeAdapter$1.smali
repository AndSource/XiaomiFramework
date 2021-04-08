.class Lcom/android/camera/fragment/mode/ModeAdapter$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/ModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

.field final synthetic val$holder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/ModeAdapter;Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->this$0:Lcom/android/camera/fragment/mode/ModeAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$holder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iput-object p3, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/fragment/mode/ModeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$holder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$holder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$holder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$1;->val$holder:Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
