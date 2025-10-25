package te;

import af.g;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.l;
import ne.s;
import ne.t;
import rd.y;
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final af.g f30727a;

    /* renamed from: b  reason: collision with root package name */
    private static final af.g f30728b;

    static {
        g.a aVar = af.g.f387d;
        f30727a = aVar.c("\"\\");
        f30728b = aVar.c("\t ,=");
    }

    public static final List a(s sVar, String headerName) {
        boolean x10;
        m.e(sVar, "<this>");
        m.e(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = sVar.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            x10 = y.x(headerName, sVar.i(i10), true);
            if (x10) {
                try {
                    c(new af.d().g0(sVar.m(i10)), arrayList);
                } catch (EOFException e10) {
                    we.j.f32161a.g().j("Unable to parse challenge", 5, e10);
                }
            }
            i10 = i11;
        }
        return arrayList;
    }

    public static final boolean b(a0 a0Var) {
        boolean x10;
        m.e(a0Var, "<this>");
        if (m.a(a0Var.H().g(), "HEAD")) {
            return false;
        }
        int f10 = a0Var.f();
        if (((f10 >= 100 && f10 < 200) || f10 == 204 || f10 == 304) && oe.d.u(a0Var) == -1) {
            x10 = y.x("chunked", a0.k(a0Var, "Transfer-Encoding", null, 2, null), true);
            if (!x10) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0079, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0079, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void c(af.d r7, java.util.List r8) {
        /*
            r0 = 0
        L1:
            r1 = r0
        L2:
            if (r1 != 0) goto Le
            g(r7)
            java.lang.String r1 = e(r7)
            if (r1 != 0) goto Le
            return
        Le:
            boolean r2 = g(r7)
            java.lang.String r3 = e(r7)
            if (r3 != 0) goto L2c
            boolean r7 = r7.N()
            if (r7 != 0) goto L1f
            return
        L1f:
            ne.g r7 = new ne.g
            java.util.Map r0 = yc.e0.e()
            r7.<init>(r1, r0)
            r8.add(r7)
            return
        L2c:
            r4 = 61
            int r5 = oe.d.J(r7, r4)
            boolean r6 = g(r7)
            if (r2 != 0) goto L5c
            if (r6 != 0) goto L40
            boolean r2 = r7.N()
            if (r2 == 0) goto L5c
        L40:
            ne.g r2 = new ne.g
            java.lang.String r4 = "="
            java.lang.String r4 = rd.n.z(r4, r5)
            java.lang.String r3 = kotlin.jvm.internal.m.l(r3, r4)
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            java.lang.String r4 = "singletonMap<String, Str…ek + \"=\".repeat(eqCount))"
            kotlin.jvm.internal.m.d(r3, r4)
            r2.<init>(r1, r3)
            r8.add(r2)
            goto L1
        L5c:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>()
            int r6 = oe.d.J(r7, r4)
            int r5 = r5 + r6
        L66:
            if (r3 != 0) goto L77
            java.lang.String r3 = e(r7)
            boolean r5 = g(r7)
            if (r5 == 0) goto L73
            goto L79
        L73:
            int r5 = oe.d.J(r7, r4)
        L77:
            if (r5 != 0) goto L84
        L79:
            ne.g r4 = new ne.g
            r4.<init>(r1, r2)
            r8.add(r4)
            r1 = r3
            goto L2
        L84:
            r6 = 1
            if (r5 <= r6) goto L88
            return
        L88:
            boolean r6 = g(r7)
            if (r6 == 0) goto L8f
            return
        L8f:
            r6 = 34
            boolean r6 = h(r7, r6)
            if (r6 == 0) goto L9c
            java.lang.String r6 = d(r7)
            goto La0
        L9c:
            java.lang.String r6 = e(r7)
        La0:
            if (r6 != 0) goto La3
            return
        La3:
            java.lang.Object r3 = r2.put(r3, r6)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto Lac
            return
        Lac:
            boolean r3 = g(r7)
            if (r3 != 0) goto Lb9
            boolean r3 = r7.N()
            if (r3 != 0) goto Lb9
            return
        Lb9:
            r3 = r0
            goto L66
        */
        throw new UnsupportedOperationException("Method not decompiled: te.e.c(af.d, java.util.List):void");
    }

    private static final String d(af.d dVar) {
        boolean z10;
        if (dVar.readByte() == 34) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            af.d dVar2 = new af.d();
            while (true) {
                long u10 = dVar.u(f30727a);
                if (u10 == -1) {
                    return null;
                }
                if (dVar.k(u10) == 34) {
                    dVar2.c0(dVar, u10);
                    dVar.readByte();
                    return dVar2.X();
                } else if (dVar.k0() == u10 + 1) {
                    return null;
                } else {
                    dVar2.c0(dVar, u10);
                    dVar.readByte();
                    dVar2.c0(dVar, 1L);
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private static final String e(af.d dVar) {
        long u10 = dVar.u(f30728b);
        if (u10 == -1) {
            u10 = dVar.k0();
        }
        if (u10 != 0) {
            return dVar.A(u10);
        }
        return null;
    }

    public static final void f(ne.m mVar, t url, s headers) {
        m.e(mVar, "<this>");
        m.e(url, "url");
        m.e(headers, "headers");
        if (mVar == ne.m.f26755b) {
            return;
        }
        List e10 = l.f26740j.e(url, headers);
        if (e10.isEmpty()) {
            return;
        }
        mVar.a(url, e10);
    }

    private static final boolean g(af.d dVar) {
        boolean z10 = false;
        while (!dVar.N()) {
            byte k10 = dVar.k(0L);
            boolean z11 = true;
            if (k10 == 44) {
                dVar.readByte();
                z10 = true;
            } else {
                if (k10 != 32 && k10 != 9) {
                    z11 = false;
                }
                if (!z11) {
                    break;
                }
                dVar.readByte();
            }
        }
        return z10;
    }

    private static final boolean h(af.d dVar, byte b10) {
        if (!dVar.N() && dVar.k(0L) == b10) {
            return true;
        }
        return false;
    }
}
