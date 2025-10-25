package sd;

import kotlin.jvm.internal.m;
import od.i;
/* loaded from: classes2.dex */
public abstract class c {
    public static final long d(long j10, int i10) {
        return a.j((j10 << 1) + i10);
    }

    public static final long e(long j10) {
        return a.j((j10 << 1) + 1);
    }

    private static final long f(long j10) {
        return a.j(j10 << 1);
    }

    public static final long g(long j10) {
        return j10 * 1000000;
    }

    public static final long h(int i10, d unit) {
        m.e(unit, "unit");
        if (unit.compareTo(d.f29591e) <= 0) {
            return f(e.b(i10, unit, d.f29588b));
        }
        return i(i10, unit);
    }

    public static final long i(long j10, d unit) {
        long g10;
        m.e(unit, "unit");
        d dVar = d.f29588b;
        long b10 = e.b(4611686018426999999L, dVar, unit);
        boolean z10 = false;
        if ((-b10) <= j10 && j10 <= b10) {
            z10 = true;
        }
        if (!z10) {
            g10 = i.g(e.a(j10, unit, d.f29590d), -4611686018427387903L, 4611686018427387903L);
            return e(g10);
        }
        return f(e.b(j10, unit, dVar));
    }
}
