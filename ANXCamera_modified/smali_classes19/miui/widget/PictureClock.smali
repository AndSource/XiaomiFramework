.class public Lmiui/widget/PictureClock;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PictureClock$a;
    }
.end annotation


# instance fields
.field private final An:Landroid/content/BroadcastReceiver;

.field private Bn:Lmiui/widget/ImageTextView;

.field private Cn:Lmiui/widget/PictureClock$a;

.field private Dn:Z

.field private En:Z

.field private mCalendar:Lmiui/date/Calendar;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PictureClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    new-instance p1, Lmiui/widget/Z;

    invoke-direct {p1, p0}, Lmiui/widget/Z;-><init>(Lmiui/widget/PictureClock;)V

    iput-object p1, p0, Lmiui/widget/PictureClock;->An:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/PictureClock;->Dn:Z

    return-void
.end method

.method private Zb()V
    .locals 4

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Dn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_0
    iget-object v0, p0, Lmiui/widget/PictureClock;->Bn:Lmiui/widget/ImageTextView;

    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x4c

    invoke-static {v1, v2, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/widget/PictureClock;->Cn:Lmiui/widget/PictureClock$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiui/widget/PictureClock$a;->e(Z)V

    iget-object v0, p0, Lmiui/widget/PictureClock;->Cn:Lmiui/widget/PictureClock$a;

    iget-object p0, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lmiui/widget/PictureClock$a;->d(Z)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/PictureClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;
    .locals 0

    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/PictureClock;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/PictureClock;->Dn:Z

    return p0
.end method

.method static synthetic b(Lmiui/widget/PictureClock;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/PictureClock;->Zb()V

    return-void
.end method

.method static synthetic c(Lmiui/widget/PictureClock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/PictureClock;->Dn:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->En:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->En:Z

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Dn:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/PictureClock;->An:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0}, Lmiui/widget/PictureClock;->Zb()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->En:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->En:Z

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->Dn:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lmiui/widget/PictureClock;->An:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->time_display:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ImageTextView;

    iput-object v0, p0, Lmiui/widget/PictureClock;->Bn:Lmiui/widget/ImageTextView;

    new-instance v0, Lmiui/widget/PictureClock$a;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->Cn:Lmiui/widget/PictureClock$a;

    return-void
.end method
