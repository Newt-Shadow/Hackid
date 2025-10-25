package sd;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import rd.b0;
/* loaded from: classes2.dex */
public final class a implements Comparable {

    /* renamed from: b  reason: collision with root package name */
    public static final C0309a f29581b = new C0309a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final long f29582c = j(0);

    /* renamed from: d  reason: collision with root package name */
    private static final long f29583d = c.b(4611686018427387903L);

    /* renamed from: e  reason: collision with root package name */
    private static final long f29584e = c.b(-4611686018427387903L);

    /* renamed from: a  reason: collision with root package name */
    private final long f29585a;

    /* renamed from: sd.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0309a {
        private C0309a() {
        }

        public /* synthetic */ C0309a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ a(long j10) {
        this.f29585a = j10;
    }

    private static final boolean A(long j10) {
        return (((int) j10) & 1) == 0;
    }

    public static final boolean B(long j10) {
        if (j10 != f29583d && j10 != f29584e) {
            return false;
        }
        return true;
    }

    public static final boolean C(long j10) {
        return j10 < 0;
    }

    public static final boolean D(long j10) {
        return j10 > 0;
    }

    public static final long E(long j10, d unit) {
        m.e(unit, "unit");
        if (j10 == f29583d) {
            return Long.MAX_VALUE;
        }
        if (j10 == f29584e) {
            return Long.MIN_VALUE;
        }
        return e.a(w(j10), v(j10), unit);
    }

    public static String F(long j10) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == f29583d) {
            return "Infinity";
        }
        if (j10 == f29584e) {
            return "-Infinity";
        }
        boolean C = C(j10);
        StringBuilder sb2 = new StringBuilder();
        if (C) {
            sb2.append('-');
        }
        long m10 = m(j10);
        long o10 = o(m10);
        int n10 = n(m10);
        int s10 = s(m10);
        int u10 = u(m10);
        int t10 = t(m10);
        int i10 = 0;
        if (o10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (n10 != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (s10 != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (u10 == 0 && t10 == 0) {
            z13 = false;
        } else {
            z13 = true;
        }
        if (z10) {
            sb2.append(o10);
            sb2.append('d');
            i10 = 1;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            sb2.append(n10);
            sb2.append('h');
            i10 = i11;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            sb2.append(s10);
            sb2.append('m');
            i10 = i12;
        }
        if (z13) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            if (u10 == 0 && !z10 && !z11 && !z12) {
                if (t10 >= 1000000) {
                    a(j10, sb2, t10 / 1000000, t10 % 1000000, 6, "ms", false);
                } else if (t10 >= 1000) {
                    a(j10, sb2, t10 / 1000, t10 % 1000, 3, "us", false);
                } else {
                    sb2.append(t10);
                    sb2.append("ns");
                }
            } else {
                a(j10, sb2, u10, t10, 9, "s", false);
            }
            i10 = i13;
        }
        if (C && i10 > 1) {
            sb2.insert(1, '(').append(')');
        }
        return sb2.toString();
    }

    public static final long G(long j10) {
        return c.a(-w(j10), ((int) j10) & 1);
    }

    private static final void a(long j10, StringBuilder sb2, int i10, int i11, int i12, String str, boolean z10) {
        String k02;
        boolean z11;
        sb2.append(i10);
        if (i11 != 0) {
            sb2.append('.');
            k02 = b0.k0(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = k02.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (k02.charAt(length) != '0') {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (!z10 && i15 < 3) {
                sb2.append((CharSequence) k02, 0, i15);
                m.d(sb2, "append(...)");
            } else {
                sb2.append((CharSequence) k02, 0, ((i15 + 2) / 3) * 3);
                m.d(sb2, "append(...)");
            }
        }
        sb2.append(str);
    }

    public static final /* synthetic */ a b(long j10) {
        return new a(j10);
    }

    public static int i(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 >= 0 && (((int) j12) & 1) != 0) {
            int i10 = (((int) j10) & 1) - (((int) j11) & 1);
            if (C(j10)) {
                return -i10;
            }
            return i10;
        }
        return m.g(j10, j11);
    }

    public static long j(long j10) {
        boolean z10;
        if (b.a()) {
            boolean z11 = true;
            if (A(j10)) {
                long w10 = w(j10);
                if (-4611686018426999999L > w10 || w10 >= 4611686018427000000L) {
                    z11 = false;
                }
                if (!z11) {
                    throw new AssertionError(w(j10) + " ns is out of nanoseconds range");
                }
            } else {
                long w11 = w(j10);
                if (-4611686018427387903L <= w11 && w11 < 4611686018427387904L) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    long w12 = w(j10);
                    if (-4611686018426L > w12 || w12 >= 4611686018427L) {
                        z11 = false;
                    }
                    if (z11) {
                        throw new AssertionError(w(j10) + " ms is denormalized");
                    }
                } else {
                    throw new AssertionError(w(j10) + " ms is out of milliseconds range");
                }
            }
        }
        return j10;
    }

    public static boolean l(long j10, Object obj) {
        return (obj instanceof a) && j10 == ((a) obj).H();
    }

    public static final long m(long j10) {
        if (C(j10)) {
            return G(j10);
        }
        return j10;
    }

    public static final int n(long j10) {
        if (B(j10)) {
            return 0;
        }
        return (int) (p(j10) % 24);
    }

    public static final long o(long j10) {
        return E(j10, d.f29594h);
    }

    public static final long p(long j10) {
        return E(j10, d.f29593g);
    }

    public static final long q(long j10) {
        return E(j10, d.f29592f);
    }

    public static final long r(long j10) {
        return E(j10, d.f29591e);
    }

    public static final int s(long j10) {
        if (B(j10)) {
            return 0;
        }
        return (int) (q(j10) % 60);
    }

    public static final int t(long j10) {
        long w10;
        if (B(j10)) {
            return 0;
        }
        if (z(j10)) {
            w10 = c.c(w(j10) % 1000);
        } else {
            w10 = w(j10) % 1000000000;
        }
        return (int) w10;
    }

    public static final int u(long j10) {
        if (B(j10)) {
            return 0;
        }
        return (int) (r(j10) % 60);
    }

    private static final d v(long j10) {
        if (A(j10)) {
            return d.f29588b;
        }
        return d.f29590d;
    }

    private static final long w(long j10) {
        return j10 >> 1;
    }

    public static int x(long j10) {
        return Long.hashCode(j10);
    }

    public static final boolean y(long j10) {
        return !B(j10);
    }

    private static final boolean z(long j10) {
        return (((int) j10) & 1) == 1;
    }

    public final /* synthetic */ long H() {
        return this.f29585a;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return f(((a) obj).H());
    }

    public boolean equals(Object obj) {
        return l(this.f29585a, obj);
    }

    public int f(long j10) {
        return i(this.f29585a, j10);
    }

    public int hashCode() {
        return x(this.f29585a);
    }

    public String toString() {
        return F(this.f29585a);
    }
}
