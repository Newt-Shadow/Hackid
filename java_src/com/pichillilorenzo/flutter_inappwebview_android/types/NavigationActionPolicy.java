package com.pichillilorenzo.flutter_inappwebview_android.types;
/* loaded from: classes.dex */
public enum NavigationActionPolicy {
    CANCEL(0),
    ALLOW(1);
    
    private final int value;

    NavigationActionPolicy(int i10) {
        this.value = i10;
    }

    public static NavigationActionPolicy fromValue(int i10) {
        NavigationActionPolicy[] values;
        for (NavigationActionPolicy navigationActionPolicy : values()) {
            if (i10 == navigationActionPolicy.value) {
                return navigationActionPolicy;
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

    public int rawValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.valueOf(this.value);
    }
}
