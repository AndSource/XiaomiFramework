.class public Landroid/app/MiuiStatusBarState$StandardViewBuilder;
.super Ljava/lang/Object;
.source "MiuiStatusBarState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MiuiStatusBarState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardViewBuilder"
.end annotation


# instance fields
.field private mViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/system/internal/R$layout;->miui_status_bar_standard_state_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setAppIcon(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020006

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public setBackgroundColor(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->app_info:I

    const-string v2, "setBackgroundColor"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 2

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->app_info:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method

.method public setShowStatusInfo(Z)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 5

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const v4, 0x1020004

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v3, 0x1020002

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->app_info:I

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x11

    :goto_1
    const-string v3, "setGravity"

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object p0
.end method

.method public setStatusChronometer(JLjava/lang/String;Z)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 6

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->chronometer:I

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020014

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->chronometer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public setStatusDescripiton(Ljava/lang/String;)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 4

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020014

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public setStatusIcon1(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020007

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public setStatusIcon2(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020008

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public setTextColor(I)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->title:I

    const-string v2, "setTextColor"

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020014

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/miui/system/internal/R$id;->chronometer:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/MiuiStatusBarState$StandardViewBuilder;
    .locals 3

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const v1, 0x1020016

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/MiuiStatusBarState$StandardViewBuilder;->mViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method
