package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public enum U0 {
    OK("OK"),
    IDENTIFIER_PROVIDER_UNAVAILABLE("IDENTIFIER_PROVIDER_UNAVAILABLE"),
    INVALID_ADV_ID("INVALID_ADV_ID"),
    NO_STARTUP("NO_STARTUP"),
    FEATURE_DISABLED("FEATURE_DISABLED"),
    UNKNOWN("UNKNOWN");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f11470a;

    U0(String str) {
        this.f11470a = str;
    }

    public String a() {
        return this.f11470a;
    }

    public static U0 a(String str) {
        U0[] values = values();
        for (int i10 = 0; i10 < 6; i10++) {
            U0 u02 = values[i10];
            if (u02.f11470a.equals(str)) {
                return u02;
            }
        }
        return UNKNOWN;
    }
}
