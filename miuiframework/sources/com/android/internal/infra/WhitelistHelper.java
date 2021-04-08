package com.android.internal.infra;

import android.content.ComponentName;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;

public final class WhitelistHelper {
    private static final String TAG = "WhitelistHelper";
    private ArrayMap<String, ArraySet<ComponentName>> mWhitelistedPackages;

    public void setWhitelist(ArraySet<String> packageNames, ArraySet<ComponentName> components) {
        this.mWhitelistedPackages = null;
        if (packageNames != null || components != null) {
            if ((packageNames == null || !packageNames.isEmpty()) && (components == null || !components.isEmpty())) {
                this.mWhitelistedPackages = new ArrayMap();
                if (packageNames != null) {
                    for (int i = 0; i < packageNames.size(); i++) {
                        this.mWhitelistedPackages.put((String) packageNames.valueAt(i), null);
                    }
                }
                if (components != null) {
                    for (int i2 = 0; i2 < components.size(); i2++) {
                        ComponentName component = (ComponentName) components.valueAt(i2);
                        if (component == null) {
                            Log.w(TAG, "setWhitelist(): component is null");
                        } else {
                            String packageName = component.getPackageName();
                            ArraySet<ComponentName> set = (ArraySet) this.mWhitelistedPackages.get(packageName);
                            if (set == null) {
                                set = new ArraySet();
                                this.mWhitelistedPackages.put(packageName, set);
                            }
                            set.add(component);
                        }
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Packages or Components cannot be empty.");
        }
    }

    public void setWhitelist(List<String> packageNames, List<ComponentName> components) {
        ArraySet packageNamesSet;
        ArraySet componentsSet = null;
        if (packageNames == null) {
            packageNamesSet = null;
        } else {
            packageNamesSet = new ArraySet((Collection) packageNames);
        }
        if (components != null) {
            componentsSet = new ArraySet((Collection) components);
        }
        setWhitelist(packageNamesSet, componentsSet);
    }

    public boolean isWhitelisted(String packageName) {
        Preconditions.checkNotNull(packageName);
        ArrayMap arrayMap = this.mWhitelistedPackages;
        boolean z = false;
        if (arrayMap == null) {
            return false;
        }
        if (arrayMap.containsKey(packageName) && this.mWhitelistedPackages.get(packageName) == null) {
            z = true;
        }
        return z;
    }

    public boolean isWhitelisted(ComponentName componentName) {
        Preconditions.checkNotNull(componentName);
        String packageName = componentName.getPackageName();
        ArraySet<ComponentName> whitelistedComponents = getWhitelistedComponents(packageName);
        if (whitelistedComponents != null) {
            return whitelistedComponents.contains(componentName);
        }
        return isWhitelisted(packageName);
    }

    public ArraySet<ComponentName> getWhitelistedComponents(String packageName) {
        Preconditions.checkNotNull(packageName);
        ArrayMap arrayMap = this.mWhitelistedPackages;
        return arrayMap == null ? null : (ArraySet) arrayMap.get(packageName);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("WhitelistHelper[");
        stringBuilder.append(this.mWhitelistedPackages);
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void dump(String prefix, String message, PrintWriter pw) {
        ArrayMap arrayMap = this.mWhitelistedPackages;
        if (arrayMap == null || arrayMap.size() == 0) {
            pw.print(prefix);
            pw.print(message);
            pw.println(": (no whitelisted packages)");
            return;
        }
        String prefix2 = new StringBuilder();
        prefix2.append(prefix);
        prefix2.append("  ");
        prefix2 = prefix2.toString();
        int size = this.mWhitelistedPackages.size();
        pw.print(prefix);
        pw.print(message);
        String str = ": ";
        pw.print(str);
        pw.print(size);
        pw.println(" packages");
        for (int i = 0; i < this.mWhitelistedPackages.size(); i++) {
            String packageName = (String) this.mWhitelistedPackages.keyAt(i);
            ArraySet<ComponentName> components = (ArraySet) this.mWhitelistedPackages.valueAt(i);
            pw.print(prefix2);
            pw.print(i);
            pw.print(".");
            pw.print(packageName);
            pw.print(str);
            if (components == null) {
                pw.println("(whole package)");
            } else {
                pw.print("[");
                pw.print(components.valueAt(0));
                for (int j = 1; j < components.size(); j++) {
                    pw.print(", ");
                    pw.print(components.valueAt(j));
                }
                pw.println("]");
            }
        }
    }
}
