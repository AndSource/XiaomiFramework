.class Lmiui/widget/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Z;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic q:Lmiui/widget/Z;


# direct methods
.method constructor <init>(Lmiui/widget/Z;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/Y;->q:Lmiui/widget/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/Y;->q:Lmiui/widget/Z;

    iget-object p0, p0, Lmiui/widget/Z;->j:Lmiui/widget/PictureClock;

    invoke-static {p0}, Lmiui/widget/PictureClock;->b(Lmiui/widget/PictureClock;)V

    return-void
.end method
