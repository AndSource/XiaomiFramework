.class Lmiui/animation/controller/FolmeTouch$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private aL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/animation/controller/FolmeTouch;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigs:[Lmiui/animation/base/AnimConfig;


# direct methods
.method varargs constructor <init>(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/controller/FolmeTouch$a;->aL:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lmiui/animation/controller/FolmeTouch$a;->mConfigs:[Lmiui/animation/base/AnimConfig;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$a;->aL:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/controller/FolmeTouch;

    :goto_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    iget-object p0, p0, Lmiui/animation/controller/FolmeTouch$a;->mConfigs:[Lmiui/animation/base/AnimConfig;

    invoke-static {v0, p0}, Lmiui/animation/controller/FolmeTouch;->a(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lmiui/animation/controller/FolmeTouch$a;->mConfigs:[Lmiui/animation/base/AnimConfig;

    invoke-static {v0, p1, p2, p0}, Lmiui/animation/controller/FolmeTouch;->a(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
