.class public Landroid/os/spc/PressureStateSettings;
.super Ljava/lang/Object;
.source "PressureStateSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;
    }
.end annotation


# static fields
.field public static final COMPACTOR_RECLAIM_ALL:I = 0x2

.field public static final COMPACTOR_RECLAIM_CACHE:I = 0x1

.field public static COMPACT_RECENTLY_THRESHOLD_MS:J = 0x0L

.field public static final CONFIG_DISTANT_APP_TIME:Ljava/lang/String; = "pc_distant_app_time"

.field public static final CONFIG_INTERESTED_PROC_MIN_PSS:Ljava/lang/String; = "interested_proc_pss"

.field public static final CONFIG_MEMORY_AVAILABLE_THRESHOLD:Ljava/lang/String; = "pc_mem_available"

.field public static final CONFIG_PC_ENABLED:Ljava/lang/String; = "pc_enabled"

.field public static final CONFIG_PROCESS_CLEANER_SETTINGS:Ljava/lang/String; = "proc_cleaner_settings"

.field public static final CONFIG_PROC_CLEAN_MIN_INTERVAL:Ljava/lang/String; = "pc_min_interval"

.field public static final CONFIG_PROC_MEM_LVL1_PSS_LIMIT:Ljava/lang/String; = "pc_memlvl1_pss_limit"

.field public static final CONFIG_PROC_MEM_LVL2_PSS_LIMIT:Ljava/lang/String; = "pc_memlvl2_pss_limit"

.field public static final CONFIG_RECENT_FG_APP_TIME:Ljava/lang/String; = "pc_recent_fg_time"

.field public static final CONFIG_RESERVE_MEMORY_AMOUNT_KB:Ljava/lang/String; = "pc_reserve_memory_amount"

.field public static final CONFIG_RESERVE_MEMORY_MIN_AVAILABLE:Ljava/lang/String; = "pc_reserve_memory_min_available"

.field public static final CONFIG_TRIGGER_PROC_CLEAN_PSI_MEM_FULL:Ljava/lang/String; = "pc_mem_full_threshold"

.field public static final DEBUG_ALL:Z

.field public static final DISABLE_APP_COMPACT_FOREGROUND_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static DISTANT_APP_TIME_TIME_MILLIS:J = 0x0L

.field public static INTERESTED_PROC_MIN_PSS_KB:J = 0x0L

.field public static MEMORY_AVAILABLE_THRESHOLD_KB:J = 0x0L

.field public static final MEM_FULL_PRESSURE_STATE_KEY:I = 0x1

.field public static final MEM_FULL_PRESSURE_THRESHOLD1_MS:J

.field public static MEM_PRESSURE_CONTROL_ENABLED:Z = false

.field public static final MEM_PRESSURE_WINDOW_NS:J

.field public static final MEM_SOME_PRESSURE_THRESHOLD1_MS:J

.field public static MIN_RECLAIM_MEMORY_THRESHOLD_KB:J = 0x0L

.field private static final PRESSURE_CONTROL_RECLAIM_MIN_INTERVAL:Ljava/lang/String; = "persist.sys.spc.action_min_interval"

.field private static final PRESSURE_CONTROL_SWAP_USAGE_LIMIT:Ljava/lang/String; = "persist.sys.spc.swap_usage_limit"

.field private static PRESSURE_STATES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/spc/PressureState;",
            ">;"
        }
    .end annotation
.end field

.field public static PROCESS_CLEANER_ENABLED:Z = false

.field public static PROCESS_CLEANER_SETTINGS:Ljava/lang/String; = null

.field public static final PROC_CLEAN_INTERVAL_MAX_SCALE:I = 0x5

.field public static PROC_CLEAN_MIN_INTERVAL_MS:J = 0x0L

.field public static PROC_MEM_LVL1_PSS_LIMIT_KB:J = 0x0L

.field public static PROC_MEM_LVL2_PSS_LIMIT_KB:J = 0x0L

.field private static final PROPERTY_CONFIG_PREFIX:Ljava/lang/String; = "persist.sys.spc."

.field public static RECENT_FOREGROUND_APP_TIME_MILLIS:J = 0x0L

.field public static final RECENT_STARTED_APP_THRESHOLD_MS:J = 0x927c0L

.field public static final RECLAIM_MIN_INTERVAL:J

.field public static RESERVE_MEMORY_AMOUNT_KB:J = 0x0L

.field public static RESERVE_MEMORY_MIN_AVAILABLE_KB:J = 0x0L

.field public static final SKIP_APP_COMPACT_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWAP_USAGE_RATE_LIMIT:D

.field private static final SYSTEM_MEM_PRESSURE_CONTROL_ENABLED:Ljava/lang/String; = "persist.sys.spc.enabled"

.field private static final SYSTEM_PRESSURE_CONTROL_DEBUG_ALL:Ljava/lang/String; = "persist.sys.spc.debug_all"

.field private static final SYSTEM_PRESSURE_CONTROL_MEM_FULL_PRESSURE_THRESHOLD_1:Ljava/lang/String; = "persist.sys.spc.mem_full_pressure_threshold1"

.field private static final SYSTEM_PRESSURE_CONTROL_MEM_SOME_PRESSURE_THRESHOLD_1:Ljava/lang/String; = "persist.sys.spc.mem_some_pressure_threshold1"

.field private static final SYSTEM_PRESSURE_CONTROL_WINDOW:Ljava/lang/String; = "persist.sys.spc.window"

.field public static final TAG:Ljava/lang/String; = "SystemPressureControl"

.field public static TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    nop

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.spc.debug_all"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    nop

    const/4 v1, 0x1

    const-string/jumbo v2, "persist.sys.spc.enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_CONTROL_ENABLED:Z

    nop

    const-string/jumbo v2, "persist.sys.spc.window"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_WINDOW_NS:J

    nop

    const-wide/16 v2, 0x64

    const-string/jumbo v4, "persist.sys.spc.mem_some_pressure_threshold1"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->MEM_SOME_PRESSURE_THRESHOLD1_MS:J

    nop

    const-string/jumbo v4, "persist.sys.spc.mem_full_pressure_threshold1"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->MEM_FULL_PRESSURE_THRESHOLD1_MS:J

    nop

    const-string/jumbo v2, "persist.sys.spc.action_min_interval"

    const-wide/16 v3, 0x4e20

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->RECLAIM_MIN_INTERVAL:J

    nop

    const-string/jumbo v2, "persist.sys.spc.swap_usage_limit"

    const-wide/16 v3, 0x5a

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->SWAP_USAGE_RATE_LIMIT:D

    nop

    const-string/jumbo v2, "persist.sys.spc.recent_compact"

    const-wide/16 v3, 0x7530

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->COMPACT_RECENTLY_THRESHOLD_MS:J

    nop

    const-wide/16 v2, 0x2710

    const-string/jumbo v4, "persist.sys.spc.min_reclaim_memory"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->MIN_RECLAIM_MEMORY_THRESHOLD_KB:J

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Landroid/os/spc/PressureStateSettings;->PRESSURE_STATES:Ljava/util/HashMap;

    sget-object v4, Landroid/os/spc/PressureStateSettings;->PRESSURE_STATES:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Landroid/os/spc/PressureState;

    sget-wide v7, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_WINDOW_NS:J

    sget-wide v9, Landroid/os/spc/PressureStateSettings;->MEM_FULL_PRESSURE_THRESHOLD1_MS:J

    const-string v6, "MemFullMonitor"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/os/spc/PressureState;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v4, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Landroid/os/spc/PressureStateSettings;->DISABLE_APP_COMPACT_FOREGROUND_PACKAGES:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Landroid/os/spc/PressureStateSettings;->SKIP_APP_COMPACT_PACKAGES:Ljava/util/List;

    sget-object v1, Landroid/os/spc/PressureStateSettings;->DISABLE_APP_COMPACT_FOREGROUND_PACKAGES:Ljava/util/List;

    const-string v4, "com.android.camera"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/spc/PressureStateSettings;->SKIP_APP_COMPACT_PACKAGES:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "persist.sys.spc.pc_enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    const-string/jumbo v0, "persist.sys.spc.pc_mem_full_threshold"

    const-wide/16 v4, 0x82

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS:J

    const-wide/32 v0, 0x100000

    const-string/jumbo v4, "persist.sys.spc.pc_mem_available"

    invoke-static {v4, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->MEMORY_AVAILABLE_THRESHOLD_KB:J

    const-string/jumbo v4, "persist.sys.spc.pc_memlvl1_pss_limit"

    invoke-static {v4, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL1_PSS_LIMIT_KB:J

    const-wide/32 v0, 0x200000

    const-string/jumbo v4, "persist.sys.spc.pc_memlvl2_pss_limit"

    invoke-static {v4, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL2_PSS_LIMIT_KB:J

    const-string/jumbo v4, "persist.sys.spc.pc_min_interval"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_MIN_INTERVAL_MS:J

    const-string/jumbo v2, "persist.sys.spc.interested_proc_pss"

    const-wide/32 v3, 0x12c00

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->INTERESTED_PROC_MIN_PSS_KB:J

    const-string/jumbo v2, "persist.sys.spc.pc_recent_fg_time"

    const-wide/32 v3, 0x124f80

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->RECENT_FOREGROUND_APP_TIME_MILLIS:J

    const-string/jumbo v2, "persist.sys.spc.pc_distant_app_time"

    const-wide/32 v3, 0x36ee80

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/spc/PressureStateSettings;->DISTANT_APP_TIME_TIME_MILLIS:J

    const-string/jumbo v2, "persist.sys.spc.pc_reserve_memory_min_available"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_MIN_AVAILABLE_KB:J

    const-string/jumbo v0, "persist.sys.spc.pc_reserve_memory_amount"

    const-wide/32 v1, 0x7d000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_AMOUNT_KB:J

    const-string/jumbo v0, "persist.sys.spc.proc_cleaner_settings"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPressureState(I)Landroid/os/spc/PressureState;
    .locals 2

    sget-object v0, Landroid/os/spc/PressureStateSettings;->PRESSURE_STATES:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/spc/PressureState;

    return-object v0
.end method

.method public static getProcessCleanerSetting(Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;)I
    .locals 4

    sget-object v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_SETTINGS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->ordinal()I

    move-result v0

    :try_start_0
    sget-object v2, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_SETTINGS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static registerCloudObserver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    new-instance v0, Landroid/os/spc/PressureStateSettings$1;

    invoke-direct {v0, p1, p0}, Landroid/os/spc/PressureStateSettings$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_mem_full_threshold"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_mem_available"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_memlvl1_pss_limit"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_memlvl2_pss_limit"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_min_interval"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "interested_proc_pss"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_recent_fg_time"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_distant_app_time"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_reserve_memory_min_available"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pc_reserve_memory_amount"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "proc_cleaner_settings"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static updatePressureStateSettings(Landroid/content/Context;)V
    .locals 8

    const-string/jumbo v0, "set RESERVE_MEMORY_MIN_AVAILABLE_KB failed!! "

    const-string v1, "SystemPressureControl"

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_CONTROL_ENABLED:Z

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    return-void

    :cond_0
    sget-boolean v2, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string/jumbo v4, "pc_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    :cond_2
    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_mem_full_threshold"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    nop

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_mem_available"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->MEMORY_AVAILABLE_THRESHOLD_KB:J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set MEMORY_AVAILABLE_THRESHOLD_KB failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->MEMORY_AVAILABLE_THRESHOLD_KB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    nop

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_memlvl1_pss_limit"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL1_PSS_LIMIT_KB:J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set PROC_MEM_LVL1_PSS_LIMIT_KB failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL1_PSS_LIMIT_KB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_memlvl2_pss_limit"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL2_PSS_LIMIT_KB:J
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set CONFIG_PROC_MEM_LVL2_PSS_LIMIT failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL2_PSS_LIMIT_KB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_min_interval"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_MIN_INTERVAL_MS:J
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set PROC_CLEAN_MIN_INTERVAL_MS failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_MIN_INTERVAL_MS:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "interested_proc_pss"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->INTERESTED_PROC_MIN_PSS_KB:J
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set INTERESTED_PROC_MIN_PSS_KB failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->INTERESTED_PROC_MIN_PSS_KB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    nop

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_recent_fg_time"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->RECENT_FOREGROUND_APP_TIME_MILLIS:J
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set RECENT_FOREGROUND_APP_TIME_MILLIS failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->RECENT_FOREGROUND_APP_TIME_MILLIS:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    nop

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_distant_app_time"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->DISTANT_APP_TIME_TIME_MILLIS:J
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set DISTANT_APP_TIME_TIME_MILLIS failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->DISTANT_APP_TIME_TIME_MILLIS:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    nop

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_reserve_memory_min_available"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_MIN_AVAILABLE_KB:J
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_MIN_AVAILABLE_KB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_8
    nop

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pc_reserve_memory_amount"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v4

    sput-wide v4, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_AMOUNT_KB:J
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v4

    sget-boolean v5, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_AMOUNT_KB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_9
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "proc_cleaner_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    sput-object v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_SETTINGS:Ljava/lang/String;

    :cond_d
    return-void
.end method
