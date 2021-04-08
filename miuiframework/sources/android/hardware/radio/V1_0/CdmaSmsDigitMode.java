package android.hardware.radio.V1_0;

import java.util.ArrayList;

public final class CdmaSmsDigitMode {
    public static final int EIGHT_BIT = 1;
    public static final int FOUR_BIT = 0;

    public static final String toString(int o) {
        if (o == 0) {
            return "FOUR_BIT";
        }
        if (o == 1) {
            return "EIGHT_BIT";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("0x");
        stringBuilder.append(Integer.toHexString(o));
        return stringBuilder.toString();
    }

    public static final String dumpBitfield(int o) {
        ArrayList<String> list = new ArrayList();
        int flipped = 0;
        list.add("FOUR_BIT");
        if ((o & 1) == 1) {
            list.add("EIGHT_BIT");
            flipped = 0 | 1;
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
