.class public final Landroid/view/textclassifier/ActionsModelParamsSupplier;
.super Ljava/lang/Object;
.source "ActionsModelParamsSupplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ActionsModelParamsSupplier$SettingsObserver;,
        Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_REQUIRED_LOCALES:Ljava/lang/String; = "required_locales"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_REQUIRED_MODEL_VERSION:Ljava/lang/String; = "required_model_version"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SERIALIZED_PRECONDITIONS:Ljava/lang/String; = "serialized_preconditions"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "androidtc"


# instance fields
.field private mActionsModelParams:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mOnChangedListener:Ljava/lang/Runnable;

.field private mParsed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/view/textclassifier/ActionsModelParamsSupplier$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mParsed:Z

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mAppContext:Landroid/content/Context;

    if-nez p2, :cond_1

    sget-object v1, Landroid/view/textclassifier/-$$Lambda$ActionsModelParamsSupplier$GCXILXtg_S2la6x__ANOhbYxetw;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsModelParamsSupplier$GCXILXtg_S2la6x__ANOhbYxetw;

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mOnChangedListener:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/textclassifier/ActionsModelParamsSupplier$SettingsObserver;

    iget-object v2, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mAppContext:Landroid/content/Context;

    new-instance v3, Landroid/view/textclassifier/-$$Lambda$ActionsModelParamsSupplier$zElxNeuL3A8paTXvw8GWdpp4rFo;

    invoke-direct {v3, p0}, Landroid/view/textclassifier/-$$Lambda$ActionsModelParamsSupplier$zElxNeuL3A8paTXvw8GWdpp4rFo;-><init>(Landroid/view/textclassifier/ActionsModelParamsSupplier;)V

    invoke-direct {v1, v2, v3}, Landroid/view/textclassifier/ActionsModelParamsSupplier$SettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mSettingsObserver:Landroid/view/textclassifier/ActionsModelParamsSupplier$SettingsObserver;

    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    return-void
.end method

.method private parse(Landroid/content/ContentResolver;)Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;
    .locals 8

    const-string v0, "androidtc"

    const-string/jumbo v1, "text_classifier_action_model_params"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-virtual {v2, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    const-string/jumbo v3, "required_model_version"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    const-string v4, "ActionsModelParams.Parse, invalid model version"

    invoke-static {v0, v4}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-object v0

    :cond_1
    const-string/jumbo v4, "required_locales"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v5, "ActionsModelParams.Parse, invalid locales"

    invoke-static {v0, v5}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-object v0

    :cond_2
    const-string/jumbo v6, "serialized_preconditions"

    invoke-virtual {v2, v6, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v6, "ActionsModelParams.Parse, invalid preconditions"

    invoke-static {v0, v6}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-object v0

    :cond_3
    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    new-instance v7, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    invoke-direct {v7, v3, v4, v6}, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;-><init>(ILjava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    :catchall_0
    move-exception v2

    const-string v3, "Invalid TEXT_CLASSIFIER_ACTION_MODEL_PARAMS, ignore"

    invoke-static {v0, v3, v2}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->INVALID:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mSettingsObserver:Landroid/view/textclassifier/ActionsModelParamsSupplier$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get()Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mParsed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/textclassifier/ActionsModelParamsSupplier;->parse(Landroid/content/ContentResolver;)Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mActionsModelParams:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mParsed:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mActionsModelParams:Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textclassifier/ActionsModelParamsSupplier;->get()Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$ActionsModelParamsSupplier()V
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "androidtc"

    const-string v2, "Settings.Global.TEXT_CLASSIFIER_ACTION_MODEL_PARAMS is updated"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mParsed:Z

    iget-object v1, p0, Landroid/view/textclassifier/ActionsModelParamsSupplier;->mOnChangedListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
