package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.va  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1565va implements InterfaceC1194gc {
    @Override // io.appmetrica.analytics.impl.InterfaceC1194gc
    public final C1290k9 a(C1537u7 c1537u7) {
        Double d10;
        C1290k9 c1290k9 = null;
        if (c1537u7 != null) {
            d10 = c1537u7.f20706b;
        } else {
            d10 = null;
        }
        if (d10 != null && c1537u7.f20707c != null) {
            c1290k9 = new C1290k9();
            c1290k9.f19947b = c1537u7.f20706b.doubleValue();
            c1290k9.f19946a = c1537u7.f20707c.doubleValue();
            Integer num = c1537u7.f20708d;
            if (num != null) {
                c1290k9.f19952g = num.intValue();
            }
            Integer num2 = c1537u7.f20709e;
            if (num2 != null) {
                c1290k9.f19950e = num2.intValue();
            }
            Integer num3 = c1537u7.f20710f;
            if (num3 != null) {
                c1290k9.f19949d = num3.intValue();
            }
            Integer num4 = c1537u7.f20711g;
            if (num4 != null) {
                c1290k9.f19951f = num4.intValue();
            }
            Long l10 = c1537u7.f20712h;
            if (l10 != null) {
                c1290k9.f19948c = TimeUnit.MILLISECONDS.toSeconds(l10.longValue());
            }
            String str = c1537u7.f20713i;
            if (str != null) {
                if (kotlin.jvm.internal.m.a(str, "gps")) {
                    c1290k9.f19953h = 1;
                } else if (kotlin.jvm.internal.m.a(str, "network")) {
                    c1290k9.f19953h = 2;
                }
            }
            String str2 = c1537u7.f20714j;
            if (str2 != null) {
                c1290k9.f19954i = str2;
            }
        }
        return c1290k9;
    }
}
