package d4;

import b3.x1;
import b3.x3;
import b3.y1;
import d4.r;
/* loaded from: classes.dex */
public final class d implements r, r.a {

    /* renamed from: a  reason: collision with root package name */
    public final r f14733a;

    /* renamed from: b  reason: collision with root package name */
    private r.a f14734b;

    /* renamed from: c  reason: collision with root package name */
    private a[] f14735c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    private long f14736d;

    /* renamed from: e  reason: collision with root package name */
    long f14737e;

    /* renamed from: f  reason: collision with root package name */
    long f14738f;

    /* loaded from: classes.dex */
    private final class a implements m0 {

        /* renamed from: a  reason: collision with root package name */
        public final m0 f14739a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f14740b;

        public a(m0 m0Var) {
            this.f14739a = m0Var;
        }

        @Override // d4.m0
        public void a() {
            this.f14739a.a();
        }

        public void b() {
            this.f14740b = false;
        }

        @Override // d4.m0
        public boolean isReady() {
            if (!d.this.n() && this.f14739a.isReady()) {
                return true;
            }
            return false;
        }

        @Override // d4.m0
        public int j(long j10) {
            if (d.this.n()) {
                return -3;
            }
            return this.f14739a.j(j10);
        }

        @Override // d4.m0
        public int l(y1 y1Var, e3.g gVar, int i10) {
            if (d.this.n()) {
                return -3;
            }
            if (this.f14740b) {
                gVar.u(4);
                return -4;
            }
            int l10 = this.f14739a.l(y1Var, gVar, i10);
            if (l10 == -5) {
                x1 x1Var = (x1) y4.a.e(y1Var.f4575b);
                int i11 = x1Var.B;
                if (i11 != 0 || x1Var.C != 0) {
                    d dVar = d.this;
                    int i12 = 0;
                    if (dVar.f14737e != 0) {
                        i11 = 0;
                    }
                    if (dVar.f14738f == Long.MIN_VALUE) {
                        i12 = x1Var.C;
                    }
                    y1Var.f4575b = x1Var.b().P(i11).Q(i12).G();
                }
                return -5;
            }
            d dVar2 = d.this;
            long j10 = dVar2.f14738f;
            if (j10 != Long.MIN_VALUE && ((l10 == -4 && gVar.f15291e >= j10) || (l10 == -3 && dVar2.d() == Long.MIN_VALUE && !gVar.f15290d))) {
                gVar.l();
                gVar.u(4);
                this.f14740b = true;
                return -4;
            }
            return l10;
        }
    }

    public d(r rVar, boolean z10, long j10, long j11) {
        long j12;
        this.f14733a = rVar;
        if (z10) {
            j12 = j10;
        } else {
            j12 = -9223372036854775807L;
        }
        this.f14736d = j12;
        this.f14737e = j10;
        this.f14738f = j11;
    }

    private x3 l(long j10, x3 x3Var) {
        long j11;
        long r10 = y4.q0.r(x3Var.f4563a, 0L, j10 - this.f14737e);
        long j12 = x3Var.f4564b;
        long j13 = this.f14738f;
        if (j13 == Long.MIN_VALUE) {
            j11 = Long.MAX_VALUE;
        } else {
            j11 = j13 - j10;
        }
        long r11 = y4.q0.r(j12, 0L, j11);
        if (r10 == x3Var.f4563a && r11 == x3Var.f4564b) {
            return x3Var;
        }
        return new x3(r10, r11);
    }

    private static boolean s(long j10, w4.y[] yVarArr) {
        if (j10 != 0) {
            for (w4.y yVar : yVarArr) {
                if (yVar != null) {
                    x1 n10 = yVar.n();
                    if (!y4.v.a(n10.f4514l, n10.f4511i)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // d4.r, d4.n0
    public long b() {
        long b10 = this.f14733a.b();
        if (b10 != Long.MIN_VALUE) {
            long j10 = this.f14738f;
            if (j10 == Long.MIN_VALUE || b10 < j10) {
                return b10;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // d4.r, d4.n0
    public boolean c(long j10) {
        return this.f14733a.c(j10);
    }

    @Override // d4.r, d4.n0
    public long d() {
        long d10 = this.f14733a.d();
        if (d10 != Long.MIN_VALUE) {
            long j10 = this.f14738f;
            if (j10 == Long.MIN_VALUE || d10 < j10) {
                return d10;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // d4.r
    public long e(long j10, x3 x3Var) {
        long j11 = this.f14737e;
        if (j10 == j11) {
            return j11;
        }
        return this.f14733a.e(j10, l(j10, x3Var));
    }

    @Override // d4.r, d4.n0
    public void f(long j10) {
        this.f14733a.f(j10);
    }

    @Override // d4.r.a
    public void g(r rVar) {
        ((r.a) y4.a.e(this.f14734b)).g(this);
    }

    @Override // d4.r
    public void i() {
        this.f14733a.i();
    }

    @Override // d4.r, d4.n0
    public boolean isLoading() {
        return this.f14733a.isLoading();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        if (r0 > r6) goto L18;
     */
    @Override // d4.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long k(long r6) {
        /*
            r5 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5.f14736d = r0
            d4.d$a[] r0 = r5.f14735c
            int r1 = r0.length
            r2 = 0
            r3 = r2
        Lc:
            if (r3 >= r1) goto L18
            r4 = r0[r3]
            if (r4 == 0) goto L15
            r4.b()
        L15:
            int r3 = r3 + 1
            goto Lc
        L18:
            d4.r r0 = r5.f14733a
            long r0 = r0.k(r6)
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 == 0) goto L34
            long r6 = r5.f14737e
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 < 0) goto L35
            long r6 = r5.f14738f
            r3 = -9223372036854775808
            int r3 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r3 == 0) goto L34
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 > 0) goto L35
        L34:
            r2 = 1
        L35:
            y4.a.f(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d4.d.k(long):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
        if (r2 > r4) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    @Override // d4.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m(w4.y[] r13, boolean[] r14, d4.m0[] r15, boolean[] r16, long r17) {
        /*
            r12 = this;
            r0 = r12
            r1 = r15
            int r2 = r1.length
            d4.d$a[] r2 = new d4.d.a[r2]
            r0.f14735c = r2
            int r2 = r1.length
            d4.m0[] r9 = new d4.m0[r2]
            r10 = 0
            r2 = r10
        Lc:
            int r3 = r1.length
            r11 = 0
            if (r2 >= r3) goto L21
            d4.d$a[] r3 = r0.f14735c
            r4 = r1[r2]
            d4.d$a r4 = (d4.d.a) r4
            r3[r2] = r4
            if (r4 == 0) goto L1c
            d4.m0 r11 = r4.f14739a
        L1c:
            r9[r2] = r11
            int r2 = r2 + 1
            goto Lc
        L21:
            d4.r r2 = r0.f14733a
            r3 = r13
            r4 = r14
            r5 = r9
            r6 = r16
            r7 = r17
            long r2 = r2.m(r3, r4, r5, r6, r7)
            boolean r4 = r12.n()
            if (r4 == 0) goto L43
            long r4 = r0.f14737e
            int r6 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r6 != 0) goto L43
            r6 = r13
            boolean r4 = s(r4, r13)
            if (r4 == 0) goto L43
            r4 = r2
            goto L48
        L43:
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L48:
            r0.f14736d = r4
            int r4 = (r2 > r17 ? 1 : (r2 == r17 ? 0 : -1))
            if (r4 == 0) goto L63
            long r4 = r0.f14737e
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 < 0) goto L61
            long r4 = r0.f14738f
            r6 = -9223372036854775808
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 == 0) goto L63
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 > 0) goto L61
            goto L63
        L61:
            r4 = r10
            goto L64
        L63:
            r4 = 1
        L64:
            y4.a.f(r4)
        L67:
            int r4 = r1.length
            if (r10 >= r4) goto L8d
            r4 = r9[r10]
            if (r4 != 0) goto L73
            d4.d$a[] r4 = r0.f14735c
            r4[r10] = r11
            goto L84
        L73:
            d4.d$a[] r5 = r0.f14735c
            r6 = r5[r10]
            if (r6 == 0) goto L7d
            d4.m0 r6 = r6.f14739a
            if (r6 == r4) goto L84
        L7d:
            d4.d$a r6 = new d4.d$a
            r6.<init>(r4)
            r5[r10] = r6
        L84:
            d4.d$a[] r4 = r0.f14735c
            r4 = r4[r10]
            r1[r10] = r4
            int r10 = r10 + 1
            goto L67
        L8d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d4.d.m(w4.y[], boolean[], d4.m0[], boolean[], long):long");
    }

    boolean n() {
        if (this.f14736d != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    @Override // d4.n0.a
    /* renamed from: o */
    public void h(r rVar) {
        ((r.a) y4.a.e(this.f14734b)).h(this);
    }

    @Override // d4.r
    public long p() {
        boolean z10;
        if (n()) {
            long j10 = this.f14736d;
            this.f14736d = -9223372036854775807L;
            long p10 = p();
            if (p10 != -9223372036854775807L) {
                return p10;
            }
            return j10;
        }
        long p11 = this.f14733a.p();
        if (p11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z11 = true;
        if (p11 >= this.f14737e) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        long j11 = this.f14738f;
        if (j11 != Long.MIN_VALUE && p11 > j11) {
            z11 = false;
        }
        y4.a.f(z11);
        return p11;
    }

    @Override // d4.r
    public u0 q() {
        return this.f14733a.q();
    }

    @Override // d4.r
    public void r(long j10, boolean z10) {
        this.f14733a.r(j10, z10);
    }

    @Override // d4.r
    public void t(r.a aVar, long j10) {
        this.f14734b = aVar;
        this.f14733a.t(this, j10);
    }

    public void u(long j10, long j11) {
        this.f14737e = j10;
        this.f14738f = j11;
    }
}
