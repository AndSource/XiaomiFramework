.class Lmiuix/springback/trigger/DefaultTrigger$Idle;
.super Lmiuix/springback/trigger/DefaultTrigger$TriggerState;
.source "DefaultTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/DefaultTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Idle;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$TriggerState;-><init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger$Idle;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    return-void
.end method


# virtual methods
.method public handleScrollStateChange(II)V
    .locals 0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$Idle;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$1900(Lmiuix/springback/trigger/DefaultTrigger;)Lmiuix/springback/trigger/DefaultTrigger$Tracking;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->access$2000(Lmiuix/springback/trigger/DefaultTrigger;Lmiuix/springback/trigger/DefaultTrigger$TriggerState;)V

    :cond_1
    return-void
.end method
