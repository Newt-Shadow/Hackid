package b3;
/* loaded from: classes.dex */
public final class x3 {

    /* renamed from: c  reason: collision with root package name */
    public static final x3 f4558c;

    /* renamed from: d  reason: collision with root package name */
    public static final x3 f4559d;

    /* renamed from: e  reason: collision with root package name */
    public static final x3 f4560e;

    /* renamed from: f  reason: collision with root package name */
    public static final x3 f4561f;

    /* renamed from: g  reason: collision with root package name */
    public static final x3 f4562g;

    /* renamed from: a  reason: collision with root package name */
    public final long f4563a;

    /* renamed from: b  reason: collision with root package name */
    public final long f4564b;

    static {
        x3 x3Var = new x3(0L, 0L);
        f4558c = x3Var;
        f4559d = new x3(Long.MAX_VALUE, Long.MAX_VALUE);
        f4560e = new x3(Long.MAX_VALUE, 0L);
        f4561f = new x3(0L, Long.MAX_VALUE);
        f4562g = x3Var;
    }

    public x3(long j10, long j11) {
        boolean z10;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        y4.a.a(j11 >= 0);
        this.f4563a = j10;
        this.f4564b = j11;
    }

    public long a(long j10, long j11, long j12) {
        boolean z10;
        long j13 = this.f4563a;
        if (j13 == 0 && this.f4564b == 0) {
            return j10;
        }
        long S0 = y4.q0.S0(j10, j13, Long.MIN_VALUE);
        long b10 = y4.q0.b(j10, this.f4564b, Long.MAX_VALUE);
        boolean z11 = true;
        if (S0 <= j11 && j11 <= b10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (S0 > j12 || j12 > b10) {
            z11 = false;
        }
        if (z10 && z11) {
            if (Math.abs(j11 - j10) <= Math.abs(j12 - j10)) {
                return j11;
            }
            return j12;
        } else if (z10) {
            return j11;
        } else {
            if (z11) {
                return j12;
            }
            return S0;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x3.class != obj.getClass()) {
            return false;
        }
        x3 x3Var = (x3) obj;
        if (this.f4563a == x3Var.f4563a && this.f4564b == x3Var.f4564b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f4563a) * 31) + ((int) this.f4564b);
    }
}
