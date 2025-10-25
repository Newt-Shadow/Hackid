package com.pichillilorenzo.flutter_inappwebview_android.types;
/* loaded from: classes.dex */
public enum PreferredContentModeOptionType {
    RECOMMENDED(0),
    MOBILE(1),
    DESKTOP(2);
    
    private final int value;

    PreferredContentModeOptionType(int i10) {
        this.value = i10;
    }

    public static PreferredContentModeOptionType fromValue(int i10) {
        PreferredContentModeOptionType[] values;
        for (PreferredContentModeOptionType preferredContentModeOptionType : values()) {
            if (i10 == preferredContentModeOptionType.toValue()) {
                return preferredContentModeOptionType;
            }
        }
        throw new IllegalArgumentException("No enum constant: " + i10);
    }

    public boolean equalsValue(int i10) {
        if (this.value == i10) {
            return true;
        }
        return false;
    }

    public int toValue() {
        return this.value;
    }
}
