.class public Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;
.source "StopsZoomSliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter$StopsZoomRatioResolver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StopsZoomSliderAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;-><init>(Landroid/content/Context;ILcom/android/camera/fragment/manually/ZoomValueListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->getCount()I

    move-result p0

    return p0
.end method

.method public getZoomRatioResolver()Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter$StopsZoomRatioResolver;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter$StopsZoomRatioResolver;-><init>(Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;)V

    return-object v0
.end method

.method public mapPositionToValue(F)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mapPositionToValue(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mapPositionToValue(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapPositionToValue(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public mapValueToPosition(Ljava/lang/Float;)F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomSliderAdapter;->mZoomRatioResolver:Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/MultiStopsZoomRatioResolver;->mapValueToPosition(F)F

    move-result p0

    return p0
.end method

.method public bridge synthetic mapValueToPosition(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->mapValueToPosition(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method
