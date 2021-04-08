.class Lmiuix/springback/trigger/DefaultTrigger$Tracking;
.super Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.source "DefaultTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/DefaultTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tracking"
.end annotation


# instance fields
.field private mLockActivated:Z

.field private mTriggerable:Z

.field private mUpTriggerable:Z

.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$Tracking;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$800(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Idle;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iput-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    :cond_2
    return-void
.end method

.method handleScrolled(II)V
    .locals 10

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gez p1, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$4000(Lmiuix/springback/trigger/DefaultTrigger;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    :cond_1
    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v5

    invoke-static {v4, v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$1702(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v5

    iget v5, v5, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$4000(Lmiuix/springback/trigger/DefaultTrigger;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$4002(Lmiuix/springback/trigger/DefaultTrigger;Z)Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1600(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->isNoData()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->getCountNoData()I

    move-result v0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v2

    check-cast v2, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {v2}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    :cond_4
    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    if-eq p1, v0, :cond_5

    if-eqz v0, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->notifyActivated()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$600(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$1000(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-virtual {p1, v3, p2}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_5
    return-void

    :cond_6
    iput-boolean v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mUpTriggerable:Z

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$4100(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result p1

    iget-boolean p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v4

    move v5, v3

    :goto_1
    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v6

    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget v7, v7, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    if-le v6, v7, :cond_7

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6, v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$4102(Lmiuix/springback/trigger/DefaultTrigger;I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$4100(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v5

    if-ltz v5, :cond_9

    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$2800(Lmiuix/springback/trigger/DefaultTrigger;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$4100(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/springback/trigger/DefaultTrigger$Action;

    invoke-static {v5, v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1702(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$1400(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v5

    iget-object v6, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v6

    iget v6, v6, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    if-lt v5, v6, :cond_8

    move v5, v0

    goto :goto_2

    :cond_8
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiuix/springback/trigger/DefaultTrigger;->access$1702(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$Action;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    iput-boolean v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    :goto_3
    iget-object v5, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v5}, Lmiuix/springback/trigger/DefaultTrigger;->access$4100(Lmiuix/springback/trigger/DefaultTrigger;)I

    move-result v5

    const/4 v6, 0x4

    if-eq p1, v5, :cond_e

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    check-cast p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$4200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p2}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string p2, "start"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v4, v3, [J

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/16 v4, -0xb4

    new-array v7, v3, [J

    invoke-virtual {p1, p2, v4, v7}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v4, "show"

    invoke-direct {p2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v7, v3, [J

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4, v8, v7}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/high16 v7, 0x41c80000    # 25.0f

    new-array v9, v3, [J

    invoke-virtual {p2, v4, v7, v9}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v7, "hide"

    invoke-direct {v4, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v9, v3, [J

    invoke-virtual {v4, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v8, v3, [J

    invoke-virtual {v4, v7, v5, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-array v5, v0, [Landroid/view/View;

    iget-object v7, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v7}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v7, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    invoke-static {v6, v9}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v5, p1, p2, v7}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v6, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-interface {p1, v4, p2}, Lmiuix/animation/IStateStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_b
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    iput-boolean v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-eqz p1, :cond_11

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onActivated()V

    goto :goto_5

    :cond_d
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :cond_e
    if-eqz v4, :cond_11

    iget-boolean p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-eq p2, p1, :cond_11

    if-eqz p2, :cond_f

    invoke-virtual {v4}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    iput-boolean v3, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz p1, :cond_10

    iput-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    :cond_10
    invoke-virtual {v4}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onActivated()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    if-eqz p1, :cond_11

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_11
    :goto_5
    return-void

    nop

    :array_0
    .array-data 4
        0x42f00000    # 120.0f
        0x3f7d70a4    # 0.99f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x3f7d70a4    # 0.99f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method handleSpringBack()Z
    .locals 4

    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mTriggerable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    :cond_4
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    :goto_0
    return v3

    :cond_5
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1500(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    invoke-virtual {v0, v2, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1200(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$WaitForIndeterminate;

    move-result-object v0

    invoke-static {p0, v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    return v3

    :cond_6
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$3900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$ActionTriggered;

    move-result-object v3

    invoke-static {v0, v3}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    iget-boolean v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->mLockActivated:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->notifyTriggered()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1700(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Action;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    :goto_1
    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Tracking;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$2100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return v2
.end method
