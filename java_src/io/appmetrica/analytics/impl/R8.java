package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public enum R8 {
    NONE(0),
    EXTERNALLY_ENCRYPTED_EVENT_CRYPTER(1),
    AES_VALUE_ENCRYPTION(2);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f18883a;

    R8(int i10) {
        this.f18883a = i10;
    }

    public static R8 a(Integer num) {
        R8[] values;
        if (num != null) {
            for (R8 r82 : values()) {
                if (r82.f18883a == num.intValue()) {
                    return r82;
                }
            }
        }
        return NONE;
    }
}
