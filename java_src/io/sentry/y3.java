package io.sentry;
/* loaded from: classes2.dex */
public abstract class y3 implements Comparable {
    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(y3 y3Var) {
        return Long.valueOf(l()).compareTo(Long.valueOf(y3Var.l()));
    }

    public long b(y3 y3Var) {
        return l() - y3Var.l();
    }

    public final boolean f(y3 y3Var) {
        if (b(y3Var) > 0) {
            return true;
        }
        return false;
    }

    public final boolean i(y3 y3Var) {
        if (b(y3Var) < 0) {
            return true;
        }
        return false;
    }

    public long j(y3 y3Var) {
        if (y3Var != null && compareTo(y3Var) < 0) {
            return y3Var.l();
        }
        return l();
    }

    public abstract long l();
}
