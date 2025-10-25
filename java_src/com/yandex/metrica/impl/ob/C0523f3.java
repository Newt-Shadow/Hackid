package com.yandex.metrica.impl.ob;

import java.lang.reflect.Field;
/* renamed from: com.yandex.metrica.impl.ob.f3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0523f3 {
    public static final zb.b a() {
        String str;
        boolean H;
        boolean H2;
        boolean H3;
        Object obj;
        Field field;
        try {
            Class b10 = C0572h2.b("com.android.billingclient.BuildConfig");
            if (b10 != null && (field = b10.getField("VERSION_NAME")) != null) {
                obj = field.get(null);
            } else {
                obj = null;
            }
            str = (String) obj;
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            H = rd.y.H(str, "2.", false, 2, null);
            if (!H) {
                H2 = rd.y.H(str, "3.", false, 2, null);
                if (!H2) {
                    H3 = rd.y.H(str, "4.", false, 2, null);
                    if (H3) {
                        return zb.b.LIBRARY_V4;
                    }
                    return zb.b.LIBRARY_V4;
                }
                return zb.b.LIBRARY_V3;
            }
            return zb.b.LIBRARY_V3;
        }
        return zb.b.NONE;
    }
}
