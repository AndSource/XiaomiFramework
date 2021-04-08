.class public Lcom/miui/internal/search/KeywordsCloudConfigHelper;
.super Ljava/lang/Object;
.source "KeywordsCloudConfigHelper.java"


# static fields
.field private static final CONFIG_VERSION:Ljava/lang/String; = "version"

.field private static final KEYWORDS:Ljava/lang/String; = "keywords"

.field private static final KEYWORDS_CLOUD_CONFIG_MODULE_NAME:Ljava/lang/String; = "Search"

.field private static final KEYWORDS_FILENAME:Ljava/lang/String; = "search_keyswords.json"

.field private static final KEYWORDS_ZH_CH_FILENAME:Ljava/lang/String; = "search_keywords_zh_cn.json"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String; = "KeywordCloudHelper"

.field private static final ZH_CN:Ljava/lang/String; = "zh_CN"

.field private static volatile sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

.field private mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->initConfig()V

    return-void
.end method

.method private declared-synchronized buildCloudKeywordsHolderFromConfig(Lorg/json/JSONObject;)Lcom/miui/internal/search/CloudKeywordsHolder;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keywords"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/miui/internal/search/SearchUtils;->jsonToMap(Lorg/json/JSONObject;)Landroid/util/ArrayMap;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    nop

    :try_start_2
    new-instance v4, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    invoke-direct {v4}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->setLocale(Ljava/lang/String;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->setKeywords(Landroid/util/ArrayMap;)Lcom/miui/internal/search/CloudKeywordsHolder$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/search/CloudKeywordsHolder$Builder;->build()Lcom/miui/internal/search/CloudKeywordsHolder;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "KeywordCloudHelper"

    const-string/jumbo v6, "parse CloudKeywords fail!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/internal/search/KeywordsCloudConfigHelper;
    .locals 3

    sget-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    iget-object v0, v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    iget-object v1, v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->sCloudConfigHelper:Lcom/miui/internal/search/KeywordsCloudConfigHelper;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static localeHasChange(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private needToUpdate(Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z
    .locals 5

    const-string v0, "locale"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "version"

    const-string v3, "-1"

    invoke-virtual {p1, v1, v3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/search/SearchUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {v3}, Lcom/miui/internal/search/CloudKeywordsHolder;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/search/SearchUtils;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v1, v3, :cond_2

    move v2, v4

    :cond_2
    return v2
.end method

.method private parseKeywordsCloudFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-string/jumbo v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "search_keywords_zh_cn.json"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "search_keyswords.json"

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/miui/internal/search/SearchUtils;->readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "KeywordCloudHelper"

    const-string/jumbo v4, "parse Keywords cloud file fail!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public declared-synchronized getKeywords(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    invoke-virtual {v0}, Lcom/miui/internal/search/CloudKeywordsHolder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/search/CloudKeywordsHolder;->getKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initConfig()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->parseKeywordsCloudFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->buildCloudKeywordsHolderFromConfig(Lorg/json/JSONObject;)Lcom/miui/internal/search/CloudKeywordsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    return-void
.end method

.method public declared-synchronized updateKeywordsCloudConfig(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Search"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v2}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->needToUpdate(Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->buildCloudKeywordsHolderFromConfig(Lorg/json/JSONObject;)Lcom/miui/internal/search/CloudKeywordsHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    iget-object v4, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mKeywordsHolder:Lcom/miui/internal/search/CloudKeywordsHolder;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/internal/search/KeywordsCloudConfigHelper;->mFile:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/miui/internal/search/SearchUtils;->writeJsonToFile(Lorg/json/JSONObject;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "KeywordCloudHelper"

    const-string/jumbo v2, "update Keywords cloud config fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
