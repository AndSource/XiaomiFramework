.class public final Landroid/net/wifi/SupplicantStateTrackerInjector;
.super Ljava/lang/Object;
.source "SupplicantStateTrackerInjector.java"


# static fields
.field private static sNetid:I

.field private static sNetworksDisabledDuringConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleConnectNetwork(I)V
    .locals 1

    sput p0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    return-void
.end method

.method public static handleNetworkConnectionComplete()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    return-void
.end method

.method public static handleNetworkConnectionFailure(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    sget-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_6

    sget v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-ne v0, p2, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-eq p2, v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p2, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "wifiConfiguration"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void

    :cond_6
    return-void
.end method

.method public static isConformAuthFailure(II)Z
    .locals 1

    if-lez p1, :cond_0

    sget-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
