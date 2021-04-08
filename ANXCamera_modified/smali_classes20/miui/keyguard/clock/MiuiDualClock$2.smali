.class Lmiui/keyguard/clock/MiuiDualClock$2;
.super Landroid/os/AsyncTask;
.source "MiuiDualClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/keyguard/clock/MiuiDualClock;


# direct methods
.method constructor <init>(Lmiui/keyguard/clock/MiuiDualClock;)V
    .locals 0

    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/keyguard/clock/MiuiDualClock$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10

    const-string v0, "MiuiDualClock"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-static {v3}, Lmiui/keyguard/clock/MiuiDualClock;->access$100(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v3, "content://weather/realtimeLocalWeatherData/4/1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "city_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update local city name, city="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "get city exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v1

    :goto_3
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiui/keyguard/clock/MiuiDualClock$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$100(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$string;->miui_clock_city_name_local:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$300(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$400(Lmiui/keyguard/clock/MiuiDualClock;)Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock$2;->this$0:Lmiui/keyguard/clock/MiuiDualClock;

    invoke-static {v0}, Lmiui/keyguard/clock/MiuiDualClock;->access$400(Lmiui/keyguard/clock/MiuiDualClock;)Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;->onLocalCityChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
