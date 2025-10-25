package od;

import kotlin.jvm.internal.m;
import od.a;
import od.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class i extends h {
    public static int b(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static long c(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    public static int d(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    public static long e(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    public static int f(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i10 < i11) {
                return i11;
            }
            if (i10 > i12) {
                return i12;
            }
            return i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static long g(long j10, long j11, long j12) {
        if (j11 <= j12) {
            if (j10 < j11) {
                return j11;
            }
            if (j10 > j12) {
                return j12;
            }
            return j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + '.');
    }

    public static a h(int i10, int i11) {
        return a.f27559d.a(i10, i11, -1);
    }

    public static a i(a aVar, int i10) {
        boolean z10;
        m.e(aVar, "<this>");
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.a(z10, Integer.valueOf(i10));
        a.C0279a c0279a = a.f27559d;
        int g10 = aVar.g();
        int i11 = aVar.i();
        if (aVar.l() <= 0) {
            i10 = -i10;
        }
        return c0279a.a(g10, i11, i10);
    }

    public static d j(d dVar, long j10) {
        boolean z10;
        m.e(dVar, "<this>");
        if (j10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.a(z10, Long.valueOf(j10));
        d.a aVar = d.f27569d;
        long g10 = dVar.g();
        long i10 = dVar.i();
        if (dVar.l() <= 0) {
            j10 = -j10;
        }
        return aVar.a(g10, i10, j10);
    }

    public static c k(int i10, int i11) {
        if (i11 <= Integer.MIN_VALUE) {
            return c.f27567e.a();
        }
        return new c(i10, i11 - 1);
    }

    public static f l(long j10, long j11) {
        if (j11 <= Long.MIN_VALUE) {
            return f.f27577e.a();
        }
        return new f(j10, j11 - 1);
    }
}
