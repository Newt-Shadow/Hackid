package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.pa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC1416pa {
    UNKNOWN(0),
    FIRST_OCCURRENCE(1),
    NON_FIRST_OCCURENCE(2);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f20380a;

    EnumC1416pa(int i10) {
        this.f20380a = i10;
    }

    public static EnumC1416pa a(Integer num) {
        EnumC1416pa[] values;
        if (num != null) {
            for (EnumC1416pa enumC1416pa : values()) {
                if (enumC1416pa.f20380a == num.intValue()) {
                    return enumC1416pa;
                }
            }
        }
        return UNKNOWN;
    }
}
