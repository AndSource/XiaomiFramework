.class public Lcom/miui/hybrid/hook/FilterInfoInjector;
.super Ljava/lang/Object;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;,
        Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;,
        Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;,
        Lcom/miui/hybrid/hook/FilterInfoInjector$Holder;
    }
.end annotation


# static fields
.field private static final EXTRA_APP:Ljava/lang/String; = "EXTRA_APP"

.field private static final EXTRA_INTENT_FILTER:Ljava/lang/String; = "extra_intent_filter"

.field private static final EXTRA_LABEL:Ljava/lang/String; = "extra_filter_label"

.field private static final EXTRA_ORIGINAL_INTENT:Ljava/lang/String; = "extra_original_intent"

.field private static final EXTRA_PACKAGE:Ljava/lang/String; = "extra_package"

.field private static final EXTRA_PAGE_FILTERS:Ljava/lang/String; = "extra_page_filters"

.field private static final EXTRA_PAGE_PATH:Ljava/lang/String; = "extra_page_path"

.field private static final EXTRA_URI_PATTERN:Ljava/lang/String; = "extra_uri_pattern"

.field private static final HYBRID_APP_MANAGER_ACTION:Ljava/lang/String; = "com.miui.hybrid.action.APP_DETAIL_MANAGER"

.field private static final HYBRID_FILTER_ACTION:Ljava/lang/String; = "com.miui.hybrid.action.FILTER"

.field private static final LOCK:Ljava/lang/Object;

.field private static final PACKAGE_NAME_HYBRID:Ljava/lang/String; = "com.miui.hybrid"

.field public static final TAG:Ljava/lang/String; = "FilterInfoInjector"


# instance fields
.field private mFilterInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQuickAppResolver:Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/FilterInfoInjector;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector;->mQuickAppResolver:Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector;->mFilterInfoMap:Ljava/util/Map;

    return-void
.end method

.method private static getDisplayIcon(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "FilterInfoInjector"

    if-nez p1, :cond_0

    const-string v2, "Fail to getDisplayIcon: iconUri is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to decode stream for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v2, :cond_1

    const-string v3, "Fail to getDisplayIcon: iconBitmap is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getInstance()Lcom/miui/hybrid/hook/FilterInfoInjector;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/hook/FilterInfoInjector$Holder;->INSTANCE:Lcom/miui/hybrid/hook/FilterInfoInjector;

    return-object v0
.end method

.method public static processQuickApps(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v4, v0

    const-string v0, "com.miui.hybrid.action.FILTER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.miui.hybrid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v3, v1}, Lcom/android/internal/app/IPerfShielder;->resolveQuickAppInfos(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/QuickAppResolveInfo;

    move-object v14, v7

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v15, v7

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "extra_package"

    iget-object v8, v14, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "extra_original_intent"

    invoke-virtual {v15, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v7, 0x3000000

    invoke-virtual {v15, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.miui.hybrid.action.APP_DETAIL_MANAGER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v7

    const-string v7, "EXTRA_APP"

    iget-object v8, v14, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v14, Lcom/android/internal/app/QuickAppResolveInfo;->iconUri:Landroid/net/Uri;

    move-object/from16 v11, p0

    invoke-static {v11, v7}, Lcom/miui/hybrid/hook/FilterInfoInjector;->getDisplayIcon(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v16, v7

    if-nez v16, :cond_1

    goto :goto_0

    :cond_1
    new-instance v17, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;

    iget-object v10, v14, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    move-object/from16 v7, v17

    move-object v8, v5

    move-object/from16 v9, v16

    move-object v11, v15

    move-object/from16 v18, v12

    invoke-direct/range {v7 .. v12}, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)V

    move-object/from16 v7, v17

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "FilterInfoInjector"

    const-string v7, "fail to processQuickAppList"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v2
.end method


# virtual methods
.method public deleteFilterInfo(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/hybrid/hook/FilterInfoInjector;->mFilterInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    sget-object v1, Lcom/miui/hybrid/hook/FilterInfoInjector;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    iget-object v4, p0, Lcom/miui/hybrid/hook/FilterInfoInjector;->mQuickAppResolver:Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;

    invoke-virtual {v4, v3}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;->removeFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/miui/hybrid/hook/FilterInfoInjector;->mFilterInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/hybrid/hook/FilterInfoInjector;->deleteFilterInfo(Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    const-string v0, "extra_page_path"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "extra_page_filters"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    const-string v11, "extra_filter_label"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "extra_intent_filter"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/IntentFilter;

    const-string v13, "extra_uri_pattern"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/internal/app/QuickAppResolveInfo;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v15, p2

    goto :goto_2

    :cond_1
    move-object v15, v11

    :goto_2
    invoke-direct {v14, v2, v8, v15, v3}, Lcom/android/internal/app/QuickAppResolveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v15, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    invoke-direct {v15, v12}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v15, v14}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->setAppInfo(Lcom/android/internal/app/QuickAppResolveInfo;)V

    invoke-virtual {v15, v13}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->setUriPattern(Ljava/lang/String;)V

    sget-object v16, Lcom/miui/hybrid/hook/FilterInfoInjector;->LOCK:Ljava/lang/Object;

    monitor-enter v16

    move-object/from16 v17, v0

    :try_start_0
    iget-object v0, v1, Lcom/miui/hybrid/hook/FilterInfoInjector;->mQuickAppResolver:Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;

    invoke-virtual {v0, v15}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;->addFilter(Landroid/content/IntentFilter;)V

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/miui/hybrid/hook/FilterInfoInjector;->mFilterInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_3
    const-string v0, "FilterInfoInjector"

    const-string v5, "Fail to insertFilterInfo: illegal arguments!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public resolveAppInfos(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/QuickAppResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/miui/hybrid/hook/FilterInfoInjector;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/miui/hybrid/hook/FilterInfoInjector;->mQuickAppResolver:Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v6, v6}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;

    invoke-virtual {v6}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->getUriPattern()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {v6}, Lcom/miui/hybrid/hook/FilterInfoInjector$QuickAppIntentFilter;->getAppInfo()Lcom/android/internal/app/QuickAppResolveInfo;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_4
    :goto_1
    return-object v0
.end method
