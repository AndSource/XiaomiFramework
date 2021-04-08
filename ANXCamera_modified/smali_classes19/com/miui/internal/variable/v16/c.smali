.class Lcom/miui/internal/variable/v16/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/c;->j:Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v16/c;->j:Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
