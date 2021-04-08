.class public abstract Lcom/miui/internal/variable/api/AbstractExtension;
.super Ljava/lang/Object;
.source "AbstractExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mExtension:Lcom/miui/internal/variable/api/Overridable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/variable/api/Overridable<",
            "TI;>;"
        }
    .end annotation
.end field

.field private mOriginal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindOriginal(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mOriginal:Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/internal/variable/api/Overridable;->bind(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getExtension()Lcom/miui/internal/variable/api/Overridable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/internal/variable/api/Overridable<",
            "TI;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    return-object p0
.end method

.method public setExtension(Lcom/miui/internal/variable/api/Overridable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/variable/api/Overridable<",
            "TI;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    iget-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mOriginal:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    invoke-interface {p0, p1}, Lcom/miui/internal/variable/api/Overridable;->bind(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
