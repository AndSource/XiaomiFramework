.class public final synthetic Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic f$0:Landroid/view/inspector/IntFlagMapping;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inspector/IntFlagMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;->f$0:Landroid/view/inspector/IntFlagMapping;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;->f$0:Landroid/view/inspector/IntFlagMapping;

    invoke-virtual {v0, p1}, Landroid/view/inspector/IntFlagMapping;->get(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
