.class public interface abstract Landroid/net/wifi/IOnWifiUsabilityStatsListener;
.super Ljava/lang/Object;
.source "IOnWifiUsabilityStatsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;,
        Landroid/net/wifi/IOnWifiUsabilityStatsListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
