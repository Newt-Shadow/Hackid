package com.yandex.metrica.impl.ob;

import com.yandex.metrica.IParamsCallback;
import java.util.Collection;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ni  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0737ni {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f13020a;

    /* renamed from: b  reason: collision with root package name */
    private static dc.d f13021b;

    /* renamed from: c  reason: collision with root package name */
    private static Rh f13022c;

    static {
        Set<String> d10;
        d10 = yc.m0.d(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, "appmetrica_device_id_hash", "yandex_mobile_metrica_device_id", "yandex_mobile_metrica_get_ad_url", "yandex_mobile_metrica_report_ad_url", "yandex_mobile_metrica_uuid");
        f13020a = d10;
        f13021b = new dc.c();
        f13022c = new Rh();
    }

    public static final boolean a(long j10) {
        return f13021b.currentTimeSeconds() > j10;
    }

    public static final boolean b(C0787pi c0787pi) {
        boolean z10;
        if (c0787pi.D()) {
            return true;
        }
        if (f13021b.currentTimeSeconds() > c0787pi.C() + c0787pi.O().a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return true;
        }
        return false;
    }

    public static final boolean a(C0787pi c0787pi) {
        return a(c0787pi.V()) && a(c0787pi.i()) && a(c0787pi.j());
    }

    public static final boolean a(String str) {
        return !(str == null || str.length() == 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean a(com.yandex.metrica.impl.ob.C0787pi r4, java.util.Collection<java.lang.String> r5, java.util.Map<java.lang.String, java.lang.String> r6, id.a r7) {
        /*
            r0 = 0
            r1 = 1
            if (r5 == 0) goto Ld
            boolean r2 = r5.isEmpty()
            if (r2 == 0) goto Lb
            goto Ld
        Lb:
            r2 = r0
            goto Le
        Ld:
            r2 = r1
        Le:
            if (r2 == 0) goto L11
            return r1
        L11:
            boolean r2 = r5 instanceof java.util.Collection
            if (r2 == 0) goto L1d
            boolean r2 = r5.isEmpty()
            if (r2 == 0) goto L1d
            goto La7
        L1d:
            java.util.Iterator r5 = r5.iterator()
        L21:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto La7
            java.lang.Object r2 = r5.next()
            java.lang.String r2 = (java.lang.String) r2
            int r3 = r2.hashCode()
            switch(r3) {
                case -220514361: goto L8e;
                case 299713912: goto L7d;
                case 530390881: goto L6c;
                case 538565458: goto L57;
                case 1541938616: goto L46;
                case 1630523545: goto L35;
                default: goto L34;
            }
        L34:
            goto L9f
        L35:
            java.lang.String r3 = "yandex_mobile_metrica_get_ad_url"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9f
            java.lang.String r2 = r4.p()
            boolean r2 = a(r2)
            goto La4
        L46:
            java.lang.String r3 = "yandex_mobile_metrica_uuid"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9f
            java.lang.String r2 = r4.V()
            boolean r2 = a(r2)
            goto La4
        L57:
            java.lang.String r3 = "yandex_mobile_metrica_clids"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9f
            com.yandex.metrica.impl.ob.Rh r2 = com.yandex.metrica.impl.ob.C0737ni.f13022c
            java.lang.Object r3 = r7.invoke()
            com.yandex.metrica.impl.ob.I r3 = (com.yandex.metrica.impl.ob.I) r3
            boolean r2 = r2.a(r6, r4, r3)
            goto La4
        L6c:
            java.lang.String r3 = "yandex_mobile_metrica_report_ad_url"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9f
            java.lang.String r2 = r4.G()
            boolean r2 = a(r2)
            goto La4
        L7d:
            java.lang.String r3 = "appmetrica_device_id_hash"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9f
            java.lang.String r2 = r4.j()
            boolean r2 = a(r2)
            goto La4
        L8e:
            java.lang.String r3 = "yandex_mobile_metrica_device_id"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L9f
            java.lang.String r2 = r4.i()
            boolean r2 = a(r2)
            goto La4
        L9f:
            boolean r2 = b(r4)
            r2 = r2 ^ r1
        La4:
            if (r2 != 0) goto L21
            goto La8
        La7:
            r0 = r1
        La8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0737ni.a(com.yandex.metrica.impl.ob.pi, java.util.Collection, java.util.Map, id.a):boolean");
    }

    public static final Collection<String> a(Collection<String> collection) {
        Set T;
        T = yc.w.T(collection, f13020a);
        return T;
    }
}
