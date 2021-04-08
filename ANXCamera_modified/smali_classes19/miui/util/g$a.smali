.class final Lmiui/util/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic j:Lmiui/util/g;

.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I


# direct methods
.method constructor <init>(Lmiui/util/g;I)V
    .locals 1

    iput-object p1, p0, Lmiui/util/g$a;->j:Lmiui/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/g$a;->mCanRemove:Z

    iput p2, p0, Lmiui/util/g$a;->mOffset:I

    invoke-virtual {p1}, Lmiui/util/g;->colGetSize()I

    move-result p1

    iput p1, p0, Lmiui/util/g$a;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lmiui/util/g$a;->mIndex:I

    iget p0, p0, Lmiui/util/g$a;->mSize:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/g$a;->j:Lmiui/util/g;

    iget v1, p0, Lmiui/util/g$a;->mIndex:I

    iget v2, p0, Lmiui/util/g$a;->mOffset:I

    invoke-virtual {v0, v1, v2}, Lmiui/util/g;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lmiui/util/g$a;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/util/g$a;->mIndex:I

    iput-boolean v2, p0, Lmiui/util/g$a;->mCanRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lmiui/util/g$a;->mCanRemove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/util/g$a;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/g$a;->mIndex:I

    iget v0, p0, Lmiui/util/g$a;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/g$a;->mSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/g$a;->mCanRemove:Z

    iget-object v0, p0, Lmiui/util/g$a;->j:Lmiui/util/g;

    iget p0, p0, Lmiui/util/g$a;->mIndex:I

    invoke-virtual {v0, p0}, Lmiui/util/g;->colRemoveAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
