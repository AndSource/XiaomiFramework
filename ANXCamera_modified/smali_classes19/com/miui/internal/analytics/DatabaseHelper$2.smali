.class Lcom/miui/internal/analytics/DatabaseHelper$2;
.super Lmiui/util/SoftReferenceSingleton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lcom/miui/internal/analytics/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance()Lcom/miui/internal/analytics/c;
    .locals 1

    new-instance p0, Lcom/miui/internal/analytics/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/c;-><init>(Lcom/miui/internal/analytics/b;)V

    return-object p0
.end method

.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/analytics/DatabaseHelper$2;->createInstance()Lcom/miui/internal/analytics/c;

    move-result-object p0

    return-object p0
.end method
