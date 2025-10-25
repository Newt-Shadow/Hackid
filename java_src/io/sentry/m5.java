package io.sentry;

import java.util.Date;
/* loaded from: classes2.dex */
public final class m5 extends y3 {

    /* renamed from: a  reason: collision with root package name */
    private final Date f23263a;

    /* renamed from: b  reason: collision with root package name */
    private final long f23264b;

    public m5() {
        this(j.c(), System.nanoTime());
    }

    private long m(m5 m5Var, m5 m5Var2) {
        return m5Var.l() + (m5Var2.f23264b - m5Var.f23264b);
    }

    @Override // io.sentry.y3, java.lang.Comparable
    /* renamed from: a */
    public int compareTo(y3 y3Var) {
        if (y3Var instanceof m5) {
            m5 m5Var = (m5) y3Var;
            long time = this.f23263a.getTime();
            long time2 = m5Var.f23263a.getTime();
            if (time == time2) {
                return Long.valueOf(this.f23264b).compareTo(Long.valueOf(m5Var.f23264b));
            }
            return Long.valueOf(time).compareTo(Long.valueOf(time2));
        }
        return super.compareTo(y3Var);
    }

    @Override // io.sentry.y3
    public long b(y3 y3Var) {
        if (y3Var instanceof m5) {
            return this.f23264b - ((m5) y3Var).f23264b;
        }
        return super.b(y3Var);
    }

    @Override // io.sentry.y3
    public long j(y3 y3Var) {
        if (y3Var != null && (y3Var instanceof m5)) {
            m5 m5Var = (m5) y3Var;
            if (compareTo(y3Var) < 0) {
                return m(this, m5Var);
            }
            return m(m5Var, this);
        }
        return super.j(y3Var);
    }

    @Override // io.sentry.y3
    public long l() {
        return j.a(this.f23263a);
    }

    public m5(Date date, long j10) {
        this.f23263a = date;
        this.f23264b = j10;
    }
}
