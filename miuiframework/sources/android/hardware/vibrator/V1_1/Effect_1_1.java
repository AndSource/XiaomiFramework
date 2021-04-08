package android.hardware.vibrator.V1_1;

import java.util.ArrayList;

public final class Effect_1_1 {
    public static final int CLICK = 0;
    public static final int DOUBLE_CLICK = 1;
    public static final int TICK = 2;

    public static final String toString(int o) {
        if (o == 0) {
            return "CLICK";
        }
        if (o == 1) {
            return "DOUBLE_CLICK";
        }
        if (o == 2) {
            return "TICK";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("0x");
        stringBuilder.append(Integer.toHexString(o));
        return stringBuilder.toString();
    }

    public static final String dumpBitfield(int o) {
        ArrayList<String> list = new ArrayList();
        int flipped = 0;
        list.add("CLICK");
        if ((o & 1) == 1) {
            list.add("DOUBLE_CLICK");
            flipped = 0 | 1;
        }
        if ((o & 2) == 2) {
            list.add("TICK");
            flipped |= 2;
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
