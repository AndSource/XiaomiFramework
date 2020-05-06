package com.android.server.power.batterysaver;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.BatterySaverPolicyConfig;
import android.os.Handler;
import android.os.PowerSaveState;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.KeyValueListParser;
import android.util.Slog;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.ConcurrentUtils;
import com.android.server.power.batterysaver.BatterySaverPolicy;
import com.android.server.wm.ActivityTaskManagerService;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class BatterySaverPolicy extends ContentObserver {
    static final boolean DEBUG = false;
    private static final Policy DEFAULT_ADAPTIVE_POLICY = OFF_POLICY;
    private static final Policy DEFAULT_FULL_POLICY;
    private static final String KEY_ACTIVATE_DATASAVER_DISABLED = "datasaver_disabled";
    private static final String KEY_ACTIVATE_FIREWALL_DISABLED = "firewall_disabled";
    private static final String KEY_ADJUST_BRIGHTNESS_DISABLED = "adjust_brightness_disabled";
    private static final String KEY_ADJUST_BRIGHTNESS_FACTOR = "adjust_brightness_factor";
    private static final String KEY_ADVERTISE_IS_ENABLED = "advertise_is_enabled";
    private static final String KEY_ANIMATION_DISABLED = "animation_disabled";
    private static final String KEY_AOD_DISABLED = "aod_disabled";
    private static final String KEY_CPU_FREQ_INTERACTIVE = "cpufreq-i";
    private static final String KEY_CPU_FREQ_NONINTERACTIVE = "cpufreq-n";
    private static final String KEY_ENABLE_NIGHT_MODE = "enable_night_mode";
    private static final String KEY_FORCE_ALL_APPS_STANDBY = "force_all_apps_standby";
    private static final String KEY_FORCE_BACKGROUND_CHECK = "force_background_check";
    private static final String KEY_FULLBACKUP_DEFERRED = "fullbackup_deferred";
    private static final String KEY_GPS_MODE = "gps_mode";
    private static final String KEY_KEYVALUE_DEFERRED = "keyvaluebackup_deferred";
    private static final String KEY_LAUNCH_BOOST_DISABLED = "launch_boost_disabled";
    private static final String KEY_OPTIONAL_SENSORS_DISABLED = "optional_sensors_disabled";
    private static final String KEY_QUICK_DOZE_ENABLED = "quick_doze_enabled";
    private static final String KEY_SOUNDTRIGGER_DISABLED = "soundtrigger_disabled";
    private static final String KEY_VIBRATION_DISABLED = "vibration_disabled";
    @VisibleForTesting
    static final Policy OFF_POLICY;
    static final int POLICY_LEVEL_ADAPTIVE = 1;
    static final int POLICY_LEVEL_FULL = 2;
    static final int POLICY_LEVEL_OFF = 0;
    private static final String TAG = "BatterySaverPolicy";
    @GuardedBy({"mLock"})
    private boolean mAccessibilityEnabled;
    @GuardedBy({"mLock"})
    private String mAdaptiveDeviceSpecificSettings;
    @GuardedBy({"mLock"})
    private Policy mAdaptivePolicy;
    @GuardedBy({"mLock"})
    private String mAdaptiveSettings;
    private final BatterySavingStats mBatterySavingStats;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    @GuardedBy({"mLock"})
    private Policy mDefaultAdaptivePolicy;
    @GuardedBy({"mLock"})
    private String mDeviceSpecificSettings;
    @GuardedBy({"mLock"})
    private String mDeviceSpecificSettingsSource;
    @GuardedBy({"mLock"})
    private boolean mDisableVibrationEffective;
    @GuardedBy({"mLock"})
    private String mEventLogKeys;
    @GuardedBy({"mLock"})
    private Policy mFullPolicy = DEFAULT_FULL_POLICY;
    private final Handler mHandler;
    @GuardedBy({"mLock"})
    private final List<BatterySaverPolicyListener> mListeners = new ArrayList();
    private final Object mLock;
    @GuardedBy({"mLock"})
    private int mPolicyLevel = 0;
    @GuardedBy({"mLock"})
    private String mSettings;

    public interface BatterySaverPolicyListener {
        void onBatterySaverPolicyChanged(BatterySaverPolicy batterySaverPolicy);
    }

    @Retention(RetentionPolicy.SOURCE)
    @interface PolicyLevel {
    }

    static {
        ArrayMap arrayMap = r1;
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = r1;
        ArrayMap arrayMap4 = new ArrayMap();
        OFF_POLICY = new Policy(1.0f, false, false, false, false, false, false, false, false, false, false, false, false, false, false, arrayMap, arrayMap3, false, false, 0);
        ArrayMap arrayMap5 = r2;
        ArrayMap arrayMap6 = new ArrayMap();
        ArrayMap arrayMap7 = r2;
        ArrayMap arrayMap8 = new ArrayMap();
        DEFAULT_FULL_POLICY = new Policy(0.5f, true, true, true, false, true, true, true, true, true, false, false, true, true, true, arrayMap5, arrayMap7, true, true, 2);
    }

    public BatterySaverPolicy(Object lock, Context context, BatterySavingStats batterySavingStats) {
        super(BackgroundThread.getHandler());
        Policy policy = DEFAULT_ADAPTIVE_POLICY;
        this.mDefaultAdaptivePolicy = policy;
        this.mAdaptivePolicy = policy;
        this.mLock = lock;
        this.mHandler = BackgroundThread.getHandler();
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mBatterySavingStats = batterySavingStats;
    }

    public void systemReady() {
        ConcurrentUtils.wtfIfLockHeld(TAG, this.mLock);
        this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("battery_saver_constants"), false, this);
        this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("battery_saver_device_specific_constants"), false, this);
        this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("battery_saver_adaptive_constants"), false, this);
        this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("battery_saver_adaptive_device_specific_constants"), false, this);
        AccessibilityManager acm = (AccessibilityManager) this.mContext.getSystemService(AccessibilityManager.class);
        acm.addAccessibilityStateChangeListener(new AccessibilityManager.AccessibilityStateChangeListener() {
            public final void onAccessibilityStateChanged(boolean z) {
                BatterySaverPolicy.this.lambda$systemReady$0$BatterySaverPolicy(z);
            }
        });
        boolean enabled = acm.isEnabled();
        synchronized (this.mLock) {
            this.mAccessibilityEnabled = enabled;
        }
        onChange(true, (Uri) null);
    }

    public /* synthetic */ void lambda$systemReady$0$BatterySaverPolicy(boolean enabled) {
        synchronized (this.mLock) {
            this.mAccessibilityEnabled = enabled;
        }
        refreshSettings();
    }

    @VisibleForTesting
    public void addListener(BatterySaverPolicyListener listener) {
        synchronized (this.mLock) {
            this.mListeners.add(listener);
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public String getGlobalSetting(String key) {
        return Settings.Global.getString(this.mContentResolver, key);
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public int getDeviceSpecificConfigResId() {
        return 17039696;
    }

    public void onChange(boolean selfChange, Uri uri) {
        refreshSettings();
    }

    private void refreshSettings() {
        synchronized (this.mLock) {
            String setting = getGlobalSetting("battery_saver_constants");
            String deviceSpecificSetting = getGlobalSetting("battery_saver_device_specific_constants");
            this.mDeviceSpecificSettingsSource = "battery_saver_device_specific_constants";
            if (TextUtils.isEmpty(deviceSpecificSetting) || "null".equals(deviceSpecificSetting)) {
                deviceSpecificSetting = this.mContext.getString(getDeviceSpecificConfigResId());
                this.mDeviceSpecificSettingsSource = "(overlay)";
            }
            if (updateConstantsLocked(setting, deviceSpecificSetting, getGlobalSetting("battery_saver_adaptive_constants"), getGlobalSetting("battery_saver_adaptive_device_specific_constants"))) {
                BatterySaverPolicyListener[] listeners = (BatterySaverPolicyListener[]) this.mListeners.toArray(new BatterySaverPolicyListener[0]);
                this.mHandler.post(new Runnable(listeners) {
                    private final /* synthetic */ BatterySaverPolicy.BatterySaverPolicyListener[] f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void run() {
                        BatterySaverPolicy.this.lambda$refreshSettings$1$BatterySaverPolicy(this.f$1);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$refreshSettings$1$BatterySaverPolicy(BatterySaverPolicyListener[] listeners) {
        for (BatterySaverPolicyListener listener : listeners) {
            listener.onBatterySaverPolicyChanged(this);
        }
    }

    /* access modifiers changed from: package-private */
    @GuardedBy({"mLock"})
    @VisibleForTesting
    public void updateConstantsLocked(String setting, String deviceSpecificSetting) {
        updateConstantsLocked(setting, deviceSpecificSetting, "", "");
    }

    private boolean updateConstantsLocked(String setting, String deviceSpecificSetting, String adaptiveSetting, String adaptiveDeviceSpecificSetting) {
        String setting2 = TextUtils.emptyIfNull(setting);
        String deviceSpecificSetting2 = TextUtils.emptyIfNull(deviceSpecificSetting);
        String adaptiveSetting2 = TextUtils.emptyIfNull(adaptiveSetting);
        String adaptiveDeviceSpecificSetting2 = TextUtils.emptyIfNull(adaptiveDeviceSpecificSetting);
        if (setting2.equals(this.mSettings) && deviceSpecificSetting2.equals(this.mDeviceSpecificSettings) && adaptiveSetting2.equals(this.mAdaptiveSettings) && adaptiveDeviceSpecificSetting2.equals(this.mAdaptiveDeviceSpecificSettings)) {
            return false;
        }
        this.mSettings = setting2;
        this.mDeviceSpecificSettings = deviceSpecificSetting2;
        this.mAdaptiveSettings = adaptiveSetting2;
        this.mAdaptiveDeviceSpecificSettings = adaptiveDeviceSpecificSetting2;
        boolean changed = false;
        Policy newFullPolicy = Policy.fromSettings(setting2, deviceSpecificSetting2, DEFAULT_FULL_POLICY);
        if (this.mPolicyLevel == 2 && !this.mFullPolicy.equals(newFullPolicy)) {
            changed = true;
        }
        this.mFullPolicy = newFullPolicy;
        this.mDefaultAdaptivePolicy = Policy.fromSettings(adaptiveSetting2, adaptiveDeviceSpecificSetting2, DEFAULT_ADAPTIVE_POLICY);
        if (this.mPolicyLevel == 1 && !this.mAdaptivePolicy.equals(this.mDefaultAdaptivePolicy)) {
            changed = true;
        }
        this.mAdaptivePolicy = this.mDefaultAdaptivePolicy;
        updatePolicyDependenciesLocked();
        return changed;
    }

    @GuardedBy({"mLock"})
    private void updatePolicyDependenciesLocked() {
        Policy currPolicy = getCurrentPolicyLocked();
        this.mDisableVibrationEffective = currPolicy.disableVibration && !this.mAccessibilityEnabled;
        StringBuilder sb = new StringBuilder();
        if (currPolicy.forceAllAppsStandby) {
            sb.append("A");
        }
        if (currPolicy.forceBackgroundCheck) {
            sb.append("B");
        }
        if (this.mDisableVibrationEffective) {
            sb.append("v");
        }
        if (currPolicy.disableAnimation) {
            sb.append(ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD);
        }
        if (currPolicy.disableSoundTrigger) {
            sb.append("s");
        }
        if (currPolicy.deferFullBackup) {
            sb.append("F");
        }
        if (currPolicy.deferKeyValueBackup) {
            sb.append("K");
        }
        if (currPolicy.enableFirewall) {
            sb.append("f");
        }
        if (currPolicy.enableDataSaver) {
            sb.append("d");
        }
        if (currPolicy.enableAdjustBrightness) {
            sb.append("b");
        }
        if (currPolicy.disableLaunchBoost) {
            sb.append("l");
        }
        if (currPolicy.disableOptionalSensors) {
            sb.append("S");
        }
        if (currPolicy.disableAod) {
            sb.append("o");
        }
        if (currPolicy.enableQuickDoze) {
            sb.append("q");
        }
        sb.append(currPolicy.locationMode);
        this.mEventLogKeys = sb.toString();
    }

    static class Policy {
        public final float adjustBrightnessFactor;
        public final boolean advertiseIsEnabled;
        public final boolean deferFullBackup;
        public final boolean deferKeyValueBackup;
        public final boolean disableAnimation;
        public final boolean disableAod;
        public final boolean disableLaunchBoost;
        public final boolean disableOptionalSensors;
        public final boolean disableSoundTrigger;
        public final boolean disableVibration;
        public final boolean enableAdjustBrightness;
        public final boolean enableDataSaver;
        public final boolean enableFirewall;
        public final boolean enableNightMode;
        public final boolean enableQuickDoze;
        public final ArrayMap<String, String> filesForInteractive;
        public final ArrayMap<String, String> filesForNoninteractive;
        public final boolean forceAllAppsStandby;
        public final boolean forceBackgroundCheck;
        public final int locationMode;
        private final int mHashCode;

        Policy(float adjustBrightnessFactor2, boolean advertiseIsEnabled2, boolean deferFullBackup2, boolean deferKeyValueBackup2, boolean disableAnimation2, boolean disableAod2, boolean disableLaunchBoost2, boolean disableOptionalSensors2, boolean disableSoundTrigger2, boolean disableVibration2, boolean enableAdjustBrightness2, boolean enableDataSaver2, boolean enableFirewall2, boolean enableNightMode2, boolean enableQuickDoze2, ArrayMap<String, String> filesForInteractive2, ArrayMap<String, String> filesForNoninteractive2, boolean forceAllAppsStandby2, boolean forceBackgroundCheck2, int locationMode2) {
            char c;
            ArrayMap<String, String> arrayMap = filesForInteractive2;
            ArrayMap<String, String> arrayMap2 = filesForNoninteractive2;
            int i = locationMode2;
            this.adjustBrightnessFactor = Math.min(1.0f, Math.max(0.0f, adjustBrightnessFactor2));
            this.advertiseIsEnabled = advertiseIsEnabled2;
            this.deferFullBackup = deferFullBackup2;
            this.deferKeyValueBackup = deferKeyValueBackup2;
            this.disableAnimation = disableAnimation2;
            this.disableAod = disableAod2;
            this.disableLaunchBoost = disableLaunchBoost2;
            this.disableOptionalSensors = disableOptionalSensors2;
            this.disableSoundTrigger = disableSoundTrigger2;
            this.disableVibration = disableVibration2;
            this.enableAdjustBrightness = enableAdjustBrightness2;
            this.enableDataSaver = enableDataSaver2;
            this.enableFirewall = enableFirewall2;
            this.enableNightMode = enableNightMode2;
            this.enableQuickDoze = enableQuickDoze2;
            this.filesForInteractive = arrayMap;
            this.filesForNoninteractive = arrayMap2;
            this.forceAllAppsStandby = forceAllAppsStandby2;
            this.forceBackgroundCheck = forceBackgroundCheck2;
            if (i < 0 || 4 < i) {
                Slog.e(BatterySaverPolicy.TAG, "Invalid location mode: " + i);
                c = 0;
                this.locationMode = 0;
            } else {
                this.locationMode = i;
                c = 0;
            }
            Object[] objArr = new Object[20];
            objArr[c] = Float.valueOf(adjustBrightnessFactor2);
            objArr[1] = Boolean.valueOf(advertiseIsEnabled2);
            objArr[2] = Boolean.valueOf(deferFullBackup2);
            objArr[3] = Boolean.valueOf(deferKeyValueBackup2);
            objArr[4] = Boolean.valueOf(disableAnimation2);
            objArr[5] = Boolean.valueOf(disableAod2);
            objArr[6] = Boolean.valueOf(disableLaunchBoost2);
            objArr[7] = Boolean.valueOf(disableOptionalSensors2);
            objArr[8] = Boolean.valueOf(disableSoundTrigger2);
            objArr[9] = Boolean.valueOf(disableVibration2);
            objArr[10] = Boolean.valueOf(enableAdjustBrightness2);
            objArr[11] = Boolean.valueOf(enableDataSaver2);
            objArr[12] = Boolean.valueOf(enableFirewall2);
            objArr[13] = Boolean.valueOf(enableNightMode2);
            objArr[14] = Boolean.valueOf(enableQuickDoze2);
            objArr[15] = arrayMap;
            objArr[16] = arrayMap2;
            objArr[17] = Boolean.valueOf(forceAllAppsStandby2);
            objArr[18] = Boolean.valueOf(forceBackgroundCheck2);
            objArr[19] = Integer.valueOf(locationMode2);
            this.mHashCode = Objects.hash(objArr);
        }

        static Policy fromConfig(BatterySaverPolicyConfig config) {
            if (config == null) {
                Slog.e(BatterySaverPolicy.TAG, "Null config passed down to BatterySaverPolicy");
                return BatterySaverPolicy.OFF_POLICY;
            }
            Map<String, String> deviceSpecificSettings = config.getDeviceSpecificSettings();
            Map<String, String> map = deviceSpecificSettings;
            return new Policy(config.getAdjustBrightnessFactor(), config.getAdvertiseIsEnabled(), config.getDeferFullBackup(), config.getDeferKeyValueBackup(), config.getDisableAnimation(), config.getDisableAod(), config.getDisableLaunchBoost(), config.getDisableOptionalSensors(), config.getDisableSoundTrigger(), config.getDisableVibration(), config.getEnableAdjustBrightness(), config.getEnableDataSaver(), config.getEnableFirewall(), config.getEnableNightMode(), config.getEnableQuickDoze(), new CpuFrequencies().parseString(deviceSpecificSettings.getOrDefault(BatterySaverPolicy.KEY_CPU_FREQ_INTERACTIVE, "")).toSysFileMap(), new CpuFrequencies().parseString(deviceSpecificSettings.getOrDefault(BatterySaverPolicy.KEY_CPU_FREQ_NONINTERACTIVE, "")).toSysFileMap(), config.getForceAllAppsStandby(), config.getForceBackgroundCheck(), config.getLocationMode());
        }

        static Policy fromSettings(String settings, String deviceSpecificSettings) {
            return fromSettings(settings, deviceSpecificSettings, BatterySaverPolicy.OFF_POLICY);
        }

        static Policy fromSettings(String settings, String deviceSpecificSettings, Policy defaultPolicy) {
            String str = settings;
            String str2 = deviceSpecificSettings;
            Policy policy = defaultPolicy;
            KeyValueListParser parser = new KeyValueListParser(',');
            String str3 = "";
            try {
                parser.setString(str2 == null ? str3 : str2);
            } catch (IllegalArgumentException e) {
                IllegalArgumentException illegalArgumentException = e;
                Slog.wtf(BatterySaverPolicy.TAG, "Bad device specific battery saver constants: " + str2);
            }
            String cpuFreqInteractive = parser.getString(BatterySaverPolicy.KEY_CPU_FREQ_INTERACTIVE, str3);
            String cpuFreqNoninteractive = parser.getString(BatterySaverPolicy.KEY_CPU_FREQ_NONINTERACTIVE, str3);
            if (str != null) {
                str3 = str;
            }
            try {
                parser.setString(str3);
            } catch (IllegalArgumentException e2) {
                IllegalArgumentException illegalArgumentException2 = e2;
                Slog.wtf(BatterySaverPolicy.TAG, "Bad battery saver constants: " + str);
            }
            return new Policy(parser.getFloat(BatterySaverPolicy.KEY_ADJUST_BRIGHTNESS_FACTOR, policy.adjustBrightnessFactor), parser.getBoolean(BatterySaverPolicy.KEY_ADVERTISE_IS_ENABLED, policy.advertiseIsEnabled), parser.getBoolean(BatterySaverPolicy.KEY_FULLBACKUP_DEFERRED, policy.deferFullBackup), parser.getBoolean(BatterySaverPolicy.KEY_KEYVALUE_DEFERRED, policy.deferKeyValueBackup), parser.getBoolean(BatterySaverPolicy.KEY_ANIMATION_DISABLED, policy.disableAnimation), parser.getBoolean(BatterySaverPolicy.KEY_AOD_DISABLED, policy.disableAod), parser.getBoolean(BatterySaverPolicy.KEY_LAUNCH_BOOST_DISABLED, policy.disableLaunchBoost), parser.getBoolean(BatterySaverPolicy.KEY_OPTIONAL_SENSORS_DISABLED, policy.disableOptionalSensors), parser.getBoolean(BatterySaverPolicy.KEY_SOUNDTRIGGER_DISABLED, policy.disableSoundTrigger), parser.getBoolean(BatterySaverPolicy.KEY_VIBRATION_DISABLED, policy.disableVibration), !parser.getBoolean(BatterySaverPolicy.KEY_ADJUST_BRIGHTNESS_DISABLED, !policy.enableAdjustBrightness), !parser.getBoolean(BatterySaverPolicy.KEY_ACTIVATE_DATASAVER_DISABLED, !policy.enableDataSaver), !parser.getBoolean(BatterySaverPolicy.KEY_ACTIVATE_FIREWALL_DISABLED, !policy.enableFirewall), parser.getBoolean(BatterySaverPolicy.KEY_ENABLE_NIGHT_MODE, policy.enableNightMode), parser.getBoolean(BatterySaverPolicy.KEY_QUICK_DOZE_ENABLED, policy.enableQuickDoze), new CpuFrequencies().parseString(cpuFreqInteractive).toSysFileMap(), new CpuFrequencies().parseString(cpuFreqNoninteractive).toSysFileMap(), parser.getBoolean(BatterySaverPolicy.KEY_FORCE_ALL_APPS_STANDBY, policy.forceAllAppsStandby), parser.getBoolean(BatterySaverPolicy.KEY_FORCE_BACKGROUND_CHECK, policy.forceBackgroundCheck), parser.getInt(BatterySaverPolicy.KEY_GPS_MODE, policy.locationMode));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Policy)) {
                return false;
            }
            Policy other = (Policy) obj;
            if (Float.compare(other.adjustBrightnessFactor, this.adjustBrightnessFactor) == 0 && this.advertiseIsEnabled == other.advertiseIsEnabled && this.deferFullBackup == other.deferFullBackup && this.deferKeyValueBackup == other.deferKeyValueBackup && this.disableAnimation == other.disableAnimation && this.disableAod == other.disableAod && this.disableLaunchBoost == other.disableLaunchBoost && this.disableOptionalSensors == other.disableOptionalSensors && this.disableSoundTrigger == other.disableSoundTrigger && this.disableVibration == other.disableVibration && this.enableAdjustBrightness == other.enableAdjustBrightness && this.enableDataSaver == other.enableDataSaver && this.enableFirewall == other.enableFirewall && this.enableNightMode == other.enableNightMode && this.enableQuickDoze == other.enableQuickDoze && this.forceAllAppsStandby == other.forceAllAppsStandby && this.forceBackgroundCheck == other.forceBackgroundCheck && this.locationMode == other.locationMode && this.filesForInteractive.equals(other.filesForInteractive) && this.filesForNoninteractive.equals(other.filesForNoninteractive)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.mHashCode;
        }
    }

    public PowerSaveState getBatterySaverPolicy(int type) {
        boolean isEnabled;
        synchronized (this.mLock) {
            Policy currPolicy = getCurrentPolicyLocked();
            PowerSaveState.Builder builder = new PowerSaveState.Builder().setGlobalBatterySaverEnabled(currPolicy.advertiseIsEnabled);
            switch (type) {
                case 1:
                    if (!currPolicy.advertiseIsEnabled) {
                        if (currPolicy.locationMode == 0) {
                            isEnabled = false;
                            PowerSaveState build = builder.setBatterySaverEnabled(isEnabled).setLocationMode(currPolicy.locationMode).build();
                            return build;
                        }
                    }
                    isEnabled = true;
                    PowerSaveState build2 = builder.setBatterySaverEnabled(isEnabled).setLocationMode(currPolicy.locationMode).build();
                    return build2;
                case 2:
                    PowerSaveState build3 = builder.setBatterySaverEnabled(this.mDisableVibrationEffective).build();
                    return build3;
                case 3:
                    PowerSaveState build4 = builder.setBatterySaverEnabled(currPolicy.disableAnimation).build();
                    return build4;
                case 4:
                    PowerSaveState build5 = builder.setBatterySaverEnabled(currPolicy.deferFullBackup).build();
                    return build5;
                case 5:
                    PowerSaveState build6 = builder.setBatterySaverEnabled(currPolicy.deferKeyValueBackup).build();
                    return build6;
                case 6:
                    PowerSaveState build7 = builder.setBatterySaverEnabled(currPolicy.enableFirewall).build();
                    return build7;
                case 7:
                    PowerSaveState build8 = builder.setBatterySaverEnabled(currPolicy.enableAdjustBrightness).setBrightnessFactor(currPolicy.adjustBrightnessFactor).build();
                    return build8;
                case 8:
                    PowerSaveState build9 = builder.setBatterySaverEnabled(currPolicy.disableSoundTrigger).build();
                    return build9;
                case 10:
                    PowerSaveState build10 = builder.setBatterySaverEnabled(currPolicy.enableDataSaver).build();
                    return build10;
                case 11:
                    PowerSaveState build11 = builder.setBatterySaverEnabled(currPolicy.forceAllAppsStandby).build();
                    return build11;
                case 12:
                    PowerSaveState build12 = builder.setBatterySaverEnabled(currPolicy.forceBackgroundCheck).build();
                    return build12;
                case 13:
                    PowerSaveState build13 = builder.setBatterySaverEnabled(currPolicy.disableOptionalSensors).build();
                    return build13;
                case 14:
                    PowerSaveState build14 = builder.setBatterySaverEnabled(currPolicy.disableAod).build();
                    return build14;
                case 15:
                    PowerSaveState build15 = builder.setBatterySaverEnabled(currPolicy.enableQuickDoze).build();
                    return build15;
                case 16:
                    PowerSaveState build16 = builder.setBatterySaverEnabled(currPolicy.enableNightMode).build();
                    return build16;
                default:
                    PowerSaveState build17 = builder.setBatterySaverEnabled(currPolicy.advertiseIsEnabled).build();
                    return build17;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean setPolicyLevel(int level) {
        synchronized (this.mLock) {
            if (this.mPolicyLevel == level) {
                return false;
            }
            if (level == 0 || level == 1 || level == 2) {
                this.mPolicyLevel = level;
                updatePolicyDependenciesLocked();
                return true;
            }
            Slog.wtf(TAG, "setPolicyLevel invalid level given: " + level);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean setAdaptivePolicyLocked(Policy p) {
        if (p == null) {
            Slog.wtf(TAG, "setAdaptivePolicy given null policy");
            return false;
        } else if (this.mAdaptivePolicy.equals(p)) {
            return false;
        } else {
            this.mAdaptivePolicy = p;
            if (this.mPolicyLevel != 1) {
                return false;
            }
            updatePolicyDependenciesLocked();
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean resetAdaptivePolicyLocked() {
        return setAdaptivePolicyLocked(this.mDefaultAdaptivePolicy);
    }

    private Policy getCurrentPolicyLocked() {
        int i = this.mPolicyLevel;
        if (i == 1) {
            return this.mAdaptivePolicy;
        }
        if (i != 2) {
            return OFF_POLICY;
        }
        return this.mFullPolicy;
    }

    public int getGpsMode() {
        int i;
        synchronized (this.mLock) {
            i = getCurrentPolicyLocked().locationMode;
        }
        return i;
    }

    public ArrayMap<String, String> getFileValues(boolean interactive) {
        ArrayMap<String, String> arrayMap;
        synchronized (this.mLock) {
            if (interactive) {
                arrayMap = getCurrentPolicyLocked().filesForInteractive;
            } else {
                arrayMap = getCurrentPolicyLocked().filesForNoninteractive;
            }
        }
        return arrayMap;
    }

    public boolean isLaunchBoostDisabled() {
        boolean z;
        synchronized (this.mLock) {
            z = getCurrentPolicyLocked().disableLaunchBoost;
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public boolean shouldAdvertiseIsEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = getCurrentPolicyLocked().advertiseIsEnabled;
        }
        return z;
    }

    public String toEventLogString() {
        String str;
        synchronized (this.mLock) {
            str = this.mEventLogKeys;
        }
        return str;
    }

    public void dump(PrintWriter pw) {
        synchronized (this.mLock) {
            pw.println();
            this.mBatterySavingStats.dump(pw, "");
            pw.println();
            pw.println("Battery saver policy (*NOTE* they only apply when battery saver is ON):");
            pw.println("  Settings: battery_saver_constants");
            pw.println("    value: " + this.mSettings);
            pw.println("  Settings: " + this.mDeviceSpecificSettingsSource);
            pw.println("    value: " + this.mDeviceSpecificSettings);
            pw.println("  Adaptive Settings: battery_saver_adaptive_constants");
            pw.println("    value: " + this.mAdaptiveSettings);
            pw.println("  Adaptive Device Specific Settings: battery_saver_adaptive_device_specific_constants");
            pw.println("    value: " + this.mAdaptiveDeviceSpecificSettings);
            pw.println("  mAccessibilityEnabled=" + this.mAccessibilityEnabled);
            pw.println("  mPolicyLevel=" + this.mPolicyLevel);
            dumpPolicyLocked(pw, "  ", "full", this.mFullPolicy);
            dumpPolicyLocked(pw, "  ", "default adaptive", this.mDefaultAdaptivePolicy);
            dumpPolicyLocked(pw, "  ", "current adaptive", this.mAdaptivePolicy);
        }
    }

    private void dumpPolicyLocked(PrintWriter pw, String indent, String label, Policy p) {
        pw.println();
        pw.print(indent);
        pw.println("Policy '" + label + "'");
        pw.print(indent);
        pw.println("  advertise_is_enabled=" + p.advertiseIsEnabled);
        pw.print(indent);
        pw.println("  vibration_disabled:config=" + p.disableVibration);
        pw.print(indent);
        StringBuilder sb = new StringBuilder();
        sb.append("  vibration_disabled:effective=");
        sb.append(p.disableVibration && !this.mAccessibilityEnabled);
        pw.println(sb.toString());
        pw.print(indent);
        pw.println("  animation_disabled=" + p.disableAnimation);
        pw.print(indent);
        pw.println("  fullbackup_deferred=" + p.deferFullBackup);
        pw.print(indent);
        pw.println("  keyvaluebackup_deferred=" + p.deferKeyValueBackup);
        pw.print(indent);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  firewall_disabled=");
        sb2.append(!p.enableFirewall);
        pw.println(sb2.toString());
        pw.print(indent);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("  datasaver_disabled=");
        sb3.append(!p.enableDataSaver);
        pw.println(sb3.toString());
        pw.print(indent);
        pw.println("  launch_boost_disabled=" + p.disableLaunchBoost);
        pw.println("    adjust_brightness_disabled=" + (p.enableAdjustBrightness ^ true));
        pw.print(indent);
        pw.println("  adjust_brightness_factor=" + p.adjustBrightnessFactor);
        pw.print(indent);
        pw.println("  gps_mode=" + p.locationMode);
        pw.print(indent);
        pw.println("  force_all_apps_standby=" + p.forceAllAppsStandby);
        pw.print(indent);
        pw.println("  force_background_check=" + p.forceBackgroundCheck);
        pw.println("    optional_sensors_disabled=" + p.disableOptionalSensors);
        pw.print(indent);
        pw.println("  aod_disabled=" + p.disableAod);
        pw.print(indent);
        pw.println("  soundtrigger_disabled=" + p.disableSoundTrigger);
        pw.print(indent);
        pw.println("  quick_doze_enabled=" + p.enableQuickDoze);
        pw.print(indent);
        pw.println("  enable_night_mode=" + p.enableNightMode);
        pw.print("    Interactive File values:\n");
        dumpMap(pw, "      ", p.filesForInteractive);
        pw.println();
        pw.print("    Noninteractive File values:\n");
        dumpMap(pw, "      ", p.filesForNoninteractive);
    }

    private void dumpMap(PrintWriter pw, String prefix, ArrayMap<String, String> map) {
        if (map != null) {
            int size = map.size();
            for (int i = 0; i < size; i++) {
                pw.print(prefix);
                pw.print(map.keyAt(i));
                pw.print(": '");
                pw.print(map.valueAt(i));
                pw.println("'");
            }
        }
    }

    @VisibleForTesting
    public void setAccessibilityEnabledForTest(boolean enabled) {
        synchronized (this.mLock) {
            this.mAccessibilityEnabled = enabled;
            updatePolicyDependenciesLocked();
        }
    }
}
