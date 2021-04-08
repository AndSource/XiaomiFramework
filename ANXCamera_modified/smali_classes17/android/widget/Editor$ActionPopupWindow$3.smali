.class Landroid/widget/Editor$ActionPopupWindow$3;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Lcom/android/internal/phrase/QueryPhraseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$ActionPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;

.field final synthetic val$isPasswordInputType:Z

.field final synthetic val$shouldNotShowMainPanel:Z


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;ZZ)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iput-boolean p2, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$isPasswordInputType:Z

    iput-boolean p3, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$shouldNotShowMainPanel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v0, p1}, Landroid/widget/Editor$ActionPopupWindow;->access$4102(Landroid/widget/Editor$ActionPopupWindow;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$4100(Landroid/widget/Editor$ActionPopupWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$isPasswordInputType:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->val$shouldNotShowMainPanel:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$4200(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x110e0001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$4200(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x110e008d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$4200(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1, v0}, Landroid/widget/Editor$ActionPopupWindow;->access$4300(Landroid/widget/Editor$ActionPopupWindow;Z)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$3;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$4401(Landroid/widget/Editor$ActionPopupWindow;)V

    return-void
.end method
