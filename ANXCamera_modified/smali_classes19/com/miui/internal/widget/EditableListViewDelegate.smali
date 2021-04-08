.class public Lcom/miui/internal/widget/EditableListViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/EditableListViewDelegate$a;,
        Lcom/miui/internal/widget/EditableListViewDelegate$b;,
        Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    }
.end annotation


# static fields
.field private static final bG:I = 0x7fffffff

.field private static final cG:Lmiui/reflect/Method;

.field private static final dG:Lmiui/reflect/Method;

.field private static final eG:Lmiui/reflect/Method;

.field private static final fG:Lmiui/reflect/Method;

.field private static final gG:Lmiui/reflect/Method;

.field private static final hG:Lmiui/reflect/Method;


# instance fields
.field private RF:Landroid/widget/AbsListView;

.field private SF:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private TF:Lcom/miui/internal/widget/EditableListViewDelegate$a;

.field private UF:Lcom/miui/internal/widget/EditableListViewDelegate$b;

.field private VF:Z

.field private XF:Z

.field private YF:I

.field private ZF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private _F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

.field private aG:Lmiui/widget/EditableListView$ItemCheckFilter;

.field private mActionMode:Landroid/view/ActionMode;

.field private mCheckedItemCount:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setAdapter"

    const-string v2, "(Landroid/widget/ListAdapter;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->cG:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "clearChoices"

    const-string v2, "()V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->dG:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setItemChecked"

    const-string v2, "(IZ)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->eG:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "isItemChecked"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->fG:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "getCheckedItemPositions"

    const-string v2, "()Landroid/util/SparseBooleanArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->gG:Lmiui/reflect/Method;

    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setMultiChoiceModeListener"

    const-string v2, "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->hG:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ZF:Ljava/util/List;

    new-instance v0, Lcom/miui/internal/widget/z;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/z;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->_F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    new-instance v0, Lcom/miui/internal/widget/A;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/A;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method private Yd()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->ZF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->r(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private Zd()V
    .locals 8

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->_F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v3, v4, v6, v7}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->YF:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    return-object p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->r(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/EditableListViewDelegate;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->YF:I

    return p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return p1
.end method

.method static synthetic c(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 1

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return v0
.end method

.method static synthetic c(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->_F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->VF:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->XF:Z

    return p0
.end method

.method private getCheckableItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->aG:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiui/widget/EditableListView$ItemCheckFilter;->getCheckableItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isItemCheckable(I)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->aG:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lmiui/widget/EditableListView$ItemCheckFilter;->isItemCheckable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private r(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 1

    const p0, 0x7fffffff

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearChoices()V
    .locals 5

    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->dG:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->_F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->Zd()V

    iput v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->TF:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate$a;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 3

    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->gG:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    return-object p0
.end method

.method public initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/AbsListView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    instance-of p2, p1, Landroid/widget/ListView;

    iput-boolean p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->XF:Z

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    sget-object p2, Lcom/miui/internal/widget/EditableListViewDelegate;->cG:Lmiui/reflect/Method;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "absListView is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAllItemsChecked()Z
    .locals 1

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    iget p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItemChecked(I)Z
    .locals 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->XF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->fG:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, p0, v4}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isItemIdChecked(J)Z
    .locals 5

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->TF:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->cG:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, p0, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/internal/widget/EditableListViewDelegate$a;

    invoke-direct {v2, p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$a;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->TF:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    sget-object p1, Lcom/miui/internal/widget/EditableListViewDelegate;->cG:Lmiui/reflect/Method;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->TF:Lcom/miui/internal/widget/EditableListViewDelegate$a;

    aput-object p0, v1, v0

    invoke-virtual {p1, v2, v3, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->VF:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    iput-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->VF:Z

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->_F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->Zd()V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->UF:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$b;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    :cond_3
    return-void
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->aG:Lmiui/widget/EditableListView$ItemCheckFilter;

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->XF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->eG:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v2, v3, p0, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->UF:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$b;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$b;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->UF:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->UF:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$b;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    sget-object p1, Lcom/miui/internal/widget/EditableListViewDelegate;->hG:Lmiui/reflect/Method;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->UF:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    aput-object p0, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->_F:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    :cond_0
    return-void
.end method

.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 6

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget v4, Lmiui/R$string;->select_item:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v4, Lmiui/R$plurals;->items_selected:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, p1

    check-cast v1, Lmiui/view/EditActionMode;

    const v4, 0x102001a

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lmiui/R$string;->deselect_all:I

    goto :goto_1

    :cond_1
    sget p0, Lmiui/R$string;->select_all:I

    :goto_1
    invoke-interface {v1, v4, p0}, Lmiui/view/EditActionMode;->setButton(II)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-interface {p0, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_3
    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object p3, Lcom/miui/internal/widget/EditableListViewDelegate;->gG:Lmiui/reflect/Method;

    iget-object p4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->SF:Ljava/lang/Class;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->RF:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p4, v0, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->r(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Landroid/widget/Checkable;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
