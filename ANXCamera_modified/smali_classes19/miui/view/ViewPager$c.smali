.class Lmiui/view/ViewPager$c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic j:Lmiui/view/ViewPager;


# direct methods
.method private constructor <init>(Lmiui/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/ViewPager$c;->j:Lmiui/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/view/ViewPager$c;-><init>(Lmiui/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lmiui/view/ViewPager$c;->j:Lmiui/view/ViewPager;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    iget-object p0, p0, Lmiui/view/ViewPager$c;->j:Lmiui/view/ViewPager;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->dataSetChanged()V

    return-void
.end method
