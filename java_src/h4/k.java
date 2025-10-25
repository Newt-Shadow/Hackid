package h4;

import b3.x1;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    final i f16823a;

    /* renamed from: b  reason: collision with root package name */
    final long f16824b;

    /* renamed from: c  reason: collision with root package name */
    final long f16825c;

    /* loaded from: classes.dex */
    public static abstract class a extends k {

        /* renamed from: d  reason: collision with root package name */
        final long f16826d;

        /* renamed from: e  reason: collision with root package name */
        final long f16827e;

        /* renamed from: f  reason: collision with root package name */
        final List f16828f;

        /* renamed from: g  reason: collision with root package name */
        private final long f16829g;

        /* renamed from: h  reason: collision with root package name */
        private final long f16830h;

        /* renamed from: i  reason: collision with root package name */
        final long f16831i;

        public a(i iVar, long j10, long j11, long j12, long j13, List list, long j14, long j15, long j16) {
            super(iVar, j10, j11);
            this.f16826d = j12;
            this.f16827e = j13;
            this.f16828f = list;
            this.f16831i = j14;
            this.f16829g = j15;
            this.f16830h = j16;
        }

        public long c(long j10, long j11) {
            long g10 = g(j10);
            if (g10 != -1) {
                return g10;
            }
            return (int) (i((j11 - this.f16830h) + this.f16831i, j10) - d(j10, j11));
        }

        public long d(long j10, long j11) {
            if (g(j10) == -1) {
                long j12 = this.f16829g;
                if (j12 != -9223372036854775807L) {
                    return Math.max(e(), i((j11 - this.f16830h) - j12, j10));
                }
            }
            return e();
        }

        public long e() {
            return this.f16826d;
        }

        public long f(long j10, long j11) {
            if (this.f16828f != null) {
                return -9223372036854775807L;
            }
            long d10 = d(j10, j11) + c(j10, j11);
            return (j(d10) + h(d10, j10)) - this.f16831i;
        }

        public abstract long g(long j10);

        public final long h(long j10, long j11) {
            List list = this.f16828f;
            if (list != null) {
                return (((d) list.get((int) (j10 - this.f16826d))).f16837b * 1000000) / this.f16824b;
            }
            long g10 = g(j11);
            if (g10 != -1 && j10 == (e() + g10) - 1) {
                return j11 - j(j10);
            }
            return (this.f16827e * 1000000) / this.f16824b;
        }

        public long i(long j10, long j11) {
            long e10 = e();
            long g10 = g(j11);
            if (g10 == 0) {
                return e10;
            }
            if (this.f16828f == null) {
                long j12 = this.f16826d + (j10 / ((this.f16827e * 1000000) / this.f16824b));
                if (j12 >= e10) {
                    if (g10 == -1) {
                        return j12;
                    }
                    return Math.min(j12, (e10 + g10) - 1);
                }
                return e10;
            }
            long j13 = (g10 + e10) - 1;
            long j14 = e10;
            while (j14 <= j13) {
                long j15 = ((j13 - j14) / 2) + j14;
                int i10 = (j(j15) > j10 ? 1 : (j(j15) == j10 ? 0 : -1));
                if (i10 < 0) {
                    j14 = j15 + 1;
                } else if (i10 > 0) {
                    j13 = j15 - 1;
                } else {
                    return j15;
                }
            }
            if (j14 == e10) {
                return j14;
            }
            return j13;
        }

        public final long j(long j10) {
            long j11;
            List list = this.f16828f;
            if (list != null) {
                j11 = ((d) list.get((int) (j10 - this.f16826d))).f16836a - this.f16825c;
            } else {
                j11 = (j10 - this.f16826d) * this.f16827e;
            }
            return q0.M0(j11, 1000000L, this.f16824b);
        }

        public abstract i k(j jVar, long j10);

        public boolean l() {
            if (this.f16828f != null) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends a {

        /* renamed from: j  reason: collision with root package name */
        final List f16832j;

        public b(i iVar, long j10, long j11, long j12, long j13, List list, long j14, List list2, long j15, long j16) {
            super(iVar, j10, j11, j12, j13, list, j14, j15, j16);
            this.f16832j = list2;
        }

        @Override // h4.k.a
        public long g(long j10) {
            return this.f16832j.size();
        }

        @Override // h4.k.a
        public i k(j jVar, long j10) {
            return (i) this.f16832j.get((int) (j10 - this.f16826d));
        }

        @Override // h4.k.a
        public boolean l() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends a {

        /* renamed from: j  reason: collision with root package name */
        final n f16833j;

        /* renamed from: k  reason: collision with root package name */
        final n f16834k;

        /* renamed from: l  reason: collision with root package name */
        final long f16835l;

        public c(i iVar, long j10, long j11, long j12, long j13, long j14, List list, long j15, n nVar, n nVar2, long j16, long j17) {
            super(iVar, j10, j11, j12, j14, list, j15, j16, j17);
            this.f16833j = nVar;
            this.f16834k = nVar2;
            this.f16835l = j13;
        }

        @Override // h4.k
        public i a(j jVar) {
            n nVar = this.f16833j;
            if (nVar != null) {
                x1 x1Var = jVar.f16810b;
                return new i(nVar.a(x1Var.f4503a, 0L, x1Var.f4510h, 0L), 0L, -1L);
            }
            return super.a(jVar);
        }

        @Override // h4.k.a
        public long g(long j10) {
            List list = this.f16828f;
            if (list != null) {
                return list.size();
            }
            long j11 = this.f16835l;
            if (j11 != -1) {
                return (j11 - this.f16826d) + 1;
            }
            if (j10 == -9223372036854775807L) {
                return -1L;
            }
            return p6.a.a(BigInteger.valueOf(j10).multiply(BigInteger.valueOf(this.f16824b)), BigInteger.valueOf(this.f16827e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
        }

        @Override // h4.k.a
        public i k(j jVar, long j10) {
            long j11;
            List list = this.f16828f;
            if (list != null) {
                j11 = ((d) list.get((int) (j10 - this.f16826d))).f16836a;
            } else {
                j11 = (j10 - this.f16826d) * this.f16827e;
            }
            long j12 = j11;
            n nVar = this.f16834k;
            x1 x1Var = jVar.f16810b;
            return new i(nVar.a(x1Var.f4503a, j10, x1Var.f4510h, j12), 0L, -1L);
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final long f16836a;

        /* renamed from: b  reason: collision with root package name */
        final long f16837b;

        public d(long j10, long j11) {
            this.f16836a = j10;
            this.f16837b = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f16836a == dVar.f16836a && this.f16837b == dVar.f16837b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f16836a) * 31) + ((int) this.f16837b);
        }
    }

    public k(i iVar, long j10, long j11) {
        this.f16823a = iVar;
        this.f16824b = j10;
        this.f16825c = j11;
    }

    public i a(j jVar) {
        return this.f16823a;
    }

    public long b() {
        return q0.M0(this.f16825c, 1000000L, this.f16824b);
    }

    /* loaded from: classes.dex */
    public static class e extends k {

        /* renamed from: d  reason: collision with root package name */
        final long f16838d;

        /* renamed from: e  reason: collision with root package name */
        final long f16839e;

        public e(i iVar, long j10, long j11, long j12, long j13) {
            super(iVar, j10, j11);
            this.f16838d = j12;
            this.f16839e = j13;
        }

        public i c() {
            long j10 = this.f16839e;
            if (j10 <= 0) {
                return null;
            }
            return new i(null, this.f16838d, j10);
        }

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }
    }
}
