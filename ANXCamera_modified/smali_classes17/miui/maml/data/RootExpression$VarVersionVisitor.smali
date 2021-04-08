.class Lmiui/maml/data/RootExpression$VarVersionVisitor;
.super Lmiui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lmiui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/RootExpression;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/data/ExpressionVisitor;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression;)V
    .locals 6

    instance-of v0, p1, Lmiui/maml/data/Expression$VariableExpression;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression$VariableExpression;->evaluate()D

    iget-object v1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v2, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0}, Lmiui/maml/data/Expression$VariableExpression;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lmiui/maml/data/Expression$VariableExpression;->getVersion()I

    move-result v4

    instance-of v5, p1, Lmiui/maml/data/Expression$NumberVariableExpression;

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiui/maml/data/Expression$FunctionExpression;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "eval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "preciseeval"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmiui/maml/data/RootExpression;->access$002(Lmiui/maml/data/RootExpression;Z)Z

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :cond_3
    :goto_1
    return-void
.end method
