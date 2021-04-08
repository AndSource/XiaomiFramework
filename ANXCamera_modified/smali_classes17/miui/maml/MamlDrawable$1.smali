.class Lmiui/maml/MamlDrawable$1;
.super Ljava/lang/Object;
.source "MamlDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/MamlDrawable;


# direct methods
.method constructor <init>(Lmiui/maml/MamlDrawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/MamlDrawable$1;->this$0:Lmiui/maml/MamlDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/MamlDrawable$1;->this$0:Lmiui/maml/MamlDrawable;

    invoke-virtual {v0}, Lmiui/maml/MamlDrawable;->invalidateSelf()V

    return-void
.end method
