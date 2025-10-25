package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public enum Em {
    NONE(0),
    EXTERNALLY_ENCRYPTED_EVENT_CRYPTER(1),
    AES_VALUE_ENCRYPTION(2);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f10028a;

    Em(int i10) {
        this.f10028a = i10;
    }

    public int a() {
        return this.f10028a;
    }

    public static Em a(Integer num) {
        if (num != null) {
            Em[] values = values();
            for (int i10 = 0; i10 < 3; i10++) {
                Em em = values[i10];
                if (em.f10028a == num.intValue()) {
                    return em;
                }
            }
        }
        return NONE;
    }
}
