.class public Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/smooth/SmoothPathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmoothData"
.end annotation


# instance fields
.field public bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public height:I

.field public smooth:D

.field public topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public width:I


# direct methods
.method public constructor <init>(IID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    iput p2, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    iput-wide p3, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    return-void
.end method
