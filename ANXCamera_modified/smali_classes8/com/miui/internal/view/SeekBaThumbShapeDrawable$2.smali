.class Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;
.super Ljava/lang/Object;
.source "SeekBaThumbShapeDrawable.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/SeekBaThumbShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/SeekBaThumbShapeDrawable;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;->this$0:Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$2;->this$0:Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method
