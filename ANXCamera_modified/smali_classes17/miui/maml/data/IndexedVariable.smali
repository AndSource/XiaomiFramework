.class public Lmiui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "IndexedVariable.java"


# instance fields
.field protected mIndex:I

.field private mIsNumber:Z

.field protected mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    iput-object p2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArr(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArrDouble(I)D
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArrDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getArrString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDouble()D
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public final getVersion()I
    .locals 3

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    iget-boolean v2, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->getVer(IZ)I

    move-result v0

    return v0
.end method

.method public final isNull()Z
    .locals 4

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lmiui/maml/data/Variables;->existsDouble(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final isNull(I)Z
    .locals 4

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lmiui/maml/data/Variables;->existsArrItem(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lmiui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final set(D)V
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final setArr(ID)Z
    .locals 2

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v0

    return v0
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method
