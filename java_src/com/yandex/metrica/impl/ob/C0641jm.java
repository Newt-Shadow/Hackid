package com.yandex.metrica.impl.ob;

import java.util.Locale;
import java.util.UUID;
/* renamed from: com.yandex.metrica.impl.ob.jm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0641jm {
    public final String a() {
        String D;
        String uuid = UUID.randomUUID().toString();
        kotlin.jvm.internal.m.d(uuid, "UUID.randomUUID().toString()");
        D = rd.y.D(uuid, "-", "", false, 4, null);
        Locale locale = Locale.US;
        kotlin.jvm.internal.m.d(locale, "Locale.US");
        if (D != null) {
            String lowerCase = D.toLowerCase(locale);
            kotlin.jvm.internal.m.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }
}
