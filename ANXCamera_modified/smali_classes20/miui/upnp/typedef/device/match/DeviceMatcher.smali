.class public Lmiui/upnp/typedef/device/match/DeviceMatcher;
.super Ljava/lang/Object;
.source "DeviceMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceIsMatched(Lmiui/upnp/typedef/device/Device;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/upnp/typedef/device/Device;",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/urn/Urn;

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/urn/Urn;->getType()Lmiui/upnp/typedef/device/urn/Urn$Type;

    move-result-object v3

    sget-object v4, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getDeviceType()Lmiui/upnp/typedef/device/urn/DeviceType;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/device/urn/DeviceType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/urn/Urn;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    invoke-static {p0, v2}, Lmiui/upnp/typedef/device/match/DeviceMatcher;->serviceIsMatched(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/typedef/device/urn/Urn;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    nop

    :cond_4
    :goto_2
    return v0
.end method

.method public static serviceIsMatched(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/typedef/device/urn/Urn;)Z
    .locals 4

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/Device;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Service;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Service;->getType()Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/urn/ServiceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/urn/Urn;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
