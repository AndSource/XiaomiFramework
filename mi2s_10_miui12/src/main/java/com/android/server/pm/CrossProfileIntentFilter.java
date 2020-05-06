package com.android.server.pm;

import android.content.IntentFilter;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class CrossProfileIntentFilter extends IntentFilter {
    private static final String ATTR_FILTER = "filter";
    private static final String ATTR_FLAGS = "flags";
    private static final String ATTR_OWNER_PACKAGE = "ownerPackage";
    private static final String ATTR_TARGET_USER_ID = "targetUserId";
    private static final String TAG = "CrossProfileIntentFilter";
    final int mFlags;
    final String mOwnerPackage;
    final int mTargetUserId;

    CrossProfileIntentFilter(IntentFilter filter, String ownerPackage, int targetUserId, int flags) {
        super(filter);
        this.mTargetUserId = targetUserId;
        this.mOwnerPackage = ownerPackage;
        this.mFlags = flags;
    }

    public int getTargetUserId() {
        return this.mTargetUserId;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public String getOwnerPackage() {
        return this.mOwnerPackage;
    }

    CrossProfileIntentFilter(XmlPullParser parser) throws XmlPullParserException, IOException {
        this.mTargetUserId = getIntFromXml(parser, ATTR_TARGET_USER_ID, ScreenRotationAnimationInjector.BLACK_SURFACE_INVALID_POSITION);
        this.mOwnerPackage = getStringFromXml(parser, ATTR_OWNER_PACKAGE, "");
        this.mFlags = getIntFromXml(parser, ATTR_FLAGS, 0);
        int outerDepth = parser.getDepth();
        String tagName = parser.getName();
        while (true) {
            int next = parser.next();
            int type = next;
            if (next == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            tagName = parser.getName();
            if (!(type == 3 || type == 4 || type != 2)) {
                if (tagName.equals(ATTR_FILTER)) {
                    break;
                }
                PackageManagerService.reportSettingsProblem(5, "Unknown element under crossProfile-intent-filters: " + tagName + " at " + parser.getPositionDescription());
                XmlUtils.skipCurrentTag(parser);
            }
        }
        if (tagName.equals(ATTR_FILTER)) {
            readFromXml(parser);
            return;
        }
        PackageManagerService.reportSettingsProblem(5, "Missing element under CrossProfileIntentFilter: filter at " + parser.getPositionDescription());
        XmlUtils.skipCurrentTag(parser);
    }

    /* access modifiers changed from: package-private */
    public String getStringFromXml(XmlPullParser parser, String attribute, String defaultValue) {
        String value = parser.getAttributeValue((String) null, attribute);
        if (value != null) {
            return value;
        }
        PackageManagerService.reportSettingsProblem(5, "Missing element under CrossProfileIntentFilter: " + attribute + " at " + parser.getPositionDescription());
        return defaultValue;
    }

    /* access modifiers changed from: package-private */
    public int getIntFromXml(XmlPullParser parser, String attribute, int defaultValue) {
        String stringValue = getStringFromXml(parser, attribute, (String) null);
        if (stringValue != null) {
            return Integer.parseInt(stringValue);
        }
        return defaultValue;
    }

    public void writeToXml(XmlSerializer serializer) throws IOException {
        serializer.attribute((String) null, ATTR_TARGET_USER_ID, Integer.toString(this.mTargetUserId));
        serializer.attribute((String) null, ATTR_FLAGS, Integer.toString(this.mFlags));
        serializer.attribute((String) null, ATTR_OWNER_PACKAGE, this.mOwnerPackage);
        serializer.startTag((String) null, ATTR_FILTER);
        super.writeToXml(serializer);
        serializer.endTag((String) null, ATTR_FILTER);
    }

    public String toString() {
        return "CrossProfileIntentFilter{0x" + Integer.toHexString(System.identityHashCode(this)) + " " + Integer.toString(this.mTargetUserId) + "}";
    }

    /* access modifiers changed from: package-private */
    public boolean equalsIgnoreFilter(CrossProfileIntentFilter other) {
        return this.mTargetUserId == other.mTargetUserId && this.mOwnerPackage.equals(other.mOwnerPackage) && this.mFlags == other.mFlags;
    }
}
