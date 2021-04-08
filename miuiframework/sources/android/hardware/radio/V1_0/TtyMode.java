package android.hardware.radio.V1_0;

import android.database.sqlite.SQLiteGlobal;
import java.util.ArrayList;

public final class TtyMode {
    public static final int FULL = 1;
    public static final int HCO = 2;
    public static final int OFF = 0;
    public static final int VCO = 3;

    public static final String toString(int o) {
        if (o == 0) {
            return "OFF";
        }
        if (o == 1) {
            return SQLiteGlobal.SYNC_MODE_FULL;
        }
        if (o == 2) {
            return "HCO";
        }
        if (o == 3) {
            return "VCO";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("0x");
        stringBuilder.append(Integer.toHexString(o));
        return stringBuilder.toString();
    }

    public static final String dumpBitfield(int o) {
        ArrayList<String> list = new ArrayList();
        int flipped = 0;
        list.add("OFF");
        if ((o & 1) == 1) {
            list.add(SQLiteGlobal.SYNC_MODE_FULL);
            flipped = 0 | 1;
        }
        if ((o & 2) == 2) {
            list.add("HCO");
            flipped |= 2;
        }
        if ((o & 3) == 3) {
            list.add("VCO");
            flipped |= 3;
        }
        if (o != flipped) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("0x");
            stringBuilder.append(Integer.toHexString((~flipped) & o));
            list.add(stringBuilder.toString());
        }
        return String.join(" | ", list);
    }
}