package com.android.server.timezone;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.os.UserHandle;
import android.util.Slog;
import java.util.List;

final class PackageTrackerHelperImpl implements ConfigHelper, PackageManagerHelper {
    private static final String TAG = "PackageTrackerHelperImpl";
    private final Context mContext;
    private final PackageManager mPackageManager;

    PackageTrackerHelperImpl(Context context) {
        this.mContext = context;
        this.mPackageManager = context.getPackageManager();
    }

    public boolean isTrackingEnabled() {
        return this.mContext.getResources().getBoolean(17891556);
    }

    public String getUpdateAppPackageName() {
        return this.mContext.getResources().getString(17039796);
    }

    public String getDataAppPackageName() {
        return this.mContext.getResources().getString(17039795);
    }

    public int getCheckTimeAllowedMillis() {
        return this.mContext.getResources().getInteger(17694903);
    }

    public int getFailedCheckRetryCount() {
        return this.mContext.getResources().getInteger(17694902);
    }

    public long getInstalledPackageVersion(String packageName) throws PackageManager.NameNotFoundException {
        return this.mPackageManager.getPackageInfo(packageName, 32768).getLongVersionCode();
    }

    public boolean isPrivilegedApp(String packageName) throws PackageManager.NameNotFoundException {
        return this.mPackageManager.getPackageInfo(packageName, 32768).applicationInfo.isPrivilegedApp();
    }

    public boolean usesPermission(String packageName, String requiredPermissionName) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo = this.mPackageManager.getPackageInfo(packageName, 36864);
        if (packageInfo.requestedPermissions == null) {
            return false;
        }
        for (String requestedPermission : packageInfo.requestedPermissions) {
            if (requiredPermissionName.equals(requestedPermission)) {
                return true;
            }
        }
        return false;
    }

    public boolean contentProviderRegistered(String authority, String requiredPackageName) {
        ProviderInfo providerInfo = this.mPackageManager.resolveContentProviderAsUser(authority, 32768, UserHandle.SYSTEM.getIdentifier());
        if (providerInfo == null) {
            Slog.i(TAG, "contentProviderRegistered: No content provider registered with authority=" + authority);
            return false;
        } else if (requiredPackageName.equals(providerInfo.applicationInfo.packageName)) {
            return true;
        } else {
            Slog.i(TAG, "contentProviderRegistered: App with packageName=" + requiredPackageName + " does not expose the a content provider with authority=" + authority);
            return false;
        }
    }

    public boolean receiverRegistered(Intent intent, String requiredPermissionName) throws PackageManager.NameNotFoundException {
        List<ResolveInfo> resolveInfo = this.mPackageManager.queryBroadcastReceiversAsUser(intent, 32768, UserHandle.SYSTEM);
        if (resolveInfo.size() != 1) {
            Slog.i(TAG, "receiverRegistered: Zero or multiple broadcast receiver registered for intent=" + intent + ", found=" + resolveInfo);
            return false;
        }
        boolean requiresPermission = requiredPermissionName.equals(resolveInfo.get(0).activityInfo.permission);
        if (!requiresPermission) {
            Slog.i(TAG, "receiverRegistered: Broadcast receiver registered for intent=" + intent + " must require permission " + requiredPermissionName);
        }
        return requiresPermission;
    }
}
