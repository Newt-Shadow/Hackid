package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.f9 */
/* loaded from: classes2.dex */
public final class C1166f9 {

    /* renamed from: h */
    public static final Map f19628h;

    /* renamed from: i */
    public static final C1166f9 f19629i;

    /* renamed from: a */
    public final Dd f19630a;

    /* renamed from: b */
    public final Zn f19631b;

    /* renamed from: c */
    public final H8 f19632c;

    /* renamed from: d */
    public final E9 f19633d;

    /* renamed from: e */
    public final InterfaceC1194gc f19634e;

    /* renamed from: f */
    public final Td f19635f;

    /* renamed from: g */
    public final Z9 f19636g;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC1416pa.FIRST_OCCURRENCE, 1);
        hashMap.put(EnumC1416pa.NON_FIRST_OCCURENCE, 0);
        hashMap.put(EnumC1416pa.UNKNOWN, -1);
        f19628h = Collections.unmodifiableMap(hashMap);
        f19629i = new C1166f9(new Qi(), new Jm(), new C1071be(), new Pi(), new C1565va(), new C1590wa(), new C1540ua());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1166f9(io.appmetrica.analytics.impl.C1141e9 r9) {
        /*
            r8 = this;
            io.appmetrica.analytics.impl.Dd r1 = io.appmetrica.analytics.impl.C1141e9.f(r9)
            io.appmetrica.analytics.impl.Zn r2 = io.appmetrica.analytics.impl.C1141e9.g(r9)
            io.appmetrica.analytics.impl.H8 r3 = io.appmetrica.analytics.impl.C1141e9.a(r9)
            io.appmetrica.analytics.impl.E9 r4 = io.appmetrica.analytics.impl.C1141e9.b(r9)
            io.appmetrica.analytics.impl.gc r5 = io.appmetrica.analytics.impl.C1141e9.c(r9)
            io.appmetrica.analytics.impl.Td r6 = io.appmetrica.analytics.impl.C1141e9.d(r9)
            io.appmetrica.analytics.impl.Z9 r7 = io.appmetrica.analytics.impl.C1141e9.e(r9)
            r0 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1166f9.<init>(io.appmetrica.analytics.impl.e9):void");
    }

    public final C1415p9 a(W8 w82, C1323lh c1323lh) {
        C1415p9 c1415p9 = new C1415p9();
        C1390o9 a10 = this.f19635f.a(w82.f19169l, w82.f19170m);
        C1290k9 a11 = this.f19634e.a(w82.f19164g);
        if (a10 != null) {
            c1415p9.f20363g = a10;
        }
        if (a11 != null) {
            c1415p9.f20362f = a11;
        }
        String a12 = this.f19630a.a(w82.f19158a);
        if (a12 != null) {
            c1415p9.f20360d = a12;
        }
        c1415p9.f20361e = this.f19631b.a(w82, c1323lh);
        String str = w82.f19167j;
        if (str != null) {
            c1415p9.f20364h = str;
        }
        Integer a13 = this.f19633d.a(w82);
        if (a13 != null) {
            c1415p9.f20359c = a13.intValue();
        }
        Long l10 = w82.f19160c;
        if (l10 != null) {
            c1415p9.f20357a = l10.longValue();
        }
        Long l11 = w82.f19161d;
        if (l11 != null) {
            c1415p9.f20370n = l11.longValue();
        }
        Long l12 = w82.f19162e;
        if (l12 != null) {
            c1415p9.f20371o = l12.longValue();
        }
        Long l13 = w82.f19163f;
        if (l13 != null) {
            c1415p9.f20358b = l13.longValue();
        }
        Integer num = w82.f19168k;
        if (num != null) {
            c1415p9.f20365i = num.intValue();
        }
        c1415p9.f20366j = this.f19632c.a(w82.f19172o);
        C1537u7 c1537u7 = w82.f19164g;
        c1415p9.f20367k = c1537u7 != null ? new C1561v6().a(c1537u7.f20705a) : -1;
        String str2 = w82.f19171n;
        if (str2 != null) {
            c1415p9.f20368l = str2.getBytes();
        }
        EnumC1416pa enumC1416pa = w82.f19173p;
        Integer num2 = enumC1416pa != null ? (Integer) f19628h.get(enumC1416pa) : null;
        if (num2 != null) {
            c1415p9.f20369m = num2.intValue();
        }
        EnumC1614x9 enumC1614x9 = w82.f19174q;
        if (enumC1614x9 != null) {
            int ordinal = enumC1614x9.ordinal();
            if (ordinal == 0) {
                c1415p9.f20372p = 0;
            } else if (ordinal == 1) {
                c1415p9.f20372p = 1;
            } else if (ordinal == 2) {
                c1415p9.f20372p = 2;
            }
        }
        Boolean bool = w82.f19175r;
        if (bool != null) {
            c1415p9.f20373q = bool.booleanValue();
        }
        Integer num3 = w82.f19176s;
        if (num3 != null) {
            c1415p9.f20374r = num3.intValue();
        }
        c1415p9.f20375s = ((C1540ua) this.f19636g).a(w82.f19177t);
        return c1415p9;
    }

    public C1166f9(Dd dd2, Zn zn, H8 h82, E9 e92, InterfaceC1194gc interfaceC1194gc, Td td2, Z9 z92) {
        this.f19630a = dd2;
        this.f19631b = zn;
        this.f19632c = h82;
        this.f19633d = e92;
        this.f19634e = interfaceC1194gc;
        this.f19635f = td2;
        this.f19636g = z92;
    }

    public static C1141e9 a() {
        return new C1141e9(f19629i);
    }
}
