.class public Lmiui/util/SuppressionRect;
.super Ljava/lang/Object;
.source "SuppressionRect.java"


# static fields
.field private static final NODE_DEFAULT:I

.field private static final TIME_DEFAULT:I


# instance fields
.field private bottom:I

.field private left:I

.field private list:Ljava/util/ArrayList;

.field private node:I

.field private position:I

.field private right:I

.field private time:I

.field private top:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    iput p2, p0, Lmiui/util/SuppressionRect;->position:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->bottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->left:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->time:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->node:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNode()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->node:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->position:I

    return v0
.end method

.method public getRight()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->right:I

    return v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->time:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->top:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lmiui/util/SuppressionRect;->type:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->bottom:I

    return-void
.end method

.method public setEmpty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setTop(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setLeft(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setRight(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setBottom(I)V

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->left:I

    return-void
.end method

.method public setNode(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->position:I

    return-void
.end method

.method public setRight(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->right:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->time:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->top:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    return-void
.end method

.method public setValue(IIIIII)V
    .locals 1

    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    iput p2, p0, Lmiui/util/SuppressionRect;->position:I

    iput p3, p0, Lmiui/util/SuppressionRect;->top:I

    iput p4, p0, Lmiui/util/SuppressionRect;->left:I

    iput p5, p0, Lmiui/util/SuppressionRect;->right:I

    iput p6, p0, Lmiui/util/SuppressionRect;->bottom:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuppressionRect{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->node:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
