.class public final synthetic Lcom/android/camera/module/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/module/Camera2Module;

.field private final synthetic lg:F

.field private final synthetic mg:F

.field private final synthetic ng:I

.field private final synthetic og:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/f;->kg:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/f;->lg:F

    iput p3, p0, Lcom/android/camera/module/f;->mg:F

    iput p4, p0, Lcom/android/camera/module/f;->ng:I

    iput p5, p0, Lcom/android/camera/module/f;->og:I

    return-void
.end method


# virtual methods
.method public final onOptionClick(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/f;->kg:Lcom/android/camera/module/Camera2Module;

    iget v1, p0, Lcom/android/camera/module/f;->lg:F

    iget v2, p0, Lcom/android/camera/module/f;->mg:F

    iget v3, p0, Lcom/android/camera/module/f;->ng:I

    iget v4, p0, Lcom/android/camera/module/f;->og:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/Camera2Module;->a(FFIII)V

    return-void
.end method
