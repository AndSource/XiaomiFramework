.class final Lcom/android/camera/module/Camera2Module$SaveVideoTask;
.super Ljava/lang/Object;
.source "Camera2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SaveVideoTask"
.end annotation


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$SaveVideoTask;->videoPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    return-void
.end method
