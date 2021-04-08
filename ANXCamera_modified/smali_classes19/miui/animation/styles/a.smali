.class Lmiui/animation/styles/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/styles/TintDrawable;->a(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JC:Landroid/view/View;

.field final synthetic rN:Lmiui/animation/styles/TintDrawable;


# direct methods
.method constructor <init>(Landroid/view/View;Lmiui/animation/styles/TintDrawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/styles/a;->JC:Landroid/view/View;

    iput-object p2, p0, Lmiui/animation/styles/a;->rN:Lmiui/animation/styles/TintDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/styles/a;->JC:Landroid/view/View;

    iget-object p0, p0, Lmiui/animation/styles/a;->rN:Lmiui/animation/styles/TintDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
