.class public interface abstract Landroid/os/Binder$ProxyTransactListener;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProxyTransactListener"
.end annotation


# virtual methods
.method public abstract onTransactEnded(Ljava/lang/Object;)V
.end method

.method public abstract onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
.end method
