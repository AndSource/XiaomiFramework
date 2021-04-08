.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;,
        Lcom/android/internal/app/PlatLogoActivity$OneDrawable;,
        Lcom/android/internal/app/PlatLogoActivity$ZeroDrawable;
    }
.end annotation


# static fields
.field static final TOUCH_STATS:Ljava/lang/String; = "touch.stats"

.field static final sPaint:Landroid/graphics/Paint;


# instance fields
.field mBackslash:Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

.field mClicks:I

.field mOneView:Landroid/widget/ImageView;

.field mPressureMax:D

.field mPressureMin:D

.field mZeroView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/app/PlatLogoActivity;->sPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/internal/app/PlatLogoActivity;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/android/internal/app/PlatLogoActivity;->sPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/android/internal/app/PlatLogoActivity;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->measureTouchPressure(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->testOverlap()V

    return-void
.end method

.method private launchNextStage()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "egg_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v1

    const-string v2, "com.android.internal.app.PlatLogoActivity"

    if-nez v1, :cond_0

    nop

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Can\'t write settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.internal.category.PLATLOGO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "No more eggs."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->finish()V

    return-void
.end method

.method private measureTouchPressure(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_1
    float-to-double v1, v0

    iget-wide v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    float-to-double v1, v0

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    iput-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_3
    :goto_0
    return-void
.end method

.method private syncTouchPressure()V
    .locals 9

    const-string/jumbo v0, "touch.stats"

    const-string/jumbo v1, "max"

    const-string/jumbo v2, "min"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "{}"

    :goto_0
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    :cond_2
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_3

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "com.android.internal.app.PlatLogoActivity"

    const-string v2, "Can\'t write touch settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private testOverlap()V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    mul-float v5, v0, v4

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float v5, v1, v5

    float-to-double v5, v5

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getY()F

    move-result v7

    sub-float v7, v3, v7

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    mul-float v7, v0, v2

    float-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRotation()F

    move-result v5

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    const v7, 0x439d8000    # 315.0f

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v8, 0x41700000    # 15.0f

    cmpg-float v5, v5, v8

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v8

    mul-float/2addr v2, v0

    add-float/2addr v8, v2

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    mul-float/2addr v4, v0

    add-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRotation()F

    move-result v4

    rem-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mBackslash:Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->startAnimating()V

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mClicks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mClicks:I

    iget v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mClicks:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->launchNextStage()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mBackslash:Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->stopAnimating()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    const v1, 0x10900cd

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(I)V

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v1, v3}, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mBackslash:Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

    const v1, 0x10203a5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/internal/app/PlatLogoActivity$OneDrawable;

    invoke-direct {v4}, Lcom/android/internal/app/PlatLogoActivity$OneDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x1020533

    invoke-virtual {p0, v3}, Lcom/android/internal/app/PlatLogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity;->mZeroView:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$ZeroDrawable;

    invoke-direct {v5}, Lcom/android/internal/app/PlatLogoActivity$ZeroDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity;->mOneView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mBackslash:Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/app/PlatLogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x102049c

    invoke-virtual {p0, v1}, Lcom/android/internal/app/PlatLogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mBackslash:Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->stopAnimating()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mClicks:I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
