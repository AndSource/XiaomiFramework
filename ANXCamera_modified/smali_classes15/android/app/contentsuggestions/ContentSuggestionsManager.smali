.class public final Landroid/app/contentsuggestions/ContentSuggestionsManager;
.super Ljava/lang/Object;
.source "ContentSuggestionsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;
    }
.end annotation


# static fields
.field private static final SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

.field private final mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/contentsuggestions/IContentSuggestionsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iput p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    return-void
.end method


# virtual methods
.method public classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string v1, "classifyContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 4

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v3, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v2, v3, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1
.end method

.method public notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyInteraction called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public provideContextImage(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextImage(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suggestContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
