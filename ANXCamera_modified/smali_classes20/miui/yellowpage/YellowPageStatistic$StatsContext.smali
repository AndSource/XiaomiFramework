.class public Lmiui/yellowpage/YellowPageStatistic$StatsContext;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsContext"
.end annotation


# static fields
.field public static final EMPTY:Lmiui/yellowpage/YellowPageStatistic$StatsContext;

.field private static final serialVersionUID:J = 0xddb3451eddf42a3L


# instance fields
.field private mSource:Ljava/lang/String;

.field private mSourceModuleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->EMPTY:Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    iput p2, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    return-void
.end method

.method public static parse(Landroid/content/Intent;)Lmiui/yellowpage/YellowPageStatistic$StatsContext;
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    const-string v3, "mid"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "source"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {p0}, Lmiui/yellowpage/YellowPageStatistic;->access$000(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v0, :cond_1

    invoke-virtual {v4, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "YellowPageStatistic"

    invoke-static {v3, v2}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    invoke-direct {v2, v1, v0}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public static parse(Landroid/os/Bundle;)Lmiui/yellowpage/YellowPageStatistic$StatsContext;
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    const-string v3, "mid"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "source"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Lmiui/yellowpage/YellowPageStatistic$StatsContext;

    invoke-direct {v2, v1, v0}, Lmiui/yellowpage/YellowPageStatistic$StatsContext;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public attach(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    const-string v1, "mid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public attach(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    const-string v1, "mid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceModuleId()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/YellowPageStatistic$StatsContext;->mSourceModuleId:I

    return v0
.end method
