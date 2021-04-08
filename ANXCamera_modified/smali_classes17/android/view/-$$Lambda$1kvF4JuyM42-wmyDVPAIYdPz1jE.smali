.class public final synthetic Landroid/view/-$$Lambda$1kvF4JuyM42-wmyDVPAIYdPz1jE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/RenderNodeAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/RenderNodeAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$1kvF4JuyM42-wmyDVPAIYdPz1jE;->f$0:Landroid/view/RenderNodeAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$1kvF4JuyM42-wmyDVPAIYdPz1jE;->f$0:Landroid/view/RenderNodeAnimator;

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    return-void
.end method
