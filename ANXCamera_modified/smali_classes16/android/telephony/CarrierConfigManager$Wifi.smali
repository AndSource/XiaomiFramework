.class public final Landroid/telephony/CarrierConfigManager$Wifi;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wifi"
.end annotation


# static fields
.field public static final KEY_CARRIER_CONNECTION_MANAGER_PACKAGE_STRING:Ljava/lang/String; = "wifi.carrier_connection_manager_package_string"

.field public static final KEY_CARRIER_PROFILES_VERSION_INT:Ljava/lang/String; = "wifi.carrier_profiles_version_int"

.field public static final KEY_NETWORK_PROFILES_STRING_ARRAY:Ljava/lang/String; = "wifi.network_profiles_string_array"

.field public static final KEY_PASSPOINT_PROFILES_STRING_ARRAY:Ljava/lang/String; = "wifi.passpoint_profiles_string_array"

.field public static final KEY_PREFIX:Ljava/lang/String; = "wifi."


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Wifi;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaults()Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "wifi.carrier_profiles_version_int"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const-string/jumbo v2, "wifi.carrier_connection_manager_package_string"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wifi.network_profiles_string_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "wifi.passpoint_profiles_string_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
