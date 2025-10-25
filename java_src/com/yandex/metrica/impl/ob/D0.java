package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public enum D0 {
    UNKNOWN(0),
    FIRST_OCCURRENCE(1),
    NON_FIRST_OCCURENCE(2);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f9867a;

    D0(int i10) {
        this.f9867a = i10;
    }

    public static D0 a(Integer num) {
        if (num != null) {
            D0[] values = values();
            for (int i10 = 0; i10 < 3; i10++) {
                D0 d02 = values[i10];
                if (d02.f9867a == num.intValue()) {
                    return d02;
                }
            }
        }
        return UNKNOWN;
    }
}
