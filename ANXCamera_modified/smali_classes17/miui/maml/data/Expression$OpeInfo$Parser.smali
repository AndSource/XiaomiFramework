.class public Lmiui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    iput v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    if-le v6, v7, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_5

    iget v6, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    iget-object v6, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v6, v3

    const/4 v2, 0x1

    if-eqz v5, :cond_4

    iput v3, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_4
    goto :goto_3

    :cond_5
    iget-object v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v0, v5, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    iget v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    add-int/2addr v0, v5

    iput v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    :cond_7
    return v2
.end method

.method public getMatch()Lmiui/maml/data/Expression$Ope;
    .locals 2

    iget v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    iget v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method
