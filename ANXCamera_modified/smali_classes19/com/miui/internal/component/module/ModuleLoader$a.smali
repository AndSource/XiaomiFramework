.class Lcom/miui/internal/component/module/ModuleLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/component/module/ModuleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public mx:Lmiui/module/Module;

.field public nx:Ljava/lang/String;

.field public ox:Ljava/lang/String;

.field public px:Ljava/lang/String;

.field public qx:Z


# direct methods
.method public constructor <init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->mx:Lmiui/module/Module;

    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->nx:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->ox:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->px:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->qx:Z

    return-void
.end method
