.class Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollStatus"
.end annotation


# static fields
.field private static final lw:F = 1.0E-4f


# instance fields
.field private dw:I

.field private ew:F

.field fw:Z

.field hw:Z

.field jw:I

.field kw:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->dw:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/app/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;-><init>()V

    return-void
.end method

.method private d(IF)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->fw:Z

    iget v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->ew:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p1, 0x1

    :goto_0
    iput p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->jw:I

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->kw:I

    return-void
.end method

.method private e(IF)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->dw:I

    iput p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->ew:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->fw:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->hw:Z

    return-void
.end method

.method private onScrollEnd()V
    .locals 1

    iget v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->kw:I

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->jw:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->dw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->ew:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->hw:Z

    return-void
.end method


# virtual methods
.method a(IF)V
    .locals 1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->onScrollEnd()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->dw:I

    if-eq v0, p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->e(IF)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->fw:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->d(IF)V

    :cond_2
    :goto_0
    return-void
.end method
