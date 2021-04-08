.class public Lcom/android/camera/doublevideo/render/RenderItem;
.super Ljava/lang/Object;
.source "RenderItem.java"

# interfaces
.implements Lcom/android/camera/doublevideo/render/IRenderable;


# instance fields
.field private mComposeType:Lcom/android/camera/doublevideo/render/Compose;

.field private mFacing:Z

.field private mLastComposeType:Lcom/android/camera/doublevideo/render/Compose;

.field private mPreviewAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mRecordAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;


# direct methods
.method public constructor <init>(Lcom/android/camera/doublevideo/render/Compose;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mComposeType:Lcom/android/camera/doublevideo/render/Compose;

    iput-boolean p2, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mFacing:Z

    return-void
.end method


# virtual methods
.method public getComposeType()Lcom/android/camera/doublevideo/render/Compose;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mComposeType:Lcom/android/camera/doublevideo/render/Compose;

    return-object p0
.end method

.method public getLastComposeType()Lcom/android/camera/doublevideo/render/Compose;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mLastComposeType:Lcom/android/camera/doublevideo/render/Compose;

    return-object p0
.end method

.method public getPreviewDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mPreviewAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-object p0
.end method

.method public getRecordDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mRecordAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-object p0
.end method

.method public isFacingFront()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mFacing:Z

    return p0
.end method

.method public setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mComposeType:Lcom/android/camera/doublevideo/render/Compose;

    iput-object v0, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mLastComposeType:Lcom/android/camera/doublevideo/render/Compose;

    iput-object p1, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mComposeType:Lcom/android/camera/doublevideo/render/Compose;

    return-void
.end method

.method public setPreviewDrawAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mPreviewAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-void
.end method

.method public setRecordDrawAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/doublevideo/render/RenderItem;->mRecordAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    return-void
.end method
