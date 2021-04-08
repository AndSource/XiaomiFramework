.class public Lmiui/yellowpage/Service;
.super Ljava/lang/Object;
.source "Service.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Service"


# instance fields
.field private mActions:Ljava/lang/String;

.field private mExtraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon:Ljava/lang/String;

.field private mIsMiFamily:Z

.field private mMid:I

.field private mName:Ljava/lang/String;

.field private mRawData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/yellowpage/Service;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Service"

    const-string v3, "Failed to get json object! "

    invoke-static {v2, v3, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "mid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extraData"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_1

    const-string v6, "isPromote"

    const-string v7, "isHot"

    const-string v8, "isNew"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v6, "actions"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "miFamily"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lmiui/yellowpage/Service;

    invoke-direct {v0}, Lmiui/yellowpage/Service;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/yellowpage/Service;->setMid(I)Lmiui/yellowpage/Service;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/yellowpage/Service;->setName(Ljava/lang/String;)Lmiui/yellowpage/Service;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/yellowpage/Service;->setIcon(Ljava/lang/String;)Lmiui/yellowpage/Service;

    move-result-object v0

    invoke-virtual {v0, v5}, Lmiui/yellowpage/Service;->setExtraData(Ljava/util/Map;)Lmiui/yellowpage/Service;

    move-result-object v0

    invoke-virtual {v0, v6}, Lmiui/yellowpage/Service;->setActions(Ljava/lang/String;)Lmiui/yellowpage/Service;

    move-result-object v0

    invoke-virtual {v0, v7}, Lmiui/yellowpage/Service;->setIsMiFamily(Z)Lmiui/yellowpage/Service;

    move-result-object v0

    return-object v0
.end method

.method public static serviceOnClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lmiui/yellowpage/Service;->serviceOnClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static serviceOnClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "mid"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "module.to_intent"

    invoke-static {p0, v2, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "web_title"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "web_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    move-object v5, p0

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v5 .. v10}, Lmiui/yellowpage/YellowPageStatistic;->clickModuleItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Service"

    const-string v2, "Failed to get json object! "

    invoke-static {v1, v2, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/Service;->mActions:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/Service;->mExtraData:Ljava/util/Map;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/Service;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMiFamily()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/yellowpage/Service;->mIsMiFamily:Z

    return v0
.end method

.method public getMiStatKeyArgs(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lmiui/yellowpage/Service;->mMid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/yellowpage/Service;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/yellowpage/Service;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getMid()I
    .locals 1

    iget v0, p0, Lmiui/yellowpage/Service;->mMid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/Service;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/Service;->mRawData:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtraData()Z
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/Service;->mExtraData:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setActions(Ljava/lang/String;)Lmiui/yellowpage/Service;
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/Service;->mActions:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraData(Ljava/util/Map;)Lmiui/yellowpage/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmiui/yellowpage/Service;"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/Service;->mExtraData:Ljava/util/Map;

    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lmiui/yellowpage/Service;
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/Service;->mIcon:Ljava/lang/String;

    return-object p0
.end method

.method public setIsMiFamily(Z)Lmiui/yellowpage/Service;
    .locals 0

    iput-boolean p1, p0, Lmiui/yellowpage/Service;->mIsMiFamily:Z

    return-object p0
.end method

.method public setMid(I)Lmiui/yellowpage/Service;
    .locals 0

    iput p1, p0, Lmiui/yellowpage/Service;->mMid:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/yellowpage/Service;
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/Service;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/Service;->mRawData:Ljava/lang/String;

    return-void
.end method
