package d4;

import b3.f2;
import b3.g4;
import d4.t;
/* loaded from: classes.dex */
public final class p extends w0 {

    /* renamed from: m  reason: collision with root package name */
    private final boolean f14905m;

    /* renamed from: n  reason: collision with root package name */
    private final g4.d f14906n;

    /* renamed from: o  reason: collision with root package name */
    private final g4.b f14907o;

    /* renamed from: p  reason: collision with root package name */
    private a f14908p;

    /* renamed from: q  reason: collision with root package name */
    private o f14909q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f14910r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f14911s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f14912t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends l {

        /* renamed from: i  reason: collision with root package name */
        public static final Object f14913i = new Object();

        /* renamed from: g  reason: collision with root package name */
        private final Object f14914g;

        /* renamed from: h  reason: collision with root package name */
        private final Object f14915h;

        private a(g4 g4Var, Object obj, Object obj2) {
            super(g4Var);
            this.f14914g = obj;
            this.f14915h = obj2;
        }

        public static a y(f2 f2Var) {
            return new a(new b(f2Var), g4.d.f4064r, f14913i);
        }

        public static a z(g4 g4Var, Object obj, Object obj2) {
            return new a(g4Var, obj, obj2);
        }

        @Override // d4.l, b3.g4
        public int f(Object obj) {
            Object obj2;
            g4 g4Var = this.f14850f;
            if (f14913i.equals(obj) && (obj2 = this.f14915h) != null) {
                obj = obj2;
            }
            return g4Var.f(obj);
        }

        @Override // d4.l, b3.g4
        public g4.b k(int i10, g4.b bVar, boolean z10) {
            this.f14850f.k(i10, bVar, z10);
            if (y4.q0.c(bVar.f4054b, this.f14915h) && z10) {
                bVar.f4054b = f14913i;
            }
            return bVar;
        }

        @Override // d4.l, b3.g4
        public Object q(int i10) {
            Object q10 = this.f14850f.q(i10);
            if (y4.q0.c(q10, this.f14915h)) {
                return f14913i;
            }
            return q10;
        }

        @Override // d4.l, b3.g4
        public g4.d s(int i10, g4.d dVar, long j10) {
            this.f14850f.s(i10, dVar, j10);
            if (y4.q0.c(dVar.f4073a, this.f14914g)) {
                dVar.f4073a = g4.d.f4064r;
            }
            return dVar;
        }

        public a x(g4 g4Var) {
            return new a(g4Var, this.f14914g, this.f14915h);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends g4 {

        /* renamed from: f  reason: collision with root package name */
        private final f2 f14916f;

        public b(f2 f2Var) {
            this.f14916f = f2Var;
        }

        @Override // b3.g4
        public int f(Object obj) {
            if (obj == a.f14913i) {
                return 0;
            }
            return -1;
        }

        @Override // b3.g4
        public g4.b k(int i10, g4.b bVar, boolean z10) {
            Integer num;
            Object obj = null;
            if (z10) {
                num = 0;
            } else {
                num = null;
            }
            if (z10) {
                obj = a.f14913i;
            }
            bVar.v(num, obj, 0, -9223372036854775807L, 0L, e4.c.f15318g, true);
            return bVar;
        }

        @Override // b3.g4
        public int m() {
            return 1;
        }

        @Override // b3.g4
        public Object q(int i10) {
            return a.f14913i;
        }

        @Override // b3.g4
        public g4.d s(int i10, g4.d dVar, long j10) {
            dVar.h(g4.d.f4064r, this.f14916f, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            dVar.f4084l = true;
            return dVar;
        }

        @Override // b3.g4
        public int t() {
            return 1;
        }
    }

    public p(t tVar, boolean z10) {
        super(tVar);
        boolean z11;
        if (z10 && tVar.l()) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f14905m = z11;
        this.f14906n = new g4.d();
        this.f14907o = new g4.b();
        g4 n10 = tVar.n();
        if (n10 != null) {
            this.f14908p = a.z(n10, null, null);
            this.f14912t = true;
            return;
        }
        this.f14908p = a.y(tVar.j());
    }

    private Object X(Object obj) {
        if (this.f14908p.f14915h != null && this.f14908p.f14915h.equals(obj)) {
            return a.f14913i;
        }
        return obj;
    }

    private Object Y(Object obj) {
        if (this.f14908p.f14915h != null && obj.equals(a.f14913i)) {
            return this.f14908p.f14915h;
        }
        return obj;
    }

    private void a0(long j10) {
        o oVar = this.f14909q;
        int f10 = this.f14908p.f(oVar.f14895a.f14942a);
        if (f10 == -1) {
            return;
        }
        long j11 = this.f14908p.j(f10, this.f14907o).f4056d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        oVar.v(j10);
    }

    @Override // d4.f, d4.a
    public void E() {
        this.f14911s = false;
        this.f14910r = false;
        super.E();
    }

    @Override // d4.w0
    protected t.b M(t.b bVar) {
        return bVar.c(X(bVar.f14942a));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // d4.w0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void S(b3.g4 r15) {
        /*
            r14 = this;
            boolean r0 = r14.f14911s
            if (r0 == 0) goto L19
            d4.p$a r0 = r14.f14908p
            d4.p$a r15 = r0.x(r15)
            r14.f14908p = r15
            d4.o r15 = r14.f14909q
            if (r15 == 0) goto Lae
            long r0 = r15.n()
            r14.a0(r0)
            goto Lae
        L19:
            boolean r0 = r15.u()
            if (r0 == 0) goto L36
            boolean r0 = r14.f14912t
            if (r0 == 0) goto L2a
            d4.p$a r0 = r14.f14908p
            d4.p$a r15 = r0.x(r15)
            goto L32
        L2a:
            java.lang.Object r0 = b3.g4.d.f4064r
            java.lang.Object r1 = d4.p.a.f14913i
            d4.p$a r15 = d4.p.a.z(r15, r0, r1)
        L32:
            r14.f14908p = r15
            goto Lae
        L36:
            b3.g4$d r0 = r14.f14906n
            r1 = 0
            r15.r(r1, r0)
            b3.g4$d r0 = r14.f14906n
            long r2 = r0.e()
            b3.g4$d r0 = r14.f14906n
            java.lang.Object r0 = r0.f4073a
            d4.o r4 = r14.f14909q
            if (r4 == 0) goto L74
            long r4 = r4.o()
            d4.p$a r6 = r14.f14908p
            d4.o r7 = r14.f14909q
            d4.t$b r7 = r7.f14895a
            java.lang.Object r7 = r7.f14942a
            b3.g4$b r8 = r14.f14907o
            r6.l(r7, r8)
            b3.g4$b r6 = r14.f14907o
            long r6 = r6.q()
            long r6 = r6 + r4
            d4.p$a r4 = r14.f14908p
            b3.g4$d r5 = r14.f14906n
            b3.g4$d r1 = r4.r(r1, r5)
            long r4 = r1.e()
            int r1 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r1 == 0) goto L74
            r12 = r6
            goto L75
        L74:
            r12 = r2
        L75:
            b3.g4$d r9 = r14.f14906n
            b3.g4$b r10 = r14.f14907o
            r11 = 0
            r8 = r15
            android.util.Pair r1 = r8.n(r9, r10, r11, r12)
            java.lang.Object r2 = r1.first
            java.lang.Object r1 = r1.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r3 = r1.longValue()
            boolean r1 = r14.f14912t
            if (r1 == 0) goto L94
            d4.p$a r0 = r14.f14908p
            d4.p$a r15 = r0.x(r15)
            goto L98
        L94:
            d4.p$a r15 = d4.p.a.z(r15, r0, r2)
        L98:
            r14.f14908p = r15
            d4.o r15 = r14.f14909q
            if (r15 == 0) goto Lae
            r14.a0(r3)
            d4.t$b r15 = r15.f14895a
            java.lang.Object r0 = r15.f14942a
            java.lang.Object r0 = r14.Y(r0)
            d4.t$b r15 = r15.c(r0)
            goto Laf
        Lae:
            r15 = 0
        Laf:
            r0 = 1
            r14.f14912t = r0
            r14.f14911s = r0
            d4.p$a r0 = r14.f14908p
            r14.D(r0)
            if (r15 == 0) goto Lc6
            d4.o r0 = r14.f14909q
            java.lang.Object r0 = y4.a.e(r0)
            d4.o r0 = (d4.o) r0
            r0.l(r15)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d4.p.S(b3.g4):void");
    }

    @Override // d4.w0
    public void V() {
        if (!this.f14905m) {
            this.f14910r = true;
            U();
        }
    }

    @Override // d4.t
    /* renamed from: W */
    public o d(t.b bVar, x4.b bVar2, long j10) {
        o oVar = new o(bVar, bVar2, j10);
        oVar.x(this.f14976k);
        if (this.f14911s) {
            oVar.l(bVar.c(Y(bVar.f14942a)));
        } else {
            this.f14909q = oVar;
            if (!this.f14910r) {
                this.f14910r = true;
                U();
            }
        }
        return oVar;
    }

    public g4 Z() {
        return this.f14908p;
    }

    @Override // d4.t
    public void g(r rVar) {
        ((o) rVar).w();
        if (rVar == this.f14909q) {
            this.f14909q = null;
        }
    }

    @Override // d4.t
    public void k() {
    }
}
