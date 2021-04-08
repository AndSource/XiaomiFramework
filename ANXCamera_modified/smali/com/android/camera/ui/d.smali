.class public final synthetic Lcom/android/camera/ui/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/ui/MutiStateButton;

.field private final synthetic lg:F

.field private final synthetic mg:F

.field private final synthetic ng:F

.field private final synthetic og:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/MutiStateButton;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/d;->kg:Lcom/android/camera/ui/MutiStateButton;

    iput p2, p0, Lcom/android/camera/ui/d;->lg:F

    iput p3, p0, Lcom/android/camera/ui/d;->mg:F

    iput p4, p0, Lcom/android/camera/ui/d;->ng:F

    iput p5, p0, Lcom/android/camera/ui/d;->og:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/d;->kg:Lcom/android/camera/ui/MutiStateButton;

    iget v1, p0, Lcom/android/camera/ui/d;->lg:F

    iget v2, p0, Lcom/android/camera/ui/d;->mg:F

    iget v3, p0, Lcom/android/camera/ui/d;->ng:F

    iget v4, p0, Lcom/android/camera/ui/d;->og:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/MutiStateButton;->a(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
