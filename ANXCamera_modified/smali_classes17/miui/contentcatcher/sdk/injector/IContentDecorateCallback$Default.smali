.class public Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Default;
.super Ljava/lang/Object;
.source "IContentDecorateCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateContent(Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
