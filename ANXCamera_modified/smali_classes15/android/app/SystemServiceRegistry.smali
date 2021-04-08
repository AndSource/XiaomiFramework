.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v2, "accessibility"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/accessibility/CaptioningManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v2, "captioning"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/accounts/AccountManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v2, "account"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v2, "activity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/ActivityTaskManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v2, "activity_task"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/UriGrantsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v2, "uri_grants"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v2, "alarm"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v2, "audio"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/MediaRouter;

    new-instance v1, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string v2, "media_router"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/bluetooth/BluetoothManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string v2, "bluetooth"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v2, "hdmi_control"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string/jumbo v2, "textclassification"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/ClipboardManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    const-string v2, "clipboard"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    const-class v1, Landroid/text/ClipboardManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v2, "connectivity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/IBinder;

    new-instance v1, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string v2, "netd"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/IpSecManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string v2, "ipsec"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/TestNetworkManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string/jumbo v2, "test_network"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/location/CountryDetector;

    new-instance v1, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string v2, "country_detector"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string v2, "device_policy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string v2, "download"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/BatteryManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string v2, "batterymanager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/nfc/NfcManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string v2, "nfc"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/DropBoxManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string v2, "dropbox"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/input/InputManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string v2, "input"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string v2, "display"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v2, "color_display"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v2, "input_method"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/textservice/TextServicesManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string/jumbo v2, "textservices"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string v2, "keyguard"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/LayoutInflater;

    new-instance v1, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string v2, "layout_inflater"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string v2, "location"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/NetworkPolicyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string v2, "netpolicy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v2, "notification"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/nsd/NsdManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string/jumbo v2, "servicediscovery"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/PowerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string/jumbo v2, "power"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/RecoverySystem;

    new-instance v1, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string/jumbo v2, "recovery"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/SearchManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/SensorManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v2, "sensor"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v2, "sensor_privacy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/StatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v2, "stats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/StatusBarManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v2, "statusbar"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/storage/StorageManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v2, "storage"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/usage/StorageStatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v2, "storagestats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/SystemUpdateManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v2, "system_update"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v2, "phone"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telephony/SubscriptionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telephony/ims/RcsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string v2, "ircs"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telephony/CarrierConfigManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string v2, "carrier_config"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telecom/TelecomManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v2, "telecom"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string v2, "euicc"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/telephony/euicc/EuiccCardManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string v2, "euicc_card"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/UiModeManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v2, "uimode"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/usb/UsbManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v2, "usb"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/debug/AdbManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string v2, "adb"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/SerialManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v2, "serial"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/Vibrator;

    new-instance v1, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v2, "vibrator"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/WallpaperManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v2, "wallpaper"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/lowpan/LowpanManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string v2, "lowpan"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v2, "wifi"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v2, "wifip2p"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/aware/WifiAwareManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v2, "wifiaware"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/WifiScanner;

    new-instance v1, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string/jumbo v2, "wifiscanner"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/RttManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v2, "rttmanager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/rtt/WifiRttManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v2, "wifirtt"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/EthernetManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string v2, "ethernet"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v2, "window"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/UserManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string/jumbo v2, "user"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/AppOpsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string v2, "appops"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/gamepad/BsGamePadManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string v2, "bsgamepad"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string v2, "camera"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/pm/LauncherApps;

    new-instance v1, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v2, "launcherapps"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/RestrictionsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string/jumbo v2, "restrictions"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/print/PrintManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string/jumbo v2, "print"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/companion/CompanionDeviceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string v2, "companiondevice"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/ConsumerIrManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string v2, "consumer_ir"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/session/MediaSessionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v2, "media_session"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/trust/TrustManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v2, "trust"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string v2, "fingerprint"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/face/FaceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string v2, "face"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/iris/IrisManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string v2, "iris"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string v2, "biometric"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/tv/TvInputManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string/jumbo v2, "tv_input"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/NetworkScoreManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string v2, "network_score"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/usage/UsageStatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v2, "usagestats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/usage/NetworkStatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string v2, "netstats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string v2, "jobscheduler"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string/jumbo v2, "persistent_data_block"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/service/oemlock/OemLockManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string v2, "oem_lock"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/projection/MediaProjectionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string v2, "media_projection"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string v2, "appwidget"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/midi/MidiManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string v2, "midi"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/radio/RadioManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string v2, "broadcastradio"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/HardwarePropertiesManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string v2, "hardware_properties"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string/jumbo v2, "soundtrigger"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/pm/ShortcutManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string/jumbo v2, "shortcut"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/om/OverlayManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v2, "overlay"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/NetworkWatchlistManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string v2, "network_watchlist"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/health/SystemHealthManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string/jumbo v2, "systemhealth"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/location/ContextHubManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string v2, "contexthub"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/IncidentManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string v2, "incident"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/BugreportManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string v2, "bugreport"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/autofill/AutofillManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/prediction/AppPredictionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string v2, "app_prediction"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string v2, "content_suggestions"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/VrManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string/jumbo v2, "vrmanager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/timezone/RulesManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string/jumbo v2, "timezone"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/pm/CrossProfileApps;

    new-instance v1, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string v2, "crossprofileapps"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/slice/SliceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string/jumbo v2, "slice"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/DeviceIdleManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string v2, "deviceidle"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/timedetector/TimeDetector;

    new-instance v1, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string/jumbo v2, "time_detector"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/permission/PermissionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string/jumbo v2, "permission"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/permission/PermissionControllerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string/jumbo v2, "permission_controller"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/role/RoleManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v2, "role"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/app/role/RoleControllerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v2, "role_controller"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/content/rollback/RollbackManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string/jumbo v2, "rollback"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/os/image/DynamicSystemManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string v2, "dynamic_system"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Landroid/app/ContextImplInjector;->registerMiuiServices()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "SystemServiceRegistry"

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
