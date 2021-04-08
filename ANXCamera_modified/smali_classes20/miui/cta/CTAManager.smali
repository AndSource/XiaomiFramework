.class public Lmiui/cta/CTAManager;
.super Ljava/lang/Object;
.source "CTAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTAManager$CTAReceiver;,
        Lmiui/cta/CTAManager$Holder;,
        Lmiui/cta/CTAManager$CTAListener;
    }
.end annotation


# static fields
.field private static final CTA_CONFIG_NAME:Ljava/lang/String; = "miui_cta"

.field private static final EXTRA_KEY_ACCEPT:Ljava/lang/String; = "extra_accept"

.field private static final INTENT_ACTION_ACCEPT_CHANGED_SUFFIX:Ljava/lang/String; = ".intent.action.ACCEPT_CHANGED"

.field private static final META_KEY_CTA:Ljava/lang/String; = "com.miui.system.cta"

.field private static final TAG:Ljava/lang/String; = "CTAManager"


# instance fields
.field private mAcceptChangedAction:Ljava/lang/String;

.field private mAccepted:Z

.field private mConfig:Lmiui/cta/CTAConfig;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/cta/CTAManager$CTAListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".intent.action.ACCEPT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;->registerReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/cta/CTAManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/cta/CTAManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/cta/CTAManager;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    return v0
.end method

.method static synthetic access$302(Lmiui/cta/CTAManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/cta/CTAManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyAccept()V

    return-void
.end method

.method static synthetic access$500(Lmiui/cta/CTAManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyReject()V

    return-void
.end method

.method public static getInstance()Lmiui/cta/CTAManager;
    .locals 1

    sget-object v0, Lmiui/cta/CTAManager$Holder;->INSTANCE:Lmiui/cta/CTAManager;

    return-object v0
.end method

.method private getListenersCopy()[Lmiui/cta/CTAManager$CTAListener;
    .locals 3

    iget-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lmiui/cta/CTAManager$CTAListener;

    iget-object v2, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Lmiui/cta/CTAPreference;->isAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    iget-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lmiui/cta/CTAManager;->loadConfig(Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lmiui/cta/CTAConfig;->canMatch()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    iget-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Lmiui/cta/CTAPreference;->setAccepted(Landroid/content/Context;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private loadConfig(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.miui.system.cta"

    const-string v1, "miui_cta"

    invoke-static {p1, v0, v1}, Lmiui/util/ResourceHelper;->loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lmiui/cta/CTAConfig;->EMPTY:Lmiui/cta/CTAConfig;

    iput-object v1, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lmiui/cta/CTAConfig;

    invoke-direct {v1, p1, v0}, Lmiui/cta/CTAConfig;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iput-object v1, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_0
    return-void
.end method

.method private notifyAccept()V
    .locals 4

    invoke-direct {p0}, Lmiui/cta/CTAManager;->getListenersCopy()[Lmiui/cta/CTAManager$CTAListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lmiui/cta/CTAManager$CTAListener;->onAccept()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyReject()V
    .locals 4

    invoke-direct {p0}, Lmiui/cta/CTAManager;->getListenersCopy()[Lmiui/cta/CTAManager$CTAListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lmiui/cta/CTAManager$CTAListener;->onReject()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    :cond_0
    new-instance v1, Lmiui/cta/CTAManager$CTAReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/cta/CTAManager$CTAReceiver;-><init>(Lmiui/cta/CTAManager;Lmiui/cta/CTAManager$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmiui/cta/CTAManager;->mAcceptChangedAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    const-string v2, "extra_accept"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showAgreementDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CTADialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/cta/CTADialogFragment;

    if-nez v0, :cond_0

    new-instance v1, Lmiui/cta/CTADialogFragment;

    invoke-direct {v1}, Lmiui/cta/CTADialogFragment;-><init>()V

    move-object v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lmiui/cta/CTADialogFragment;->showDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static showAgreementIfNeed(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cta/CTAManager;->isAccepted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lmiui/cta/CTAManager;->showAgreement(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lmiui/cta/CTAManager$CTAListener;)V
    .locals 2

    iget-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAccepted()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    return v0
.end method

.method onAccept(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cta/CTAManager;->mAccepted:Z

    invoke-static {p1, v0}, Lmiui/cta/CTAPreference;->setAccepted(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyAccept()V

    invoke-direct {p0}, Lmiui/cta/CTAManager;->sendBroadcast()V

    return-void
.end method

.method onReject()V
    .locals 0

    invoke-direct {p0}, Lmiui/cta/CTAManager;->notifyReject()V

    invoke-direct {p0}, Lmiui/cta/CTAManager;->sendBroadcast()V

    return-void
.end method

.method public removeListener(Lmiui/cta/CTAManager$CTAListener;)V
    .locals 2

    iget-object v0, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/cta/CTAManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAgreement(Landroid/app/Activity;)V
    .locals 7

    iget-object v0, p0, Lmiui/cta/CTAManager;->mConfig:Lmiui/cta/CTAConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/cta/CTAConfig;->match(Ljava/lang/Class;)Lmiui/cta/CTAConfig$MatchResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lmiui/cta/CTAConfig$MatchResult;->messageId:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v0, Lmiui/cta/CTAConfig$MatchResult;->messageId:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lmiui/cta/CTAConfig$MatchResult;->permission:I

    invoke-static {p1, v2}, Lmiui/cta/CTAPermission;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "CTAManager"

    const-string v4, "Fail to show agreement for permission message is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$string;->cta_message_permission:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-boolean v2, v0, Lmiui/cta/CTAConfig$MatchResult;->optional:Z

    invoke-direct {p0, p1, v1, v2}, Lmiui/cta/CTAManager;->showAgreementDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method
