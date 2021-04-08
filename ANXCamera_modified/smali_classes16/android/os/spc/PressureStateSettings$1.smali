.class Landroid/os/spc/PressureStateSettings$1;
.super Landroid/database/ContentObserver;
.source "PressureStateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/spc/PressureStateSettings;->registerCloudObserver(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v0, "proc_cleaner_settings"

    const-string/jumbo v3, "pc_reserve_memory_amount"

    const-string/jumbo v4, "pc_reserve_memory_min_available"

    const-string/jumbo v5, "pc_distant_app_time"

    const-string/jumbo v6, "pc_recent_fg_time"

    const-string/jumbo v7, "interested_proc_pss"

    const-string/jumbo v8, "pc_min_interval"

    const-string/jumbo v9, "pc_memlvl2_pss_limit"

    const-string/jumbo v10, "pc_memlvl1_pss_limit"

    const-string/jumbo v11, "pc_mem_available"

    const-string/jumbo v12, "pc_mem_full_threshold"

    const-string/jumbo v13, "pc_enabled"

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, -0x2

    if-eqz v14, :cond_1

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v13, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_ENABLED:Z

    goto/16 :goto_0

    :cond_1
    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v12, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->TRIGGER_PROC_CLEAN_PSI_MEM_FULL_MS:J

    goto/16 :goto_0

    :cond_2
    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->MEMORY_AVAILABLE_THRESHOLD_KB:J

    goto/16 :goto_0

    :cond_3
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v10, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL1_PSS_LIMIT_KB:J

    goto/16 :goto_0

    :cond_4
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->PROC_MEM_LVL2_PSS_LIMIT_KB:J

    goto/16 :goto_0

    :cond_5
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->PROC_CLEAN_MIN_INTERVAL_MS:J

    goto/16 :goto_0

    :cond_6
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->INTERESTED_PROC_MIN_PSS_KB:J

    goto/16 :goto_0

    :cond_7
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->RECENT_FOREGROUND_APP_TIME_MILLIS:J

    goto :goto_0

    :cond_8
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->DISTANT_APP_TIME_TIME_MILLIS:J

    goto :goto_0

    :cond_9
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_MIN_AVAILABLE_KB:J

    goto :goto_0

    :cond_a
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v3

    sput-wide v3, Landroid/os/spc/PressureStateSettings;->RESERVE_MEMORY_AMOUNT_KB:J

    goto :goto_0

    :cond_b
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Landroid/os/spc/PressureStateSettings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/spc/PressureStateSettings;->PROCESS_CLEANER_SETTINGS:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_CONTROL_ENABLED:Z

    :goto_1
    return-void
.end method
