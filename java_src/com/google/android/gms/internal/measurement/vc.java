package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
abstract class vc {

    /* renamed from: a  reason: collision with root package name */
    private static final ed f6851a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f6852b = 0;

    static {
        int i10 = qc.f6714d;
        f6851a = new gd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int B(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (pa.E(i10 << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int D(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (pa.E(i10 << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E(int i10, Object obj, tc tcVar) {
        return pa.E(i10 << 3) + pa.d((ic) obj, tcVar);
    }

    public static ed a() {
        return f6851a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(va vaVar, Object obj, Object obj2) {
        android.support.v4.media.session.b.a(obj2);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(ed edVar, Object obj, Object obj2) {
        hb hbVar = (hb) obj;
        fd fdVar = hbVar.zzc;
        fd fdVar2 = ((hb) obj2).zzc;
        if (!fd.a().equals(fdVar2)) {
            if (fd.a().equals(fdVar)) {
                fdVar = fd.c(fdVar, fdVar2);
            } else {
                fdVar.k(fdVar2);
            }
        }
        hbVar.zzc = fdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object e(Object obj, int i10, int i11, Object obj2, ed edVar) {
        if (obj2 == null) {
            obj2 = edVar.a(obj);
        }
        ((fd) obj2).j(i10 << 3, Long.valueOf(i11));
        return obj2;
    }

    public static void f(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.y(i10, list, z10);
        }
    }

    public static void g(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.g(i10, list, z10);
        }
    }

    public static void h(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.n(i10, list, z10);
        }
    }

    public static void i(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.a(i10, list, z10);
        }
    }

    public static void j(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.A(i10, list, z10);
        }
    }

    public static void k(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.u(i10, list, z10);
        }
    }

    public static void l(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.r(i10, list, z10);
        }
    }

    public static void m(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.J(i10, list, z10);
        }
    }

    public static void n(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.w(i10, list, z10);
        }
    }

    public static void o(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.h(i10, list, z10);
        }
    }

    public static void p(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.i(i10, list, z10);
        }
    }

    public static void q(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.c(i10, list, z10);
        }
    }

    public static void r(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.j(i10, list, z10);
        }
    }

    public static void s(int i10, List list, rd rdVar, boolean z10) {
        if (list != null && !list.isEmpty()) {
            rdVar.F(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(wbVar.d0(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(wbVar.d0(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            i10 = 0;
            while (i11 < size) {
                long d02 = wbVar.d0(i11);
                i10 += pa.a((d02 >> 63) ^ (d02 + d02));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                long longValue = ((Long) list.get(i11)).longValue();
                i10 += pa.a((longValue >> 63) ^ (longValue + longValue));
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(ibVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(ibVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += pa.a(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            i10 = 0;
            while (i11 < size) {
                i10 += pa.E(ibVar.i(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += pa.E(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            i10 = 0;
            while (i11 < size) {
                int i12 = ibVar.i(i11);
                i10 += pa.E((i12 >> 31) ^ (i12 + i12));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = ((Integer) list.get(i11)).intValue();
                i10 += pa.E((intValue >> 31) ^ (intValue + intValue));
                i11++;
            }
        }
        return i10;
    }
}
