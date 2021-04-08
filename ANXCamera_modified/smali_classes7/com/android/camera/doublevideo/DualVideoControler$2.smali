.class Lcom/android/camera/doublevideo/DualVideoControler$2;
.super Ljava/lang/Object;
.source "DualVideoControler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/doublevideo/DualVideoControler;->addComposeTypeUI(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/doublevideo/DualVideoControler;


# direct methods
.method constructor <init>(Lcom/android/camera/doublevideo/DualVideoControler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler$2;->this$0:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler$2;->this$0:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-static {p1}, Lcom/android/camera/doublevideo/DualVideoControler;->access$000(Lcom/android/camera/doublevideo/DualVideoControler;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/doublevideo/render/IRenderable;

    sget-object v1, Lcom/android/camera/doublevideo/DualVideoControler$3;->$SwitchMap$com$android$camera$doublevideo$render$Compose:[I

    invoke-interface {v0}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/doublevideo/render/Compose;->MINI:Lcom/android/camera/doublevideo/render/Compose;

    invoke-interface {v0, v1}, Lcom/android/camera/doublevideo/render/IRenderable;->setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/doublevideo/render/Compose;->FULL:Lcom/android/camera/doublevideo/render/Compose;

    invoke-interface {v0, v1}, Lcom/android/camera/doublevideo/render/IRenderable;->setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler$2;->this$0:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-static {p1}, Lcom/android/camera/doublevideo/DualVideoControler;->access$100(Lcom/android/camera/doublevideo/DualVideoControler;)V

    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler$2;->this$0:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-static {p1}, Lcom/android/camera/doublevideo/DualVideoControler;->access$200(Lcom/android/camera/doublevideo/DualVideoControler;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler$2;->this$0:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-static {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->access$300(Lcom/android/camera/doublevideo/DualVideoControler;)Landroid/widget/ImageView;

    move-result-object p0

    const p1, 0x7f080101

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
