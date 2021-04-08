.class public Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
.super Ljava/lang/Object;
.source "MiuiStatusBarState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MiuiStatusBarState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniStateViewBuilder"
.end annotation


# instance fields
.field private mChronometerShow:Z

.field private mIconShow:Z

.field private mTitleShow:Z

.field private mViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$layout;->miui_status_bar_mini_state_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mIconShow:Z

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 3

    iget-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mIconShow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->gap:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->gap:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setAppIcon(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020006

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mIconShow:Z

    return-object p0
.end method

.method public setBackgroundColor(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/app/MiuiStatusBarState;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/miui/system/internal/R$id;->app_info:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setChronometer(JLjava/lang/String;Z)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .locals 6

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->chronometer:I

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->chronometer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iput-boolean v2, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .locals 2

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->app_info:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method

.method public setTextColor(I)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const-string v1, "setTextColor"

    const v2, 0x1020016

    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/miui/system/internal/R$id;->chronometer:I

    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;
    .locals 4

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/miui/system/internal/R$id;->chronometer:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iput-boolean v2, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mChronometerShow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiStatusBarState$MiniStateViewBuilder;->mTitleShow:Z

    return-object p0
.end method
