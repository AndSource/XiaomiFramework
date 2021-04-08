.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .locals 2

    nop

    nop

    xor-int/lit8 v0, p0, 0x1

    const/16 v1, 0x1c

    invoke-virtual {p2, v1, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/4 v0, 0x3

    nop

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {p2, v0, p1, v1, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVIPMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    nop

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    return-void
.end method

.method public static getConditionId(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    :goto_0
    return-object v1
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .locals 5

    nop

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .locals 4

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "quiet_mode_enable"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public static isRepeatedCallEnable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .locals 2

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .locals 6

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    const-string/jumbo v3, "quiet_mode_enable"

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p0, v4, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    invoke-static {p0, v5, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void
.end method

.method public static setRepeatedCallEnable(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSilenceMode mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static setZenMode(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 12

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_2

    if-ne p1, v2, :cond_2

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "forever"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v11, Landroid/service/notification/Condition;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, v11

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object p2, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_3
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "silence_DND"

    const-string v7, "0"

    invoke-static {v6, v3, v7, v4, v5}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "miui_manual"

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .locals 6

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, -0x3

    :goto_0
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, -0x9

    :goto_1
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v1, v1, -0x41

    :goto_2
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v1, v1, -0x81

    :goto_3
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v1, v1, -0x21

    :goto_4
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x4

    goto :goto_5

    :cond_5
    and-int/lit8 v1, v1, -0x5

    :goto_5
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_6

    or-int/lit8 v1, v1, 0x10

    goto :goto_6

    :cond_6
    and-int/lit8 v1, v1, -0x11

    :goto_6
    new-instance v2, Landroid/app/NotificationManager$Policy;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object v0, v2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    const/4 v2, 0x1

    return v2
.end method

.method public static startCountDownSilenceMode(Landroid/content/Context;II)V
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    :cond_0
    nop

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .locals 10

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v1, "com.android.cellbroadcastreceiver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    const-string v4, "android"

    const-string v5, "com.android.server.telecom"

    filled-new-array {v3, v4, v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    const/4 v6, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v9, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v9, :cond_3

    iget-boolean v9, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :cond_3
    :goto_0
    move v7, v8

    nop

    :goto_1
    const/4 v8, 0x6

    if-eqz v7, :cond_4

    move-object v9, v1

    goto :goto_2

    :cond_4
    move-object v9, v2

    :goto_2
    invoke-static {v5, v8, v0, v9}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    const/4 v8, 0x5

    if-eqz v7, :cond_5

    move-object v9, v1

    goto :goto_3

    :cond_5
    move-object v9, v2

    :goto_3
    invoke-static {v6, v8, v0, v9}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    return-void
.end method
