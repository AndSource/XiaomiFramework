package android.content.pm;

import android.annotation.UnsupportedAppUsage;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.UserHandle;
import android.os.UserManager;

public class UserInfo implements Parcelable {
    @UnsupportedAppUsage
    public static final Creator<UserInfo> CREATOR = new Creator<UserInfo>() {
        public UserInfo createFromParcel(Parcel source) {
            return new UserInfo(source, null);
        }

        public UserInfo[] newArray(int size) {
            return new UserInfo[size];
        }
    };
    public static final int FLAG_ADMIN = 2;
    public static final int FLAG_AIR_SPACE = 4194304;
    public static final int FLAG_DEMO = 512;
    public static final int FLAG_DISABLED = 64;
    public static final int FLAG_EPHEMERAL = 256;
    public static final int FLAG_GUEST = 4;
    public static final int FLAG_INITIALIZED = 16;
    public static final int FLAG_MANAGED_PROFILE = 32;
    public static final int FLAG_MASK_USER_TYPE = 65535;
    @UnsupportedAppUsage
    public static final int FLAG_PRIMARY = 1;
    public static final int FLAG_QUIET_MODE = 128;
    public static final int FLAG_RESTRICTED = 8;
    public static final int FLAG_XSPACE_PROFILE = 8388608;
    public static final int FLAG__MASK_XSPACE_PROFILE_TYPE = 15728640;
    public static final int NO_PROFILE_GROUP_ID = -10000;
    @UnsupportedAppUsage
    public long creationTime;
    @UnsupportedAppUsage
    public int flags;
    @UnsupportedAppUsage
    public boolean guestToRemove;
    @UnsupportedAppUsage
    public String iconPath;
    @UnsupportedAppUsage
    public int id;
    public String lastLoggedInFingerprint;
    @UnsupportedAppUsage
    public long lastLoggedInTime;
    @UnsupportedAppUsage
    public String name;
    @UnsupportedAppUsage
    public boolean partial;
    public int profileBadge;
    @UnsupportedAppUsage
    public int profileGroupId;
    public int restrictedProfileParentId;
    @UnsupportedAppUsage
    public int serialNumber;

    /* synthetic */ UserInfo(Parcel x0, AnonymousClass1 x1) {
        this(x0);
    }

    @UnsupportedAppUsage
    public UserInfo(int id, String name, int flags) {
        this(id, name, null, flags);
    }

    @UnsupportedAppUsage
    public UserInfo(int id, String name, String iconPath, int flags) {
        this.id = id;
        this.name = name;
        this.flags = flags;
        this.iconPath = iconPath;
        this.profileGroupId = -10000;
        this.restrictedProfileParentId = -10000;
    }

    @UnsupportedAppUsage
    public boolean isPrimary() {
        return (this.flags & 1) == 1;
    }

    @UnsupportedAppUsage
    public boolean isAdmin() {
        return (this.flags & 2) == 2;
    }

    @UnsupportedAppUsage
    public boolean isGuest() {
        return (this.flags & 4) == 4;
    }

    @UnsupportedAppUsage
    public boolean isRestricted() {
        return (this.flags & 8) == 8;
    }

    @UnsupportedAppUsage
    public boolean isManagedProfile() {
        return (this.flags & 32) == 32;
    }

    @UnsupportedAppUsage
    public boolean isEnabled() {
        return (this.flags & 64) != 64;
    }

    public boolean isQuietModeEnabled() {
        return (this.flags & 128) == 128;
    }

    public boolean isEphemeral() {
        return (this.flags & 256) == 256;
    }

    public boolean isInitialized() {
        return (this.flags & 16) == 16;
    }

    public boolean isDemo() {
        return (this.flags & 512) == 512;
    }

    public boolean isSystemOnly() {
        return isSystemOnly(this.id);
    }

    public static boolean isSystemOnly(int userId) {
        return userId == 0 && UserManager.isSplitSystemUser();
    }

    public boolean isAirSpace() {
        return (this.flags & 4194304) == 4194304;
    }

    public boolean supportsSwitchTo() {
        if (!isEphemeral() || isEnabled()) {
            return isManagedProfile() ^ 1;
        }
        return false;
    }

    public boolean supportsSwitchToByUser() {
        return !(UserManager.isSplitSystemUser() && this.id == 0) && supportsSwitchTo();
    }

    public boolean canHaveProfile() {
        boolean z = false;
        if (isManagedProfile() || isGuest() || isRestricted()) {
            return false;
        }
        if (UserManager.isSplitSystemUser()) {
            if (this.id != 0) {
                z = true;
            }
            return z;
        }
        if (this.id == 0) {
            z = true;
        }
        return z;
    }

    public UserInfo(UserInfo orig) {
        this.name = orig.name;
        this.iconPath = orig.iconPath;
        this.id = orig.id;
        this.flags = orig.flags;
        this.serialNumber = orig.serialNumber;
        this.creationTime = orig.creationTime;
        this.lastLoggedInTime = orig.lastLoggedInTime;
        this.lastLoggedInFingerprint = orig.lastLoggedInFingerprint;
        this.partial = orig.partial;
        this.profileGroupId = orig.profileGroupId;
        this.restrictedProfileParentId = orig.restrictedProfileParentId;
        this.guestToRemove = orig.guestToRemove;
        this.profileBadge = orig.profileBadge;
    }

    @UnsupportedAppUsage
    public UserHandle getUserHandle() {
        return new UserHandle(this.id);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("UserInfo{");
        stringBuilder.append(this.id);
        String str = ":";
        stringBuilder.append(str);
        stringBuilder.append(this.name);
        stringBuilder.append(str);
        stringBuilder.append(Integer.toHexString(this.flags));
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int parcelableFlags) {
        dest.writeInt(this.id);
        dest.writeString(this.name);
        dest.writeString(this.iconPath);
        dest.writeInt(this.flags);
        dest.writeInt(this.serialNumber);
        dest.writeLong(this.creationTime);
        dest.writeLong(this.lastLoggedInTime);
        dest.writeString(this.lastLoggedInFingerprint);
        dest.writeInt(this.partial);
        dest.writeInt(this.profileGroupId);
        dest.writeInt(this.guestToRemove);
        dest.writeInt(this.restrictedProfileParentId);
        dest.writeInt(this.profileBadge);
    }

    private UserInfo(Parcel source) {
        this.id = source.readInt();
        this.name = source.readString();
        this.iconPath = source.readString();
        this.flags = source.readInt();
        this.serialNumber = source.readInt();
        this.creationTime = source.readLong();
        this.lastLoggedInTime = source.readLong();
        this.lastLoggedInFingerprint = source.readString();
        boolean z = true;
        this.partial = source.readInt() != 0;
        this.profileGroupId = source.readInt();
        if (source.readInt() == 0) {
            z = false;
        }
        this.guestToRemove = z;
        this.restrictedProfileParentId = source.readInt();
        this.profileBadge = source.readInt();
    }
}
