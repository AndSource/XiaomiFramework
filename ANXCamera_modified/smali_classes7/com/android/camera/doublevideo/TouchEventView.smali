.class public Lcom/android/camera/doublevideo/TouchEventView;
.super Landroid/view/View;
.source "TouchEventView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchEventView"


# instance fields
.field private mListener:Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/doublevideo/TouchEventView;->mListener:Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setListener(Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/doublevideo/TouchEventView;->mListener:Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;

    return-void
.end method
