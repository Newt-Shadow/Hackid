package com.pichillilorenzo.flutter_inappwebview_android.types;
/* loaded from: classes.dex */
public enum UserScriptInjectionTime {
    AT_DOCUMENT_START(0),
    AT_DOCUMENT_END(1);
    
    private final int value;

    UserScriptInjectionTime(int i10) {
        this.value = i10;
    }

    public static UserScriptInjectionTime fromValue(int i10) {
        UserScriptInjectionTime[] values;
        for (UserScriptInjectionTime userScriptInjectionTime : values()) {
            if (i10 == userScriptInjectionTime.toValue()) {
                return userScriptInjectionTime;
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
