package com.android.server.notification;

import android.app.AppOpsManager;
import android.app.AutomaticZenRule;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.ContentObserver;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.media.AudioManagerInternal;
import android.media.AudioServiceInjector;
import android.media.VolumePolicy;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.MiuiSettings;
import android.provider.Settings;
import android.service.notification.Condition;
import android.service.notification.ZenModeConfig;
import android.service.notification.ZenPolicy;
import android.util.AndroidRuntimeException;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.server.LocalServices;
import com.android.server.inputmethod.MiuiSecurityInputMethodHelper;
import com.android.server.notification.ManagedServices;
import com.android.server.pm.DumpState;
import com.android.server.pm.PackageManagerService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import libcore.io.IoUtils;
import miui.securityspace.XSpaceUserHandle;
import miui.util.AudioManagerHelper;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class ZenModeHelper {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final int RULE_INSTANCE_GRACE_PERIOD = 259200000;
    public static final long SUPPRESSED_EFFECT_ALL = 3;
    public static final long SUPPRESSED_EFFECT_CALLS = 2;
    public static final long SUPPRESSED_EFFECT_NOTIFICATIONS = 1;
    static final String TAG = "ZenModeHelper";
    private final AppOpsManager mAppOps;
    @VisibleForTesting
    protected AudioManagerInternal mAudioManager;
    private final ArrayList<Callback> mCallbacks = new ArrayList<>();
    @VisibleForTesting
    protected final ZenModeConditions mConditions;
    @VisibleForTesting
    protected ZenModeConfig mConfig;
    @VisibleForTesting
    final SparseArray<ZenModeConfig> mConfigs = new SparseArray<>();
    @VisibleForTesting
    protected NotificationManager.Policy mConsolidatedPolicy;
    /* access modifiers changed from: private */
    public final Context mContext;
    @VisibleForTesting
    protected ZenModeConfig mDefaultConfig;
    private final ZenModeFiltering mFiltering;
    /* access modifiers changed from: private */
    public final H mHandler;
    @VisibleForTesting
    protected boolean mIsBootComplete;
    /* access modifiers changed from: private */
    public final Metrics mMetrics = new Metrics();
    @VisibleForTesting
    protected final NotificationManager mNotificationManager;
    protected PackageManager mPm;
    private String[] mPriorityOnlyDndExemptPackages;
    protected final RingerModeDelegate mRingerModeDelegate = new RingerModeDelegate();
    private final ManagedServices.Config mServiceConfig;
    private final SettingsObserver mSettingsObserver;
    private long mSuppressedEffects;
    private int mUser = 0;
    @VisibleForTesting
    protected int mZenMode;

    public ZenModeHelper(Context context, Looper looper, ConditionProviders conditionProviders) {
        this.mContext = context;
        this.mHandler = new H(looper);
        addCallback(this.mMetrics);
        this.mAppOps = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        this.mNotificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        this.mDefaultConfig = readDefaultConfig(this.mContext.getResources());
        updateDefaultAutomaticRuleNames();
        this.mConfig = this.mDefaultConfig.copy();
        this.mConfigs.put(0, this.mConfig);
        this.mSettingsObserver = new SettingsObserver(this.mHandler);
        this.mSettingsObserver.observe();
        this.mFiltering = new ZenModeFiltering(this.mContext);
        this.mConditions = new ZenModeConditions(this, conditionProviders);
        this.mServiceConfig = conditionProviders.getConfig();
    }

    public Looper getLooper() {
        return this.mHandler.getLooper();
    }

    public String toString() {
        return TAG;
    }

    public boolean matchesCallFilter(UserHandle userHandle, Bundle extras, ValidateNotificationPeople validator, int contactsTimeoutMs, float timeoutAffinity) {
        boolean matchesCallFilter;
        synchronized (this.mConfig) {
            matchesCallFilter = ZenModeFiltering.matchesCallFilter(this.mContext, this.mZenMode, this.mConsolidatedPolicy, userHandle, extras, validator, contactsTimeoutMs, timeoutAffinity);
        }
        return matchesCallFilter;
    }

    public boolean isCall(NotificationRecord record) {
        return this.mFiltering.isCall(record);
    }

    public void recordCaller(NotificationRecord record) {
        this.mFiltering.recordCall(record);
    }

    public boolean shouldIntercept(NotificationRecord record) {
        boolean shouldIntercept;
        synchronized (this.mConfig) {
            shouldIntercept = this.mFiltering.shouldIntercept(this.mZenMode, this.mConsolidatedPolicy, record);
        }
        return shouldIntercept;
    }

    public void addCallback(Callback callback) {
        this.mCallbacks.add(callback);
    }

    public void removeCallback(Callback callback) {
        this.mCallbacks.remove(callback);
    }

    public void initZenMode() {
        if (DEBUG) {
            Log.d(TAG, "initZenMode");
        }
        evaluateZenMode("init", true);
    }

    public void onSystemReady() {
        if (DEBUG) {
            Log.d(TAG, "onSystemReady");
        }
        this.mAudioManager = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
        AudioManagerInternal audioManagerInternal = this.mAudioManager;
        if (audioManagerInternal != null) {
            audioManagerInternal.setRingerModeDelegate(this.mRingerModeDelegate);
        }
        this.mPm = this.mContext.getPackageManager();
        this.mHandler.postMetricsTimer();
        cleanUpZenRules();
        evaluateZenMode("onSystemReady", true);
        this.mIsBootComplete = true;
        showZenUpgradeNotification(this.mZenMode);
    }

    public void onUserSwitched(int user) {
        loadConfigForUser(user, "onUserSwitched");
    }

    public void onUserRemoved(int user) {
        if (user >= 0) {
            if (DEBUG) {
                Log.d(TAG, "onUserRemoved u=" + user);
            }
            this.mConfigs.remove(user);
        }
    }

    public void onUserUnlocked(int user) {
        loadConfigForUser(user, "onUserUnlocked");
    }

    /* access modifiers changed from: package-private */
    public void setPriorityOnlyDndExemptPackages(String[] packages) {
        this.mPriorityOnlyDndExemptPackages = packages;
    }

    private void loadConfigForUser(int user, String reason) {
        if (this.mUser != user && user >= 0 && !XSpaceUserHandle.isXSpaceUserId(user)) {
            this.mUser = user;
            if (DEBUG) {
                Log.d(TAG, reason + " u=" + user);
            }
            ZenModeConfig config = this.mConfigs.get(user);
            if (config == null) {
                if (DEBUG) {
                    Log.d(TAG, reason + " generating default config for user " + user);
                }
                config = this.mDefaultConfig.copy();
                config.user = user;
            }
            synchronized (this.mConfig) {
                setConfigLocked(config, (ComponentName) null, reason);
            }
            cleanUpZenRules();
        }
    }

    public int getZenModeListenerInterruptionFilter() {
        return NotificationManager.zenModeToInterruptionFilter(this.mZenMode);
    }

    public void requestFromListener(ComponentName name, int filter) {
        int newZen = NotificationManager.zenModeFromInterruptionFilter(filter, -1);
        if (newZen != -1) {
            String packageName = name != null ? name.getPackageName() : null;
            StringBuilder sb = new StringBuilder();
            sb.append("listener:");
            sb.append(name != null ? name.flattenToShortString() : null);
            setManualZenMode(newZen, (Uri) null, packageName, sb.toString());
        }
    }

    public void setSuppressedEffects(long suppressedEffects) {
        if (this.mSuppressedEffects != suppressedEffects) {
            this.mSuppressedEffects = suppressedEffects;
            applyRestrictions();
        }
    }

    public long getSuppressedEffects() {
        return this.mSuppressedEffects;
    }

    public int getZenMode() {
        return this.mZenMode;
    }

    public List<ZenModeConfig.ZenRule> getZenRules() {
        List<ZenModeConfig.ZenRule> rules = new ArrayList<>();
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return rules;
            }
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (canManageAutomaticZenRule(rule)) {
                    rules.add(rule);
                }
            }
            return rules;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001c, code lost:
        if (canManageAutomaticZenRule(r1) == false) goto L_0x0023;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0022, code lost:
        return createAutomaticZenRule(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0023, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0015, code lost:
        if (r1 != null) goto L_0x0018;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.app.AutomaticZenRule getAutomaticZenRule(java.lang.String r4) {
        /*
            r3 = this;
            android.service.notification.ZenModeConfig r0 = r3.mConfig
            monitor-enter(r0)
            android.service.notification.ZenModeConfig r1 = r3.mConfig     // Catch:{ all -> 0x0024 }
            r2 = 0
            if (r1 != 0) goto L_0x000a
            monitor-exit(r0)     // Catch:{ all -> 0x0024 }
            return r2
        L_0x000a:
            android.service.notification.ZenModeConfig r1 = r3.mConfig     // Catch:{ all -> 0x0024 }
            android.util.ArrayMap r1 = r1.automaticRules     // Catch:{ all -> 0x0024 }
            java.lang.Object r1 = r1.get(r4)     // Catch:{ all -> 0x0024 }
            android.service.notification.ZenModeConfig$ZenRule r1 = (android.service.notification.ZenModeConfig.ZenRule) r1     // Catch:{ all -> 0x0024 }
            monitor-exit(r0)     // Catch:{ all -> 0x0024 }
            if (r1 != 0) goto L_0x0018
            return r2
        L_0x0018:
            boolean r0 = r3.canManageAutomaticZenRule(r1)
            if (r0 == 0) goto L_0x0023
            android.app.AutomaticZenRule r0 = r3.createAutomaticZenRule(r1)
            return r0
        L_0x0023:
            return r2
        L_0x0024:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0024 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.ZenModeHelper.getAutomaticZenRule(java.lang.String):android.app.AutomaticZenRule");
    }

    /* Debug info: failed to restart local var, previous not found, register: 6 */
    public String addAutomaticZenRule(AutomaticZenRule automaticZenRule, String reason) {
        String str;
        if (!isSystemRule(automaticZenRule)) {
            PackageItemInfo component = getServiceInfo(automaticZenRule.getOwner());
            if (component == null) {
                component = getActivityInfo(automaticZenRule.getConfigurationActivity());
            }
            if (component != null) {
                int ruleInstanceLimit = -1;
                if (component.metaData != null) {
                    ruleInstanceLimit = component.metaData.getInt("android.service.zen.automatic.ruleInstanceLimit", -1);
                }
                int newRuleInstanceCount = getCurrentInstanceCount(automaticZenRule.getOwner()) + getCurrentInstanceCount(automaticZenRule.getConfigurationActivity()) + 1;
                if (ruleInstanceLimit > 0 && ruleInstanceLimit < newRuleInstanceCount) {
                    throw new IllegalArgumentException("Rule instance limit exceeded");
                }
            } else {
                throw new IllegalArgumentException("Lacking enabled CPS or config activity");
            }
        }
        synchronized (this.mConfig) {
            if (this.mConfig != null) {
                if (DEBUG) {
                    Log.d(TAG, "addAutomaticZenRule rule= " + automaticZenRule + " reason=" + reason);
                }
                ZenModeConfig newConfig = this.mConfig.copy();
                ZenModeConfig.ZenRule rule = new ZenModeConfig.ZenRule();
                populateZenRule(automaticZenRule, rule, true);
                newConfig.automaticRules.put(rule.id, rule);
                if (setConfigLocked(newConfig, reason, rule.component, true)) {
                    str = rule.id;
                } else {
                    throw new AndroidRuntimeException("Could not create rule");
                }
            } else {
                throw new AndroidRuntimeException("Could not create rule");
            }
        }
        return str;
    }

    /* Debug info: failed to restart local var, previous not found, register: 5 */
    public boolean updateAutomaticZenRule(String ruleId, AutomaticZenRule automaticZenRule, String reason) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return false;
            }
            if (DEBUG) {
                Log.d(TAG, "updateAutomaticZenRule zenRule=" + automaticZenRule + " reason=" + reason);
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            if (ruleId != null) {
                ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(ruleId);
                if (rule == null || !canManageAutomaticZenRule(rule)) {
                    throw new SecurityException("Cannot update rules not owned by your condition provider");
                }
                populateZenRule(automaticZenRule, rule, false);
                boolean configLocked = setConfigLocked(newConfig, reason, rule.component, true);
                return configLocked;
            }
            throw new IllegalArgumentException("Rule doesn't exist");
        }
    }

    /* Debug info: failed to restart local var, previous not found, register: 6 */
    public boolean removeAutomaticZenRule(String id, String reason) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return false;
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(id);
            if (rule == null) {
                return false;
            }
            if (canManageAutomaticZenRule(rule)) {
                newConfig.automaticRules.remove(id);
                if (DEBUG) {
                    Log.d(TAG, "removeZenRule zenRule=" + id + " reason=" + reason);
                }
                boolean configLocked = setConfigLocked(newConfig, reason, (ComponentName) null, true);
                return configLocked;
            }
            throw new SecurityException("Cannot delete rules not owned by your condition provider");
        }
    }

    public boolean removeAutomaticZenRules(String packageName, String reason) {
        synchronized (this.mConfig) {
            if (this.mConfig == null) {
                return false;
            }
            ZenModeConfig newConfig = this.mConfig.copy();
            for (int i = newConfig.automaticRules.size() - 1; i >= 0; i--) {
                ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(newConfig.automaticRules.keyAt(i));
                if (rule.pkg.equals(packageName) && canManageAutomaticZenRule(rule)) {
                    newConfig.automaticRules.removeAt(i);
                }
            }
            boolean configLocked = setConfigLocked(newConfig, reason, (ComponentName) null, true);
            return configLocked;
        }
    }

    public void setAutomaticZenRuleState(String id, Condition condition) {
        synchronized (this.mConfig) {
            if (this.mConfig != null) {
                ZenModeConfig newConfig = this.mConfig.copy();
                setAutomaticZenRuleStateLocked(newConfig, (ZenModeConfig.ZenRule) newConfig.automaticRules.get(id), condition);
            }
        }
    }

    public void setAutomaticZenRuleState(Uri ruleDefinition, Condition condition) {
        synchronized (this.mConfig) {
            if (this.mConfig != null) {
                ZenModeConfig newConfig = this.mConfig.copy();
                setAutomaticZenRuleStateLocked(newConfig, findMatchingRule(newConfig, ruleDefinition, condition), condition);
            }
        }
    }

    private void setAutomaticZenRuleStateLocked(ZenModeConfig config, ZenModeConfig.ZenRule rule, Condition condition) {
        if (rule != null) {
            rule.condition = condition;
            updateSnoozing(rule);
            setConfigLocked(config, rule.component, "conditionChanged");
        }
    }

    private ZenModeConfig.ZenRule findMatchingRule(ZenModeConfig config, Uri id, Condition condition) {
        if (ruleMatches(id, condition, config.manualRule)) {
            return config.manualRule;
        }
        for (ZenModeConfig.ZenRule automaticRule : config.automaticRules.values()) {
            if (ruleMatches(id, condition, automaticRule)) {
                return automaticRule;
            }
        }
        return null;
    }

    private boolean ruleMatches(Uri id, Condition condition, ZenModeConfig.ZenRule rule) {
        if (id == null || rule == null || rule.conditionId == null || !rule.conditionId.equals(id) || Objects.equals(condition, rule.condition)) {
            return false;
        }
        return true;
    }

    private boolean updateSnoozing(ZenModeConfig.ZenRule rule) {
        if (rule == null || !rule.snoozing || rule.isTrueOrUnknown()) {
            return false;
        }
        rule.snoozing = false;
        if (!DEBUG) {
            return true;
        }
        Log.d(TAG, "Snoozing reset for " + rule.conditionId);
        return true;
    }

    public int getCurrentInstanceCount(ComponentName cn) {
        if (cn == null) {
            return 0;
        }
        int count = 0;
        synchronized (this.mConfig) {
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (cn.equals(rule.component) || cn.equals(rule.configurationActivity)) {
                    count++;
                }
            }
        }
        return count;
    }

    public boolean canManageAutomaticZenRule(ZenModeConfig.ZenRule rule) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 0 || callingUid == 1000 || this.mContext.checkCallingPermission("android.permission.MANAGE_NOTIFICATIONS") == 0) {
            return true;
        }
        String[] packages = this.mPm.getPackagesForUid(Binder.getCallingUid());
        if (packages == null) {
            return false;
        }
        for (String equals : packages) {
            if (equals.equals(rule.pkg)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void updateDefaultZenRules() {
        updateDefaultAutomaticRuleNames();
        for (ZenModeConfig.ZenRule defaultRule : this.mDefaultConfig.automaticRules.values()) {
            ZenModeConfig.ZenRule currRule = (ZenModeConfig.ZenRule) this.mConfig.automaticRules.get(defaultRule.id);
            if (currRule != null && !currRule.modified && !currRule.enabled && !defaultRule.name.equals(currRule.name) && canManageAutomaticZenRule(currRule)) {
                if (DEBUG) {
                    Slog.d(TAG, "Locale change - updating default zen rule name from " + currRule.name + " to " + defaultRule.name);
                }
                currRule.name = defaultRule.name;
                updateAutomaticZenRule(defaultRule.id, createAutomaticZenRule(currRule), "locale changed");
            }
        }
    }

    private boolean isSystemRule(AutomaticZenRule rule) {
        return rule.getOwner() != null && PackageManagerService.PLATFORM_PACKAGE_NAME.equals(rule.getOwner().getPackageName());
    }

    private ServiceInfo getServiceInfo(ComponentName owner) {
        Intent queryIntent = new Intent();
        queryIntent.setComponent(owner);
        List<ResolveInfo> installedServices = this.mPm.queryIntentServicesAsUser(queryIntent, 132, UserHandle.getCallingUserId());
        if (installedServices == null) {
            return null;
        }
        int count = installedServices.size();
        for (int i = 0; i < count; i++) {
            ServiceInfo info = installedServices.get(i).serviceInfo;
            if (this.mServiceConfig.bindPermission.equals(info.permission)) {
                return info;
            }
        }
        return null;
    }

    private ActivityInfo getActivityInfo(ComponentName configActivity) {
        Intent queryIntent = new Intent();
        queryIntent.setComponent(configActivity);
        List<ResolveInfo> installedComponents = this.mPm.queryIntentActivitiesAsUser(queryIntent, MiuiSecurityInputMethodHelper.TEXT_PASSWORD, UserHandle.getCallingUserId());
        if (installedComponents == null || 0 >= installedComponents.size()) {
            return null;
        }
        return installedComponents.get(0).activityInfo;
    }

    private void populateZenRule(AutomaticZenRule automaticZenRule, ZenModeConfig.ZenRule rule, boolean isNew) {
        String str;
        if (isNew) {
            rule.id = ZenModeConfig.newRuleId();
            rule.creationTime = System.currentTimeMillis();
            rule.component = automaticZenRule.getOwner();
            rule.configurationActivity = automaticZenRule.getConfigurationActivity();
            if (rule.component != null) {
                str = rule.component.getPackageName();
            } else {
                str = rule.configurationActivity.getPackageName();
            }
            rule.pkg = str;
        }
        if (rule.enabled != automaticZenRule.isEnabled()) {
            rule.snoozing = false;
        }
        rule.name = automaticZenRule.getName();
        rule.condition = null;
        rule.conditionId = automaticZenRule.getConditionId();
        rule.enabled = automaticZenRule.isEnabled();
        rule.modified = automaticZenRule.isModified();
        rule.zenPolicy = automaticZenRule.getZenPolicy();
        rule.zenMode = NotificationManager.zenModeFromInterruptionFilter(automaticZenRule.getInterruptionFilter(), 0);
    }

    /* access modifiers changed from: protected */
    public AutomaticZenRule createAutomaticZenRule(ZenModeConfig.ZenRule rule) {
        return new AutomaticZenRule(rule.name, rule.component, rule.configurationActivity, rule.conditionId, rule.zenPolicy, NotificationManager.zenModeToInterruptionFilter(rule.zenMode), rule.enabled, rule.creationTime);
    }

    public void setManualZenMode(int zenMode, Uri conditionId, String caller, String reason) {
        setManualZenMode(zenMode, conditionId, reason, caller, true);
        Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_settings_suggestion", 0);
    }

    /* access modifiers changed from: private */
    public void setManualZenMode(int zenMode, Uri conditionId, String reason, String caller, boolean setRingerMode) {
        synchronized (this.mConfig) {
            if (this.mConfig != null) {
                if (Settings.Global.isValidZenMode(zenMode)) {
                    if (DEBUG) {
                        Log.d(TAG, "setManualZenMode " + Settings.Global.zenModeToString(zenMode) + " conditionId=" + conditionId + " reason=" + reason + " setRingerMode=" + setRingerMode);
                    }
                    ZenModeConfig newConfig = this.mConfig.copy();
                    if (zenMode == 0) {
                        newConfig.manualRule = null;
                        for (ZenModeConfig.ZenRule automaticRule : newConfig.automaticRules.values()) {
                            if (automaticRule.isAutomaticActive()) {
                                automaticRule.snoozing = true;
                            }
                        }
                    } else {
                        ZenModeConfig.ZenRule newRule = new ZenModeConfig.ZenRule();
                        newRule.enabled = true;
                        newRule.zenMode = zenMode;
                        newRule.conditionId = conditionId;
                        newRule.enabler = caller;
                        newConfig.manualRule = newRule;
                    }
                    setConfigLocked(newConfig, reason, (ComponentName) null, setRingerMode);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void dump(ProtoOutputStream proto) {
        proto.write(1159641169921L, this.mZenMode);
        synchronized (this.mConfig) {
            if (this.mConfig.manualRule != null) {
                this.mConfig.manualRule.writeToProto(proto, 2246267895810L);
            }
            for (ZenModeConfig.ZenRule rule : this.mConfig.automaticRules.values()) {
                if (rule.enabled && rule.condition.state == 1 && !rule.snoozing) {
                    rule.writeToProto(proto, 2246267895810L);
                }
            }
            this.mConfig.toNotificationPolicy().writeToProto(proto, 1146756268037L);
            proto.write(1120986464259L, this.mSuppressedEffects);
        }
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("mZenMode=");
        pw.println(Settings.Global.zenModeToString(this.mZenMode));
        pw.print("mConsolidatedPolicy=" + this.mConsolidatedPolicy.toString());
        int N = this.mConfigs.size();
        for (int i = 0; i < N; i++) {
            dump(pw, prefix, "mConfigs[u=" + this.mConfigs.keyAt(i) + "]", this.mConfigs.valueAt(i));
        }
        pw.print(prefix);
        pw.print("mUser=");
        pw.println(this.mUser);
        synchronized (this.mConfig) {
            dump(pw, prefix, "mConfig", this.mConfig);
        }
        pw.print(prefix);
        pw.print("mSuppressedEffects=");
        pw.println(this.mSuppressedEffects);
        this.mFiltering.dump(pw, prefix);
        this.mConditions.dump(pw, prefix);
    }

    private static void dump(PrintWriter pw, String prefix, String var, ZenModeConfig config) {
        pw.print(prefix);
        pw.print(var);
        pw.print('=');
        if (config == null) {
            pw.println(config);
            return;
        }
        pw.printf("allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,events=%b,reminders=%b)\n", new Object[]{Boolean.valueOf(config.allowAlarms), Boolean.valueOf(config.allowMedia), Boolean.valueOf(config.allowSystem), Boolean.valueOf(config.allowCalls), ZenModeConfig.sourceToString(config.allowCallsFrom), Boolean.valueOf(config.allowRepeatCallers), Boolean.valueOf(config.allowMessages), ZenModeConfig.sourceToString(config.allowMessagesFrom), Boolean.valueOf(config.allowEvents), Boolean.valueOf(config.allowReminders)});
        pw.printf(" disallow(visualEffects=%s)\n", new Object[]{Integer.valueOf(config.suppressedVisualEffects)});
        pw.print(prefix);
        pw.print("  manualRule=");
        pw.println(config.manualRule);
        if (!config.automaticRules.isEmpty()) {
            int N = config.automaticRules.size();
            int i = 0;
            while (i < N) {
                pw.print(prefix);
                pw.print(i == 0 ? "  automaticRules=" : "                 ");
                pw.println(config.automaticRules.valueAt(i));
                i++;
            }
        }
    }

    public void readXml(XmlPullParser parser, boolean forRestore, int userId) throws XmlPullParserException, IOException {
        String reason;
        int i = userId;
        ZenModeConfig config = ZenModeConfig.readXml(parser);
        if (config != null) {
            if (forRestore) {
                config.user = i;
                config.manualRule = null;
            }
            boolean allRulesDisabled = true;
            boolean hasDefaultRules = config.automaticRules.containsAll(ZenModeConfig.DEFAULT_RULE_IDS);
            long time = System.currentTimeMillis();
            int userId2 = 0;
            if (config.automaticRules != null && config.automaticRules.size() > 0) {
                for (ZenModeConfig.ZenRule automaticRule : config.automaticRules.values()) {
                    if (forRestore) {
                        automaticRule.snoozing = false;
                        automaticRule.condition = null;
                        automaticRule.creationTime = time;
                    }
                    allRulesDisabled &= !automaticRule.enabled;
                }
            }
            if (hasDefaultRules || !allRulesDisabled || (!forRestore && config.version >= 8)) {
                reason = "readXml";
            } else {
                config.automaticRules = new ArrayMap();
                for (ZenModeConfig.ZenRule rule : this.mDefaultConfig.automaticRules.values()) {
                    config.automaticRules.put(rule.id, rule);
                }
                reason = "readXml" + ", reset to default rules";
            }
            if (i != -1) {
                userId2 = i;
            }
            if (config.version < 8) {
                Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 1, userId2);
            } else {
                Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "zen_settings_updated", 1, userId2);
            }
            if (DEBUG) {
                Log.d(TAG, reason);
            }
            synchronized (this.mConfig) {
                setConfigLocked(config, (ComponentName) null, reason);
            }
            int i2 = userId2;
            return;
        }
        String reason2 = "readXml";
    }

    public void writeXml(XmlSerializer out, boolean forBackup, Integer version, int userId) throws IOException {
        synchronized (this.mConfigs) {
            int n = this.mConfigs.size();
            for (int i = 0; i < n; i++) {
                if (!forBackup || this.mConfigs.keyAt(i) == userId) {
                    this.mConfigs.valueAt(i).writeXml(out, version);
                }
            }
        }
    }

    public NotificationManager.Policy getNotificationPolicy() {
        return getNotificationPolicy(this.mConfig);
    }

    private static NotificationManager.Policy getNotificationPolicy(ZenModeConfig config) {
        if (config == null) {
            return null;
        }
        return config.toNotificationPolicy();
    }

    public void setNotificationPolicy(NotificationManager.Policy policy) {
        ZenModeConfig zenModeConfig;
        if (policy != null && (zenModeConfig = this.mConfig) != null) {
            synchronized (zenModeConfig) {
                ZenModeConfig newConfig = this.mConfig.copy();
                newConfig.applyNotificationPolicy(policy);
                setConfigLocked(newConfig, (ComponentName) null, "setNotificationPolicy");
            }
        }
    }

    private void cleanUpZenRules() {
        long currentTime = System.currentTimeMillis();
        synchronized (this.mConfig) {
            ZenModeConfig newConfig = this.mConfig.copy();
            if (newConfig.automaticRules != null) {
                for (int i = newConfig.automaticRules.size() - 1; i >= 0; i--) {
                    ZenModeConfig.ZenRule rule = (ZenModeConfig.ZenRule) newConfig.automaticRules.get(newConfig.automaticRules.keyAt(i));
                    if (259200000 < currentTime - rule.creationTime) {
                        try {
                            if (rule.pkg != null) {
                                this.mPm.getPackageInfo(rule.pkg, DumpState.DUMP_CHANGES);
                            }
                        } catch (PackageManager.NameNotFoundException e) {
                            newConfig.automaticRules.removeAt(i);
                        }
                    }
                }
            }
            setConfigLocked(newConfig, (ComponentName) null, "cleanUpZenRules");
        }
    }

    public ZenModeConfig getConfig() {
        ZenModeConfig copy;
        synchronized (this.mConfig) {
            copy = this.mConfig.copy();
        }
        return copy;
    }

    public NotificationManager.Policy getConsolidatedNotificationPolicy() {
        NotificationManager.Policy policy = this.mConsolidatedPolicy;
        if (policy == null) {
            return null;
        }
        return policy.copy();
    }

    public boolean setConfigLocked(ZenModeConfig config, ComponentName triggeringComponent, String reason) {
        return setConfigLocked(config, reason, triggeringComponent, true);
    }

    public void setConfig(ZenModeConfig config, ComponentName triggeringComponent, String reason) {
        synchronized (this.mConfig) {
            setConfigLocked(config, triggeringComponent, reason);
        }
    }

    private boolean setConfigLocked(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
        long identity = Binder.clearCallingIdentity();
        if (config != null) {
            try {
                if (config.isValid()) {
                    if (config.user != this.mUser) {
                        this.mConfigs.put(config.user, config);
                        if (DEBUG) {
                            Log.d(TAG, "setConfigLocked: store config for user " + config.user);
                        }
                        return true;
                    }
                    this.mConditions.evaluateConfig(config, (ComponentName) null, false);
                    this.mConfigs.put(config.user, config);
                    if (DEBUG) {
                        Log.d(TAG, "setConfigLocked reason=" + reason, new Throwable());
                    }
                    ZenLog.traceConfig(reason, this.mConfig, config);
                    boolean policyChanged = !Objects.equals(getNotificationPolicy(this.mConfig), getNotificationPolicy(config));
                    if (!config.equals(this.mConfig)) {
                        dispatchOnConfigChanged();
                        updateConsolidatedPolicy(reason);
                    }
                    if (policyChanged) {
                        dispatchOnPolicyChanged();
                    }
                    this.mConfig = config;
                    this.mHandler.postApplyConfig(config, reason, triggeringComponent, setRingerMode);
                    Binder.restoreCallingIdentity(identity);
                    return true;
                }
            } catch (SecurityException e) {
                Log.wtf(TAG, "Invalid rule in config", e);
                return false;
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
        Log.w(TAG, "Invalid config in setConfigLocked; " + config);
        Binder.restoreCallingIdentity(identity);
        return false;
    }

    /* access modifiers changed from: private */
    public void applyConfig(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
        Settings.Global.putString(this.mContext.getContentResolver(), "zen_mode_config_etag", Integer.toString(config.hashCode()));
        evaluateZenMode(reason, setRingerMode);
        this.mConditions.evaluateConfig(config, triggeringComponent, true);
    }

    /* access modifiers changed from: private */
    public int getZenModeSetting() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "zen_mode", 0);
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void setZenModeSetting(int zen) {
        Settings.Global.putInt(this.mContext.getContentResolver(), "zen_mode", zen);
        showZenUpgradeNotification(zen);
    }

    private int getPreviousRingerModeSetting() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "zen_mode_ringer_level", 2);
    }

    /* access modifiers changed from: private */
    public void setPreviousRingerModeSetting(Integer previousRingerLevel) {
        Settings.Global.putString(this.mContext.getContentResolver(), "zen_mode_ringer_level", previousRingerLevel == null ? null : Integer.toString(previousRingerLevel.intValue()));
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void evaluateZenMode(String reason, boolean setRingerMode) {
        int policyHashBefore;
        int zen;
        if (DEBUG) {
            Log.d(TAG, "evaluateZenMode");
        }
        if (this.mConfig != null) {
            NotificationManager.Policy policy = this.mConsolidatedPolicy;
            if (policy == null) {
                policyHashBefore = 0;
            } else {
                policyHashBefore = policy.hashCode();
            }
            int zenBefore = this.mZenMode;
            if (MiuiSettings.SilenceMode.isSupported) {
                zen = ZenModeHelperInjector.miuiComputeZenMode(reason, this.mConfig);
            } else {
                zen = computeZenMode();
            }
            ZenLog.traceSetZenMode(zen, reason);
            this.mZenMode = zen;
            setZenModeSetting(this.mZenMode);
            updateConsolidatedPolicy(reason);
            updateRingerModeAffectedStreams();
            if (setRingerMode && (zen != zenBefore || (zen == 1 && policyHashBefore != this.mConsolidatedPolicy.hashCode()))) {
                applyZenToRingerMode(reason);
            }
            applyRestrictions();
            if (zen != zenBefore) {
                this.mHandler.postDispatchOnZenModeChanged();
            }
        }
    }

    private void updateRingerModeAffectedStreams() {
        AudioManagerInternal audioManagerInternal = this.mAudioManager;
        if (audioManagerInternal != null) {
            audioManagerInternal.updateRingerModeAffectedStreamsInternal();
        }
    }

    private int computeZenMode() {
        ZenModeConfig zenModeConfig = this.mConfig;
        if (zenModeConfig == null) {
            return 0;
        }
        synchronized (zenModeConfig) {
            if (this.mConfig.manualRule != null) {
                int i = this.mConfig.manualRule.zenMode;
                return i;
            }
            int zen = 0;
            for (ZenModeConfig.ZenRule automaticRule : this.mConfig.automaticRules.values()) {
                if (automaticRule.isAutomaticActive() && zenSeverity(automaticRule.zenMode) > zenSeverity(zen)) {
                    if (Settings.Secure.getInt(this.mContext.getContentResolver(), "zen_settings_suggestion_viewed", 1) == 0) {
                        Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_settings_suggestion", 1);
                    }
                    zen = automaticRule.zenMode;
                }
            }
            return zen;
        }
    }

    private void applyCustomPolicy(ZenPolicy policy, ZenModeConfig.ZenRule rule) {
        if (rule.zenMode == 3) {
            policy.apply(new ZenPolicy.Builder().disallowAllSounds().build());
        } else if (rule.zenMode == 4) {
            policy.apply(new ZenPolicy.Builder().disallowAllSounds().allowAlarms(true).allowMedia(true).build());
        } else {
            policy.apply(rule.zenPolicy);
        }
    }

    private void updateConsolidatedPolicy(String reason) {
        ZenModeConfig zenModeConfig = this.mConfig;
        if (zenModeConfig != null) {
            synchronized (zenModeConfig) {
                ZenPolicy policy = new ZenPolicy();
                if (this.mConfig.manualRule != null) {
                    applyCustomPolicy(policy, this.mConfig.manualRule);
                }
                for (ZenModeConfig.ZenRule automaticRule : this.mConfig.automaticRules.values()) {
                    if (automaticRule.isAutomaticActive()) {
                        applyCustomPolicy(policy, automaticRule);
                    }
                }
                NotificationManager.Policy newPolicy = this.mConfig.toNotificationPolicy(policy);
                if (!Objects.equals(this.mConsolidatedPolicy, newPolicy)) {
                    this.mConsolidatedPolicy = newPolicy;
                    dispatchOnConsolidatedPolicyChanged();
                    ZenLog.traceSetConsolidatedZenPolicy(this.mConsolidatedPolicy, reason);
                }
            }
        }
    }

    private void updateDefaultAutomaticRuleNames() {
        for (ZenModeConfig.ZenRule rule : this.mDefaultConfig.automaticRules.values()) {
            if ("EVENTS_DEFAULT_RULE".equals(rule.id)) {
                rule.name = this.mContext.getResources().getString(17041446);
            } else if ("EVERY_NIGHT_DEFAULT_RULE".equals(rule.id)) {
                rule.name = this.mContext.getResources().getString(17041447);
            }
        }
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void applyRestrictions() {
        boolean muteCalls;
        boolean muteEverything;
        boolean zenPriorityOnly = this.mZenMode == 1;
        boolean zenSilence = this.mZenMode == 2;
        boolean zenAlarmsOnly = this.mZenMode == 3;
        boolean allowCalls = this.mConsolidatedPolicy.allowCalls();
        boolean allowRepeatCallers = this.mConsolidatedPolicy.allowRepeatCallers();
        boolean allowSystem = this.mConsolidatedPolicy.allowSystem();
        boolean allowMedia = this.mConsolidatedPolicy.allowMedia();
        boolean allowAlarms = this.mConsolidatedPolicy.allowAlarms();
        boolean muteNotifications = (this.mSuppressedEffects & 1) != 0;
        boolean muteCalls2 = zenAlarmsOnly || (zenPriorityOnly && !allowCalls && !allowRepeatCallers) || (this.mSuppressedEffects & 2) != 0;
        boolean muteAlarms = zenPriorityOnly && !allowAlarms;
        boolean muteMedia = zenPriorityOnly && !allowMedia;
        boolean muteSystem = zenAlarmsOnly || (zenPriorityOnly && !allowSystem);
        boolean muteEverything2 = zenSilence || (zenPriorityOnly && ZenModeConfig.areAllZenBehaviorSoundsMuted(this.mConsolidatedPolicy));
        int[] iArr = AudioAttributes.SDK_USAGES;
        int length = iArr.length;
        boolean z = zenSilence;
        int i = 0;
        while (i < length) {
            boolean zenAlarmsOnly2 = zenAlarmsOnly;
            int usage = iArr[i];
            int[] iArr2 = iArr;
            int suppressionBehavior = AudioAttributes.SUPPRESSIBLE_USAGES.get(usage);
            int i2 = length;
            if (suppressionBehavior == 3) {
                applyRestrictions(zenPriorityOnly, false, usage);
                muteEverything = muteEverything2;
                muteCalls = muteCalls2;
            } else {
                muteEverything = muteEverything2;
                boolean muteEverything3 = true;
                if (suppressionBehavior == 1) {
                    if (!muteNotifications && !muteEverything) {
                        muteEverything3 = false;
                    }
                    applyRestrictions(zenPriorityOnly, muteEverything3, usage);
                    muteCalls = muteCalls2;
                } else if (suppressionBehavior == 2) {
                    applyRestrictions(zenPriorityOnly, muteCalls2 || muteEverything, usage);
                    muteCalls = muteCalls2;
                } else if (suppressionBehavior == 4) {
                    applyRestrictions(zenPriorityOnly, muteAlarms || muteEverything, usage);
                    muteCalls = muteCalls2;
                } else if (suppressionBehavior == 5) {
                    applyRestrictions(zenPriorityOnly, muteMedia || muteEverything, usage);
                    muteCalls = muteCalls2;
                } else if (suppressionBehavior != 6) {
                    muteCalls = muteCalls2;
                    applyRestrictions(zenPriorityOnly, muteEverything, usage);
                } else if (usage == 13) {
                    muteCalls = muteCalls2;
                    applyRestrictions(zenPriorityOnly, muteSystem || muteEverything, usage, 28);
                    applyRestrictions(zenPriorityOnly, false, usage, 3);
                } else {
                    muteCalls = muteCalls2;
                    applyRestrictions(zenPriorityOnly, muteSystem || muteEverything, usage);
                }
            }
            i++;
            muteEverything2 = muteEverything;
            zenAlarmsOnly = zenAlarmsOnly2;
            iArr = iArr2;
            length = i2;
            muteCalls2 = muteCalls;
        }
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void applyRestrictions(boolean zenPriorityOnly, boolean mute, int usage, int code) {
        long ident = Binder.clearCallingIdentity();
        try {
            this.mAppOps.setRestriction(code, usage, mute, zenPriorityOnly ? this.mPriorityOnlyDndExemptPackages : null);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void applyRestrictions(boolean zenPriorityOnly, boolean mute, int usage) {
        applyRestrictions(zenPriorityOnly, mute, usage, 3);
        applyRestrictions(zenPriorityOnly, mute, usage, 28);
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void applyZenToRingerMode(String reason) {
        AudioManagerInternal audioManagerInternal = this.mAudioManager;
        if (audioManagerInternal != null) {
            int ringerModeInternal = audioManagerInternal.getRingerModeInternal();
            int newRingerModeInternal = ringerModeInternal;
            int i = this.mZenMode;
            int i2 = 1;
            if (i == 0 || i == 1) {
                if (ringerModeInternal == 0 || ringerModeInternal == 1) {
                    newRingerModeInternal = getPreviousRingerModeSetting();
                    setPreviousRingerModeSetting((Integer) null);
                }
                if (reason != null && reason.equals("miui_manual")) {
                    newRingerModeInternal = 2;
                    Log.d(TAG, "miui custom slient mode, set ringer mode force to normal");
                }
            } else if (i == 2 || i == 3) {
                if (ringerModeInternal != 0) {
                    setPreviousRingerModeSetting(Integer.valueOf(ringerModeInternal));
                    newRingerModeInternal = 0;
                }
            } else if (i == 4) {
                setPreviousRingerModeSetting((Integer) null);
                if (!AudioManagerHelper.isNewVibrateEnabledForUser(this.mContext, -3)) {
                    i2 = 0;
                }
                newRingerModeInternal = i2;
            }
            if (newRingerModeInternal != -1) {
                this.mAudioManager.setRingerModeInternal(newRingerModeInternal, TAG);
            }
        }
    }

    private void dispatchOnConfigChanged() {
        Iterator<Callback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onConfigChanged();
        }
    }

    private void dispatchOnPolicyChanged() {
        Iterator<Callback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onPolicyChanged();
        }
    }

    private void dispatchOnConsolidatedPolicyChanged() {
        Iterator<Callback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onConsolidatedPolicyChanged();
        }
    }

    /* access modifiers changed from: private */
    public void dispatchOnZenModeChanged() {
        Iterator<Callback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onZenModeChanged();
        }
    }

    private ZenModeConfig readDefaultConfig(Resources resources) {
        XmlResourceParser parser = null;
        try {
            parser = resources.getXml(18284551);
            while (parser.next() != 1) {
                ZenModeConfig config = ZenModeConfig.readXml(parser);
                if (config != null) {
                    IoUtils.closeQuietly(parser);
                    return config;
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "Error reading default zen mode config from resource", e);
        } catch (Throwable th) {
            IoUtils.closeQuietly((AutoCloseable) null);
            throw th;
        }
        IoUtils.closeQuietly(parser);
        return new ZenModeConfig();
    }

    private static int zenSeverity(int zen) {
        if (zen == 1) {
            return 1;
        }
        if (zen == 2) {
            return 3;
        }
        if (zen != 3) {
            return 0;
        }
        return 2;
    }

    @VisibleForTesting
    protected final class RingerModeDelegate implements AudioManagerInternal.RingerModeDelegate {
        protected RingerModeDelegate() {
        }

        public String toString() {
            return ZenModeHelper.TAG;
        }

        public int onSetRingerModeInternal(int ringerModeOld, int ringerModeNew, String caller, int ringerModeExternal, VolumePolicy policy) {
            int i = ringerModeOld;
            int i2 = ringerModeNew;
            int i3 = ringerModeExternal;
            boolean isChange = i != i2;
            int ringerModeExternalOut = ringerModeNew;
            if (ZenModeHelper.this.mZenMode == 0 || (ZenModeHelper.this.mZenMode == 1 && !ZenModeConfig.areAllPriorityOnlyNotificationZenSoundsMuted(ZenModeHelper.this.mConfig))) {
                ZenModeHelper.this.setPreviousRingerModeSetting(Integer.valueOf(ringerModeNew));
            }
            int newZen = -1;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    VolumePolicy volumePolicy = policy;
                } else if (isChange && i == 0 && (ZenModeHelper.this.mZenMode == 2 || ZenModeHelper.this.mZenMode == 3 || (ZenModeHelper.this.mZenMode == 1 && ZenModeConfig.areAllPriorityOnlyNotificationZenSoundsMuted(ZenModeHelper.this.mConfig)))) {
                    newZen = 0;
                    VolumePolicy volumePolicy2 = policy;
                } else if (ZenModeHelper.this.mZenMode != 0) {
                    ringerModeExternalOut = 0;
                    VolumePolicy volumePolicy3 = policy;
                } else {
                    VolumePolicy volumePolicy4 = policy;
                }
            } else if (!isChange) {
                VolumePolicy volumePolicy5 = policy;
            } else if (policy.doNotDisturbWhenSilent) {
                if (ZenModeHelper.this.mZenMode == 0) {
                    newZen = 1;
                }
                ZenModeHelper.this.setPreviousRingerModeSetting(Integer.valueOf(ringerModeOld));
            }
            ZenModeHelper zenModeHelper = ZenModeHelper.this;
            int newZen2 = ZenModeHelperInjector.applyRingerModeToZen(zenModeHelper, zenModeHelper.mContext, i, i2, newZen);
            int ringerModeExternalOut2 = ZenModeHelperInjector.getOutRingerMode(newZen2, ZenModeHelper.this.mZenMode, i2, ringerModeExternalOut);
            if (newZen2 == 2) {
                ZenModeHelper.this.setPreviousRingerModeSetting((Integer) null);
            }
            if (newZen2 != -1) {
                ZenModeHelper.this.setManualZenMode(newZen2, (Uri) null, "ringerModeInternal", (String) null, false);
            }
            if (!isChange && newZen2 == -1 && i3 == ringerModeExternalOut2) {
                String str = caller;
            } else {
                ZenLog.traceSetRingerModeInternal(i, i2, caller, i3, ringerModeExternalOut2);
            }
            return ringerModeExternalOut2;
        }

        public int onSetRingerModeExternal(int ringerModeOld, int ringerModeNew, String caller, int ringerModeInternal, VolumePolicy policy) {
            int i = ringerModeOld;
            int i2 = ringerModeNew;
            int i3 = ringerModeInternal;
            int ringerModeInternalOut = ringerModeNew;
            int i4 = 0;
            boolean isChange = i != i2;
            boolean isVibrate = i3 == 1;
            int newZen = -1;
            if (i2 != 0) {
                if ((i2 == 1 || i2 == 2) && ZenModeHelper.this.mZenMode != 0) {
                    newZen = 0;
                }
            } else if (isChange) {
                if (ZenModeHelper.this.mZenMode == 0) {
                    newZen = 1;
                }
                if (isVibrate) {
                    i4 = 1;
                }
                ringerModeInternalOut = i4;
            } else {
                ringerModeInternalOut = ringerModeInternal;
            }
            ZenModeHelper zenModeHelper = ZenModeHelper.this;
            int newZen2 = ZenModeHelperInjector.applyRingerModeToZen(zenModeHelper, zenModeHelper.mContext, i, i2, newZen);
            int ringerModeInternalOut2 = ZenModeHelperInjector.getOutRingerMode(newZen2, ZenModeHelper.this.mZenMode, i2, ringerModeInternalOut);
            if (newZen2 != -1) {
                ZenModeHelper.this.setManualZenMode(newZen2, (Uri) null, "ringerModeExternal", caller, false);
            }
            ZenLog.traceSetRingerModeExternal(i, i2, caller, i3, ringerModeInternalOut2);
            return ringerModeInternalOut2;
        }

        public boolean canVolumeDownEnterSilent() {
            return ZenModeHelper.this.mZenMode == 0;
        }

        public int getRingerModeAffectedStreams(int streams) {
            int streams2;
            int streams3;
            int streams4 = streams | 38;
            if (ZenModeHelper.this.mZenMode == 2) {
                streams2 = streams4 | 24;
            } else {
                streams2 = streams4 & -25;
            }
            if (ZenModeHelper.this.mZenMode != 1 || !ZenModeConfig.areAllPriorityOnlyNotificationZenSoundsMuted(ZenModeHelper.this.mConfig)) {
                streams3 = streams2 | 2;
            } else {
                streams3 = streams2 & -3;
            }
            return AudioServiceInjector.getRingerModeAffectedStreams(streams3, ZenModeHelper.this.mContext);
        }
    }

    private final class SettingsObserver extends ContentObserver {
        private final Uri ZEN_MODE = Settings.Global.getUriFor("zen_mode");

        public SettingsObserver(Handler handler) {
            super(handler);
        }

        public void observe() {
            ZenModeHelper.this.mContext.getContentResolver().registerContentObserver(this.ZEN_MODE, false, this);
            update((Uri) null);
        }

        public void onChange(boolean selfChange, Uri uri) {
            update(uri);
        }

        public void update(Uri uri) {
            if (this.ZEN_MODE.equals(uri) && ZenModeHelper.this.mZenMode != ZenModeHelper.this.getZenModeSetting()) {
                if (ZenModeHelper.DEBUG) {
                    Log.d(ZenModeHelper.TAG, "Fixing zen mode setting");
                }
                ZenModeHelper zenModeHelper = ZenModeHelper.this;
                zenModeHelper.setZenModeSetting(zenModeHelper.mZenMode);
            }
        }
    }

    private void showZenUpgradeNotification(int zen) {
        boolean isWatch = this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        boolean z = true;
        if (!this.mIsBootComplete || zen == 0 || isWatch || Settings.Secure.getInt(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 0) == 0 || Settings.Secure.getInt(this.mContext.getContentResolver(), "zen_settings_updated", 0) == 1) {
            z = false;
        }
        boolean showNotification = z;
        if (isWatch) {
            Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 0);
        }
        if (showNotification) {
            this.mNotificationManager.notify(TAG, 48, createZenUpgradeNotification());
            Settings.Secure.putInt(this.mContext.getContentResolver(), "show_zen_upgrade_notification", 0);
        }
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public Notification createZenUpgradeNotification() {
        Bundle extras = new Bundle();
        extras.putString("android.substName", this.mContext.getResources().getString(17040112));
        int title = 17041457;
        int content = 17041456;
        int drawable = 17302880;
        if (NotificationManager.Policy.areAllVisualEffectsSuppressed(getConsolidatedNotificationPolicy().suppressedVisualEffects)) {
            title = 17041459;
            content = 17041458;
            drawable = 17302389;
        }
        Intent onboardingIntent = new Intent("android.settings.ZEN_MODE_ONBOARDING");
        onboardingIntent.addFlags(268468224);
        return new Notification.Builder(this.mContext, SystemNotificationChannels.DO_NOT_DISTURB).setAutoCancel(true).setSmallIcon(17302810).setLargeIcon(Icon.createWithResource(this.mContext, drawable)).setContentTitle(this.mContext.getResources().getString(title)).setContentText(this.mContext.getResources().getString(content)).setContentIntent(PendingIntent.getActivity(this.mContext, 0, onboardingIntent, 134217728)).setAutoCancel(true).setLocalOnly(true).addExtras(extras).setStyle(new Notification.BigTextStyle()).build();
    }

    private final class Metrics extends Callback {
        private static final String COUNTER_MODE_PREFIX = "dnd_mode_";
        private static final String COUNTER_RULE = "dnd_rule_count";
        private static final String COUNTER_TYPE_PREFIX = "dnd_type_";
        private static final int DND_OFF = 0;
        private static final int DND_ON_AUTOMATIC = 2;
        private static final int DND_ON_MANUAL = 1;
        private static final long MINIMUM_LOG_PERIOD_MS = 60000;
        private long mModeLogTimeMs;
        private int mNumZenRules;
        private int mPreviousZenMode;
        private int mPreviousZenType;
        private long mRuleCountLogTime;
        private long mTypeLogTimeMs;

        private Metrics() {
            this.mPreviousZenMode = -1;
            this.mModeLogTimeMs = 0;
            this.mNumZenRules = -1;
            this.mRuleCountLogTime = 0;
            this.mPreviousZenType = -1;
            this.mTypeLogTimeMs = 0;
        }

        /* access modifiers changed from: package-private */
        public void onZenModeChanged() {
            emit();
        }

        /* access modifiers changed from: package-private */
        public void onConfigChanged() {
            emit();
        }

        /* access modifiers changed from: private */
        public void emit() {
            ZenModeHelper.this.mHandler.postMetricsTimer();
            emitZenMode();
            emitRules();
            emitDndType();
        }

        private void emitZenMode() {
            long now = SystemClock.elapsedRealtime();
            long since = now - this.mModeLogTimeMs;
            if (this.mPreviousZenMode != ZenModeHelper.this.mZenMode || since > 60000) {
                if (this.mPreviousZenMode != -1) {
                    Context access$600 = ZenModeHelper.this.mContext;
                    MetricsLogger.count(access$600, COUNTER_MODE_PREFIX + this.mPreviousZenMode, (int) since);
                }
                this.mPreviousZenMode = ZenModeHelper.this.mZenMode;
                this.mModeLogTimeMs = now;
            }
        }

        private void emitRules() {
            long since = SystemClock.elapsedRealtime() - this.mRuleCountLogTime;
            synchronized (ZenModeHelper.this.mConfig) {
                int numZenRules = ZenModeHelper.this.mConfig.automaticRules.size();
                if (this.mNumZenRules != numZenRules || since > 60000) {
                    if (this.mNumZenRules != -1) {
                        MetricsLogger.count(ZenModeHelper.this.mContext, COUNTER_RULE, numZenRules - this.mNumZenRules);
                    }
                    this.mNumZenRules = numZenRules;
                    this.mRuleCountLogTime = since;
                }
            }
        }

        private void emitDndType() {
            long now = SystemClock.elapsedRealtime();
            long since = now - this.mTypeLogTimeMs;
            synchronized (ZenModeHelper.this.mConfig) {
                int zenType = 1;
                if (!(ZenModeHelper.this.mZenMode != 0)) {
                    zenType = 0;
                } else if (ZenModeHelper.this.mConfig.manualRule == null) {
                    zenType = 2;
                }
                if (zenType != this.mPreviousZenType || since > 60000) {
                    if (this.mPreviousZenType != -1) {
                        MetricsLogger.count(ZenModeHelper.this.mContext, COUNTER_TYPE_PREFIX + this.mPreviousZenType, (int) since);
                    }
                    this.mTypeLogTimeMs = now;
                    this.mPreviousZenType = zenType;
                }
            }
        }
    }

    private final class H extends Handler {
        private static final long METRICS_PERIOD_MS = 21600000;
        private static final int MSG_APPLY_CONFIG = 4;
        private static final int MSG_DISPATCH = 1;
        private static final int MSG_METRICS = 2;

        private final class ConfigMessageData {
            public final ZenModeConfig config;
            public final String reason;
            public final boolean setRingerMode;
            public ComponentName triggeringComponent;

            ConfigMessageData(ZenModeConfig config2, String reason2, ComponentName triggeringComponent2, boolean setRingerMode2) {
                this.config = config2;
                this.reason = reason2;
                this.setRingerMode = setRingerMode2;
                this.triggeringComponent = triggeringComponent2;
            }
        }

        private H(Looper looper) {
            super(looper);
        }

        /* access modifiers changed from: private */
        public void postDispatchOnZenModeChanged() {
            removeMessages(1);
            sendEmptyMessage(1);
        }

        /* access modifiers changed from: private */
        public void postMetricsTimer() {
            removeMessages(2);
            sendEmptyMessageDelayed(2, METRICS_PERIOD_MS);
        }

        /* access modifiers changed from: private */
        public void postApplyConfig(ZenModeConfig config, String reason, ComponentName triggeringComponent, boolean setRingerMode) {
            sendMessage(obtainMessage(4, new ConfigMessageData(config, reason, triggeringComponent, setRingerMode)));
        }

        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                ZenModeHelper.this.dispatchOnZenModeChanged();
            } else if (i == 2) {
                ZenModeHelper.this.mMetrics.emit();
            } else if (i == 4) {
                ConfigMessageData applyConfigData = (ConfigMessageData) msg.obj;
                ZenModeHelper.this.applyConfig(applyConfigData.config, applyConfigData.reason, applyConfigData.triggeringComponent, applyConfigData.setRingerMode);
            }
        }
    }

    public static class Callback {
        /* access modifiers changed from: package-private */
        public void onConfigChanged() {
        }

        /* access modifiers changed from: package-private */
        public void onZenModeChanged() {
        }

        /* access modifiers changed from: package-private */
        public void onPolicyChanged() {
        }

        /* access modifiers changed from: package-private */
        public void onConsolidatedPolicyChanged() {
        }
    }
}
