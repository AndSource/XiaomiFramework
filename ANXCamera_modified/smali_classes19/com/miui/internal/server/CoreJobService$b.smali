.class Lcom/miui/internal/server/CoreJobService$b;
.super Lcom/miui/internal/server/CoreJobService$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/CoreJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/server/CoreJobService$a;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getInstance()Lcom/miui/internal/server/DataUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/server/DataUpdateManager;->update()V

    invoke-super {p0}, Lcom/miui/internal/server/CoreJobService$a;->run()V

    return-void
.end method
