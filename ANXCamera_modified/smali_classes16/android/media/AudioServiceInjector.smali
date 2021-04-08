.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# static fields
.field public static final ACTION_KEYCODE_POWER_UP:Ljava/lang/String; = "android.intent.action.KEYCODE_POWER_UP"

.field public static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "miui.intent.action.VOLUME_BOOST"

.field private static final ALL_RANDOM:Ljava/lang/String; = "AllFilesRandom"

.field private static final AUDIO_VISUAL_ENABLED:I = 0x1

.field public static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field public static final EXTRA_BOOST_STATE:Ljava/lang/String; = "volume_boost_state"

.field private static final FOUR_TIME_ZONES:Ljava/lang/String; = "DayZones"

.field private static final IS_LITHIUM:Ljava/lang/String; = "lithium"

.field private static final IS_SCORPIO:Ljava/lang/String; = "scorpio"

.field private static MAX_SHOW_NOTIFICATION_TIMES:I = 0x0

.field private static final MIUI_NATURE_SOUND_COLUMN_MAX:I = 0x4

.field private static final MIUI_NATURE_SOUND_NUMBER:[[I

.field private static final MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_ROW_MAX:I = 0x3

.field private static final MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

.field private static final MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

.field private static final MUTE_TIME_INTERVAL_INDEX:I = 0x3

.field private static NOTIFICATION_ID:I = 0x0

.field private static final ONE_TIME_ZONE:Ljava/lang/String; = "AllDay"

.field private static final RANDOM_PLAYBACK_BOUND:I = 0x1

.field private static final RANDOM_SOUND_DEFALTE_URI:Ljava/lang/String; = "file:///system/media/audio/ui/notice_audition.ogg"

.field private static final RANDOM_SOUND_NUM_INDEX:I = 0x0

.field private static RANDOM_SOUND_PREFIX:Ljava/lang/String; = null

.field private static SEQUENCE_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final SEQ_SOUND_NUM_INDEX:I = 0x1

.field private static final SEQ_TIME_INTERVAL_INDEX:I = 0x2

.field private static final SOUND_SUFFIX:Ljava/lang/String; = ".ogg"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TIME_ZONES_RANDOM:Ljava/lang/String; = "TimeZonesRandom"

.field private static final TIME_ZONE_BOUND_CLOCK_EIGHT:I = 0x8

.field private static final TIME_ZONE_BOUND_CLOCK_FOURTEEN:I = 0xe

.field private static final TIME_ZONE_BOUND_CLOCK_NINETEEN:I = 0x13

.field private static final TIME_ZONE_BOUND_CLOCK_TWELVE:I = 0xc

.field private static final TIME_ZONE_BOUND_CLOCK_ZERO:I = 0x0

.field private static final TWO_TIME_ZONES:Ljava/lang/String; = "DayNight"

.field private static final availableDevice:I = 0x8c

.field private static final mContentResolverParameters:[Ljava/lang/String;

.field private static final mContentResolverTypes:[Ljava/lang/String;

.field private static mFirstUpdateMode:Z

.field private static mHasPlayedNormalNotification:Z

.field private static mInternationalLocation:Z

.field private static mLastIntentPowerKeyOrScreenOffTimeMs:J

.field private static mLastNotificationTimeMs:J

.field private static final mLockRandomStatusUpdate:Ljava/lang/Object;

.field private static final mMusicWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNatureSoundString:[Ljava/lang/String;

.field private static mNotificationRandomSound:Z

.field public static mOriginalIndexWhenSetStreamVolume:I

.field private static mPowerKeyReceived:Z

.field private static mPreviousNatureSoundIndex:I

.field private static mRandomSound:[Z

.field private static mRandomSoundAtLeastOne:Z

.field private static mScreenOffReceived:Z

.field private static mSeqIndex:I

.field private static mShowNotificationTimes:I

.field private static mSunriseAndSunsetUpdate:Z

.field private static mSunriseTimeHours:I

.field private static mSunriseTimeMins:I

.field private static mSunsetTimeHours:I

.field private static mSunsetTimeMins:I

.field private static mTimeAndSoundNumParameters:[I

.field private static mTimeZone:Ljava/lang/String;

.field private static mTimeZoneforUpdate:Ljava/lang/String;

.field private static mTypes:Ljava/util/HashMap;

.field private static sAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final startAudioVisualRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    const-string v0, "file:///system/media/audio/ui/notification_beep_sound_"

    sput-object v0, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    const-string v0, "file:///system/media/audio/ui/notification_beep_soundseq_"

    sput-object v0, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    const-string/jumbo v0, "notification_sound"

    const-string/jumbo v1, "sms_received_sound"

    const-string/jumbo v2, "sms_received_sound_slot_1"

    const-string/jumbo v3, "sms_received_sound_slot_2"

    const-string v4, "calendar_alert"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    const-string/jumbo v0, "random_note_mode_random_sound_number"

    const-string/jumbo v1, "random_note_mode_sequence_sound_number"

    const-string/jumbo v2, "random_note_mode_sequence_time_interval_ms"

    const-string/jumbo v3, "random_note_mode_mute_time_interval_ms"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    const/4 v0, 0x0

    sput v0, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sput v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    const/4 v1, 0x1

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v2, 0x5

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    sput-object v3, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    sput-object v4, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    new-instance v4, Landroid/media/AudioServiceInjector$1;

    invoke-direct {v4}, Landroid/media/AudioServiceInjector$1;-><init>()V

    sput-object v4, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    const-string v4, "file:///system/media/audio/ui/WaterDrop_preview.ogg"

    const-string v5, "file:///system/media/audio/ui/BirdCicada_preview.ogg"

    const-string v6, "file:///system/media/audio/ui/WindRain_preview.ogg"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    aget-object v5, v4, v0

    aput-object v5, v2, v0

    aget-object v5, v4, v0

    aput-object v5, v2, v1

    aget-object v5, v4, v0

    const/4 v6, 0x2

    aput-object v5, v2, v6

    aget-object v5, v4, v0

    const/4 v7, 0x3

    aput-object v5, v2, v7

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    sput-object v2, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    const-string v2, "file:///system/media/audio/ui/WaterDropNotification"

    const-string v4, "file:///system/media/audio/ui/BirdCicadaNotification"

    const-string v5, "file:///system/media/audio/ui/WindRainNotification"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    sput v0, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    const-string v2, "Day"

    const-string v4, "Midday"

    const-string v5, "Evening"

    const-string v8, "Night"

    filled-new-array {v2, v4, v5, v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const-string v2, "AllDay"

    const-string v4, "DayNight"

    const-string v5, "DayZones"

    filled-new-array {v2, v4, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    const-string v2, "TimeZonesRandom"

    const-string v4, "AllFilesRandom"

    filled-new-array {v2, v2, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v4, v2, v0

    sput-object v4, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    new-array v4, v7, [[I

    new-array v5, v3, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v0

    new-array v5, v3, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v1

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    aput-object v3, v4, v6

    sput-object v4, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    sput v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    sput v0, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    sput v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    sput v0, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    aget-object v2, v2, v0

    sput-object v2, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    sput-boolean v1, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.changba"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.karaoke"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const-string v7, "com.netease.cloudmusic"

    const-string v8, "com.tencent.qqmusic"

    const-string v9, "com.iloen.melon"

    const-string/jumbo v10, "mp3.player.freemusic"

    const-string v11, "com.kugou.android"

    const-string v12, "cn.kuwo.player"

    const-string v13, "com.google.android.apps.youtube.music"

    const-string v14, "com.tencent.blackkey"

    const-string v15, "cmccwm.mobilemusic"

    const-string v16, "com.migu.music.mini"

    const-string v17, "com.ting.mp3.android"

    const-string v18, "com.blueocean.musicplayer"

    const-string v19, "com.tencent.ibg.joox"

    const-string v20, "com.kugou.android.ringtone"

    const-string v21, "com.shoujiduoduo.dj"

    const-string v22, "com.spotify.music"

    const-string v23, "com.shoujiduoduo.ringtone"

    const-string v24, "com.hiby.music"

    const-string v25, "com.miui.player"

    const-string v26, "com.google.android.music"

    const-string v27, "com.tencent.ibg.joox"

    const-string v28, "com.skysoft.kkbox.android"

    const-string v29, "com.sofeh.android.musicstudio3"

    const-string v30, "com.gamestar.perfectpiano"

    const-string v31, "com.opalastudios.pads"

    const-string v32, "com.magix.android.mmjam"

    const-string v33, "com.musicplayer.playermusic"

    const-string v34, "com.gaana"

    const-string v35, "com.maxmpz.audioplayer"

    const-string v36, "com.melodis.midomiMusicIdentifier.freemium"

    const-string v37, "com.mixvibes.remixlive"

    const-string v38, "com.starmakerinteractive.starmaker"

    const-string v39, "com.smule.singandroid"

    const-string v40, "com.djit.apps.stream"

    const-string/jumbo v41, "tunein.service"

    const-string v42, "com.shazam.android"

    const-string v43, "com.jangomobile.android"

    const-string v44, "com.pandoralite"

    const-string v45, "com.tube.hqmusic"

    const-string v46, "com.amazon.avod.thirdpartyclient"

    const-string v47, "com.atmusic.app"

    const-string v48, "com.rubycell.pianisthd"

    const-string v49, "com.agminstruments.drumpadmachine"

    const-string v50, "com.playermusic.musicplayerapp"

    const-string v51, "com.famousbluemedia.piano"

    const-string v52, "com.apple.android.music"

    const-string/jumbo v53, "mb32r.musica.gratis.music.player.free.download"

    const-string v54, "com.famousbluemedia.yokee"

    const-string v55, "com.ss.android.ugc.trill"

    filled-new-array/range {v7 .. v55}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    new-instance v0, Landroid/media/AudioServiceInjector$2;

    invoke-direct {v0}, Landroid/media/AudioServiceInjector$2;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    sput v6, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    const v0, 0x6d4156

    sput v0, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0xa
        0x1
        0x3e8
        0x2710
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x3
        0x5
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xc
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultStreamVolume([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    aput v1, p0, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static adjustHiFiVolume(ILandroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static adjustMaxStreamVolume([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xf

    aput v1, p0, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static adjustMinStreamVolume([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    aput v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static adjustVolumeSetting()V
    .locals 12

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_use_150_level"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    const-string/jumbo v5, "volume_music_speaker"

    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v6, v6, v4

    const-string/jumbo v7, "volume_music_headset"

    invoke-static {v1, v7, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    sget-object v8, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v8, v8, v4

    const-string/jumbo v9, "volume_music_usb_headset"

    invoke-static {v1, v9, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    sget-object v10, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v4, v10, v4

    const-string/jumbo v10, "volume_music_bt_a2dp"

    invoke-static {v1, v10, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    mul-int/lit8 v11, v2, 0xa

    invoke-static {v1, v5, v11, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit8 v5, v6, 0xa

    invoke-static {v1, v7, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit8 v5, v8, 0xa

    invoke-static {v1, v9, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    mul-int/lit8 v5, v4, 0xa

    invoke-static {v1, v10, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public static broadcastRecorderState(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastRecorderState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->supportKaraokeMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static calculateStreamMaxVolume(IILandroid/content/Context;)I
    .locals 2

    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    if-ne v1, p0, :cond_1

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    :cond_1
    return v0
.end method

.method public static calculateStreamVolume(IILandroid/content/Context;)I
    .locals 2

    add-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static checkForRingerModeChange(Landroid/content/Context;III)I
    .locals 1

    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static checkMusicStream([Ljava/lang/Object;Landroid/content/Context;II)V
    .locals 0

    return-void
.end method

.method public static checkSunriseAndSunsetTimeUpdate(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    sget-object v0, Landroid/media/AudioServiceInjector;->mTimeZoneforUpdate:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateSunriseAndSunsetTime(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    goto :goto_0

    :cond_0
    sput-boolean v1, Landroid/media/AudioServiceInjector;->mSunriseAndSunsetUpdate:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static createActualUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioServiceInjector;->querySerialsIndex(I)I

    move-result v4

    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->querySoundSourcesNumber(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x1

    if-le v0, v7, :cond_2

    :cond_0
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    sget v8, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    if-eq v8, v2, :cond_0

    sput v2, Landroid/media/AudioServiceInjector;->mPreviousNatureSoundIndex:I

    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v7, v7, v4

    const-string v8, "TimeZonesRandom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne v0, v7, :cond_3

    const/4 v2, 0x1

    sget-object v7, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const-string v7, ".ogg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createActualUriForNatureSound: FilePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AudioService"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static createSeqUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioServiceInjector;->querySerialsIndex(I)I

    move-result v2

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PREFIX:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Seq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "AllDay"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "DayNight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v9, "DayZones"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x2

    goto :goto_2

    :cond_5
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x3

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    :goto_2
    sget-object v6, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_SEQ_TYPE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createActualUriForNatureSound: FilePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getActiveStreamType(ZIIIZ)I
    .locals 6

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/media/AudioServiceInjector;->getActiveStreamType(ZIIIZZ)I

    move-result v0

    return v0
.end method

.method public static getActiveStreamType(ZIIIZZ)I
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v2

    const-string/jumbo v3, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_VOICEASSIST"

    const/high16 v5, -0x80000000

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x3

    const-string v12, "AudioService"

    const/4 v13, 0x1

    move/from16 v14, p1

    if-eq v14, v13, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {v8}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v11, :cond_1

    return v6

    :cond_1
    return v8

    :cond_2
    if-eqz p5, :cond_4

    if-eq v2, v7, :cond_3

    invoke-static {v2, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v11, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v11

    :cond_3
    return v2

    :cond_4
    if-eq v2, v7, :cond_6

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz p4, :cond_5

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    const-string/jumbo v13, "getActiveStreamType: Forcing STREAM_RING stream active"

    const-string/jumbo v15, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    if-ne v0, v5, :cond_c

    invoke-static {v9, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p4, :cond_7

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v9

    :cond_8
    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p4, :cond_9

    invoke-static {v12, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v10

    :cond_a
    if-eqz p4, :cond_b

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v11

    :cond_c
    nop

    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v16

    if-eqz v16, :cond_e

    if-eqz p4, :cond_d

    invoke-static {v12, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v10

    :cond_e
    invoke-static {v9, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v15

    if-eqz v15, :cond_10

    if-eqz p4, :cond_f

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v9

    :cond_10
    :goto_0
    if-eqz p0, :cond_14

    invoke-static {v8}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v11, :cond_12

    if-eqz p4, :cond_11

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v6

    :cond_12
    if-eqz p4, :cond_13

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v8

    :cond_14
    if-eqz p5, :cond_16

    if-eq v2, v7, :cond_15

    invoke-static {v2, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v11, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_15

    return v11

    :cond_15
    return v2

    :cond_16
    invoke-static {v10, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    const-string/jumbo v8, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    if-eqz v6, :cond_18

    if-eqz p4, :cond_17

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return v10

    :cond_18
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    const-string/jumbo v13, "getActiveStreamType: Forcing STREAM_RING"

    if-eqz v6, :cond_1a

    if-eqz p4, :cond_19

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v9

    :cond_1a
    if-eq v2, v7, :cond_1c

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_1c

    if-eqz p4, :cond_1b

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return v2

    :cond_1c
    if-ne v0, v5, :cond_22

    invoke-static {v10, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz p4, :cond_1d

    invoke-static {v12, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v10

    :cond_1e
    invoke-static {v9, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_20

    if-eqz p4, :cond_1f

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return v9

    :cond_20
    if-eqz p4, :cond_21

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v11

    :cond_22
    if-eqz p4, :cond_23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return v0
.end method

.method public static getDefaultVolStreamNoPlayback(I)I
    .locals 1

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private static getIndexForType(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getIndexForType() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getMiuiNatureSoundStatus(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static getNotificationUri()Ljava/lang/String;
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    sget-boolean v3, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_5

    const/4 v3, 0x1

    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v10, v6

    if-eqz v6, :cond_2

    sub-long v6, v0, v10

    sget-object v12, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v12, v5

    int-to-long v13, v5

    cmp-long v5, v6, v13

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-long v5, v0, v10

    aget v4, v12, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_1

    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_3

    sput-boolean v9, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    sget-boolean v4, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    const-string/jumbo v2, "normal_notification"

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_4
    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x0

    const/4 v10, 0x0

    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_8

    sub-long v6, v0, v11

    sget-object v13, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v13, v5

    int-to-long v14, v5

    cmp-long v5, v6, v14

    if-lez v5, :cond_6

    goto :goto_2

    :cond_6
    sub-long v5, v0, v11

    aget v4, v13, v4

    int-to-long v11, v4

    cmp-long v4, v5, v11

    if-gtz v4, :cond_7

    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v13, v9

    if-ge v4, v5, :cond_9

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_9
    :goto_3
    const-string v4, ".ogg"

    if-eqz v3, :cond_a

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_4

    :cond_a
    if-eqz v10, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_5

    :cond_b
    :goto_4
    nop

    :goto_5
    return-object v2
.end method

.method public static getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioServiceInjector;->playRandomSound(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_5

    const/4 v3, 0x1

    sget-wide v10, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v7, v10, v7

    if-eqz v7, :cond_2

    sub-long v7, v0, v10

    sget-object v12, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v12, v5

    int-to-long v13, v5

    cmp-long v5, v7, v13

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-long v5, v0, v10

    aget v4, v12, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_1

    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v12, v9

    if-ge v4, v5, :cond_3

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    const-string/jumbo v2, "normal_notification"

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_4
    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    const/4 v10, 0x0

    sget-wide v11, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    cmp-long v7, v11, v7

    if-eqz v7, :cond_8

    sub-long v7, v0, v11

    sget-object v13, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v5, v13, v5

    int-to-long v14, v5

    cmp-long v5, v7, v14

    if-lez v5, :cond_6

    goto :goto_2

    :cond_6
    sub-long v5, v0, v11

    aget v4, v13, v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gtz v4, :cond_7

    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    aget v5, v13, v9

    if-ge v4, v5, :cond_9

    add-int/2addr v4, v9

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    sget v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v4, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x1

    sput v6, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->createActualUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_4

    :cond_a
    if-eqz v10, :cond_b

    invoke-static/range {p0 .. p0}, Landroid/media/AudioServiceInjector;->createSeqUriForNatureSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_b
    :goto_4
    return-object v2
.end method

.method public static getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .locals 7

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    or-int/lit8 p0, p0, 0x26

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x3

    const-string/jumbo v5, "mute_music_at_silent"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/lit8 p0, p0, -0x9

    if-ne v1, v4, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    or-int/2addr p0, v5

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mute_voiceassit_at_silent"

    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    shl-int v5, v4, v0

    not-int v5, v5

    and-int/2addr p0, v5

    if-ne v2, v4, :cond_2

    shl-int v5, v4, v0

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    or-int/2addr p0, v5

    :cond_3
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_5

    const/16 p0, 0x100

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    :goto_2
    or-int/2addr p0, v3

    if-lez v0, :cond_5

    shl-int v1, v4, v0

    or-int/2addr p0, v1

    :cond_5
    return p0
.end method

.method public static getVoiceAssistNum()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "STREAM_VOICEASSIST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler;->handleAudioStatusChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static handleModeChanged(Landroid/content/Context;II)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "usage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static handleSetForceUse(Landroid/content/Context;IILjava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->handleSetForceUse(IILjava/lang/String;)V

    return-void
.end method

.method public static handleSpeakerChanged(Landroid/content/Context;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None thiing for handleSpeakerChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static handleZenModeChangedForMusic(Ljava/lang/Object;Landroid/content/Context;IIII[I)V
    .locals 2

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_3

    if-eq p3, p2, :cond_3

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on change zenmode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static handleZenModeVolumeChanged(Landroid/content/Context;III)V
    .locals 7

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "volume_music_before_mute"

    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    add-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, -0x2

    invoke-static {v4, v0, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static isActiveForReal(ZI)Z
    .locals 2

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    invoke-static {p1, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0
.end method

.method public static isAppCalledInCall(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    nop

    const-string/jumbo v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "called from app when in call: pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private static isLithium()Z
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOnlyAdjustVolume(I)Z
    .locals 1

    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOnlyAdjustVolume(III)Z
    .locals 1

    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isScorpio()Z
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXOptMode()Z
    .locals 2

    nop

    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static needEnableVoiceVolumeBoost(IZIIZ)Z
    .locals 4

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const-string/jumbo v2, "ro.vendor.audio.voice.volume.boost"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "manual"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMaxVol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " streamTypeAlias:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " boostEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p4, :cond_1

    return v0

    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    if-eqz p4, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private static onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_8

    const-string/jumbo v6, "setStreamVolumeInt"

    const/16 v7, 0x17

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lt v5, v7, :cond_2

    if-eqz v3, :cond_3

    :try_start_1
    new-array v5, v8, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v11

    const-class v14, Ljava/lang/String;

    aput-object v14, v5, v10

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v5, v11

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    :cond_3
    :goto_0
    if-ne v11, v2, :cond_8

    if-eqz v0, :cond_8

    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v5, :cond_6

    move/from16 v5, p2

    move/from16 v6, p4

    if-lt v5, v6, :cond_7

    move/from16 v14, p4

    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v7, :cond_4

    new-array v7, v8, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "AudioService"

    aput-object v8, v7, v10

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-array v7, v10, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v7, v14, 0x5

    div-int/lit8 v7, v7, 0xa

    sget v8, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    sub-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0xa

    move-object/from16 v15, p6

    :try_start_3
    invoke-static {v15, v8}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :cond_6
    move/from16 v5, p2

    move/from16 v6, p4

    :cond_7
    move-object/from16 v15, p6

    goto :goto_2

    :cond_8
    move/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v15, p6

    :goto_2
    if-eqz v4, :cond_a

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pid:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " Uid:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aget v14, p5, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v7, v8, v10

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_b

    :cond_9
    new-array v7, v10, [Ljava/lang/Object;

    aget v8, p5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_3
    move-object/from16 v15, p6

    :goto_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_c

    :catch_9
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_5
    move-object/from16 v15, p6

    :goto_6
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_b

    :catch_a
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_7
    move-object/from16 v15, p6

    :goto_8
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_b

    :catch_b
    move-exception v0

    move/from16 v5, p2

    move/from16 v6, p4

    :goto_9
    move-object/from16 v15, p6

    :goto_a
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :cond_a
    :goto_b
    nop

    :goto_c
    return-void
.end method

.method private static playRandomSound(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v1, v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static queryCurrentTimeZone()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-boolean v4, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZoneForDomestic(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    if-ltz v0, :cond_1

    if-ge v0, v4, :cond_1

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-lt v0, v4, :cond_2

    if-ge v0, v3, :cond_2

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_0

    :cond_2
    const/16 v4, 0xe

    if-lt v0, v3, :cond_3

    if-ge v0, v4, :cond_3

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    goto :goto_0

    :cond_3
    if-lt v0, v4, :cond_4

    const/16 v3, 0x13

    if-ge v0, v3, :cond_4

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v3, v3, v5

    goto :goto_0

    :cond_4
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    :goto_0
    return-object v3
.end method

.method private static queryCurrentTimeZoneForDomestic(II)Ljava/lang/String;
    .locals 3

    if-ltz p0, :cond_1

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    if-lt p0, v0, :cond_0

    if-ne p0, v0, :cond_1

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    if-ge p1, v0, :cond_1

    :cond_0
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-gt p0, v0, :cond_2

    if-ne p0, v0, :cond_3

    sget v0, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    if-lt p1, v0, :cond_3

    :cond_2
    if-ge p0, v2, :cond_3

    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    if-lt p0, v2, :cond_4

    if-ge p0, v0, :cond_4

    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    if-lt p0, v0, :cond_6

    sget v0, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    if-lt p0, v0, :cond_5

    if-ne p0, v0, :cond_6

    sget v0, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    if-ge p1, v0, :cond_6

    :cond_5
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method private static querySerialsIndex(I)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static querySoundSourcesNumber(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    :try_start_0
    sget-object v8, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    sget-object v8, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_URI:[Ljava/lang/String;

    aget-object v8, v8, v7

    sget-object v9, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->queryCurrentTimeZone()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    const/4 v5, 0x0

    :goto_2
    sget-object v7, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_TIME_ZONE:[Ljava/lang/String;

    array-length v8, v7

    if-ge v5, v8, :cond_3

    aget-object v7, v7, v5

    sget-object v8, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v5, 0x3

    if-ge v0, v5, :cond_5

    const/4 v5, 0x4

    if-ge v1, v5, :cond_5

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_PLAY_STRATEGY:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v7, "TimeZonesRandom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    aget-object v5, v5, v0

    aget v3, v5, v1

    goto :goto_4

    :cond_4
    sget-object v5, Landroid/media/AudioServiceInjector;->MIUI_NATURE_SOUND_NUMBER:[[I

    aget-object v5, v5, v0

    aget v3, v5, v6

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "querySoundSourcesNumber:result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " RowIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ColumnIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mTimeZone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private static restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0xfffffff

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v3, "volume_music"

    const-string/jumbo v4, "volume_music_before_mute"

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int v6, v5, v1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    not-int v6, v5

    and-int/2addr v1, v6

    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/16 v7, 0xa

    const/4 v8, -0x2

    invoke-static {v0, v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    invoke-static {v0, v3, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateMusicStreamVolume(Ljava/lang/Object;)V

    return-void
.end method

.method private static saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0xfffffff

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v3, "volume_music"

    const-string/jumbo v4, "volume_music_before_mute"

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int v6, v5, v1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    not-int v6, v5

    and-int/2addr v1, v6

    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-static {v0, v3, v15, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move v9, v5

    move/from16 v10, p3

    move-object/from16 v11, p4

    move v14, v12

    move-object/from16 v12, p1

    invoke-static/range {v6 .. v12}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    if-eq v14, v15, :cond_2

    const/4 v6, -0x2

    invoke-static {v0, v4, v14, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static sendVolumeBoostBroadcast(ZLandroid/content/Context;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.VOLUME_BOOST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "volume_boost_state"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static setDefaultTimeZoneStatus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultTimeZoneStatus: mInternationalLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    return-void
.end method

.method public static setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .locals 1

    aget v0, p5, p1

    invoke-static {p6, v0, p3, p2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    invoke-static/range {p0 .. p6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    return-void
.end method

.method public static setSunriseAndSunsetTime(IIII)V
    .locals 0

    sput p0, Landroid/media/AudioServiceInjector;->mSunriseTimeHours:I

    sput p2, Landroid/media/AudioServiceInjector;->mSunsetTimeHours:I

    sput p1, Landroid/media/AudioServiceInjector;->mSunriseTimeMins:I

    sput p3, Landroid/media/AudioServiceInjector;->mSunsetTimeMins:I

    return-void
.end method

.method public static setVolumeBoost(ZLandroid/content/Context;)Z
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_volume_boost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v2, "false"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "true"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    xor-int/lit8 v2, p0, 0x1

    invoke-static {v2, p1}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    xor-int/lit8 v2, p0, 0x1

    return v2
.end method

.method public static shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .locals 6

    invoke-static {}, Landroid/media/AudioServiceInjector;->isScorpio()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isLithium()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    move v2, p3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v3, :cond_2

    if-lez v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-ne p1, v4, :cond_3

    if-ne p2, v2, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-nez v3, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v1
.end method

.method public static shouldRun(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "importance is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AudioService"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v7

    :goto_1
    return v4

    :cond_1
    goto :goto_0

    :cond_2
    return v4
.end method

.method public static showNotification(IILandroid/content/Context;)V
    .locals 16

    move-object/from16 v6, p2

    sget v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sget v1, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    if-ge v0, v1, :cond_5

    const/4 v7, 0x2

    move/from16 v8, p1

    if-eq v8, v7, :cond_0

    move/from16 v10, p0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move/from16 v10, p0

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/NotificationManager;

    invoke-virtual {v12}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    sget v13, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    if-ne v5, v13, :cond_2

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MiAudioVisualNotificationTimes"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sget v0, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    sget v3, Landroid/media/AudioServiceInjector;->MAX_SHOW_NOTIFICATION_TIMES:I

    const-string v4, "AudioService"

    const/4 v13, 0x1

    if-ge v0, v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v2, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    add-int/2addr v2, v13

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show MiAudioVisual Notification for pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v14, v0

    const-string v0, "com.miui.misound"

    const-string v1, "com.miui.misound.HeadsetSettingsActivity"

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p2

    move-object v2, v14

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    const-string v3, "MISOUND_NOTIFICATION_ID"

    const-string v4, "MISOUND_NOTIFICATION_NAME"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v12, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x110e00c6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e00c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v6, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x110700c4

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v7, 0x106001c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v7, "sys"

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "miui.targetPkg"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/4 v7, 0x0

    sget v8, Landroid/media/AudioServiceInjector;->NOTIFICATION_ID:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v8, v13, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiAudioVisual notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v13, [Ljava/lang/Object;

    sget v3, Landroid/media/AudioServiceInjector;->mShowNotificationTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "already show %d times"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move/from16 v10, p0

    :goto_1
    return-void
.end method

.method public static startAudioVisualIfsatisfiedWith(Ljava/lang/String;Ljava/util/List;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter startAudioVisual with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "audio_visual_screen_lock_on"

    const/4 v5, -0x2

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    return-void

    :cond_0
    const-string v2, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v4, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    sget-object v2, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-boolean v3, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    return-void

    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v4, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    :cond_2
    sget-boolean v2, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v2, v4, v6

    if-gez v2, :cond_5

    const-string v2, "enter start AudioVisual"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/media/AudioServiceInjector;->mMusicWhiteList:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.xiaomi.miaudiovisual"

    invoke-static {v7, v0}, Landroid/media/AudioServiceInjector;->shouldRun(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "playback packagename is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/AudioServiceInjector;->startAudioVisualRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1f4

    invoke-virtual {p2, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    sput-boolean v3, Landroid/media/AudioServiceInjector;->mPowerKeyReceived:Z

    sput-boolean v3, Landroid/media/AudioServiceInjector;->mScreenOffReceived:Z

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/media/AudioServiceInjector;->mLastIntentPowerKeyOrScreenOffTimeMs:J

    return-void
.end method

.method public static supportKaraokeMode(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/media/AudioServiceInjector;->sAppList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static updateMusicStreamVolume(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    const-string/jumbo v1, "reloadMusicVolume"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public static updateNotificationMode(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/media/AudioServiceInjector;->mLockRandomStatusUpdate:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    invoke-static {v1}, Landroid/media/AudioServiceInjector;->getMiuiNatureSoundStatus(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v5

    if-eq v0, v6, :cond_0

    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aput-boolean v0, v6, v5

    sput v4, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v5

    if-ne v6, v7, :cond_0

    sget-boolean v6, Landroid/media/AudioServiceInjector;->mInternationalLocation:Z

    if-nez v6, :cond_0

    sget-boolean v6, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    if-nez v6, :cond_0

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateSunriseAndSunsetTime(Landroid/content/Context;)V

    :cond_0
    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v5

    if-ne v6, v7, :cond_1

    sget-object v6, Landroid/media/AudioServiceInjector;->mNatureSoundString:[Ljava/lang/String;

    aput-object v1, v6, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v4, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    move v5, v4

    :goto_1
    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_4

    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v5

    if-ne v6, v7, :cond_3

    sput-boolean v7, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNotificationMode: mRandomSoundAtLeastOne="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Landroid/media/AudioServiceInjector;->mRandomSoundAtLeastOne:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    if-ne v3, v7, :cond_5

    sput-boolean v4, Landroid/media/AudioServiceInjector;->mFirstUpdateMode:Z

    :cond_5
    const/4 v3, -0x1

    move v5, v4

    :goto_3
    :try_start_1
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_7

    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v2, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    move v3, v6

    if-eqz v3, :cond_6

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v5

    if-eq v3, v6, :cond_6

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aput v3, v6, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    goto :goto_4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get random notification settings provider value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AudioService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotificationMode():\n mRandomSound[]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n mTimeAndSoundNumParameters[]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static updateSunriseAndSunsetTime(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AudioService"

    const-string/jumbo v1, "updateSunriseAndSunsetTime sendBroadcast!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.media.update.sunrise.sunset.time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static wasStreamActiveRecently(II)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
