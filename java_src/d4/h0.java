package d4;

import android.os.Looper;
import b3.f2;
import b3.g4;
import c3.t3;
import d4.b0;
import d4.g0;
import d4.h0;
import d4.t;
import x4.j;
/* loaded from: classes.dex */
public final class h0 extends d4.a implements g0.b {

    /* renamed from: h  reason: collision with root package name */
    private final f2 f14807h;

    /* renamed from: i  reason: collision with root package name */
    private final f2.h f14808i;

    /* renamed from: j  reason: collision with root package name */
    private final j.a f14809j;

    /* renamed from: k  reason: collision with root package name */
    private final b0.a f14810k;

    /* renamed from: l  reason: collision with root package name */
    private final f3.v f14811l;

    /* renamed from: m  reason: collision with root package name */
    private final x4.d0 f14812m;

    /* renamed from: n  reason: collision with root package name */
    private final int f14813n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f14814o;

    /* renamed from: p  reason: collision with root package name */
    private long f14815p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f14816q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f14817r;

    /* renamed from: s  reason: collision with root package name */
    private x4.m0 f14818s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends l {
        a(h0 h0Var, g4 g4Var) {
            super(g4Var);
        }

        @Override // d4.l, b3.g4
        public g4.b k(int i10, g4.b bVar, boolean z10) {
            super.k(i10, bVar, z10);
            bVar.f4058f = true;
            return bVar;
        }

        @Override // d4.l, b3.g4
        public g4.d s(int i10, g4.d dVar, long j10) {
            super.s(i10, dVar, j10);
            dVar.f4084l = true;
            return dVar;
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements t.a {

        /* renamed from: a  reason: collision with root package name */
        private final j.a f14819a;

        /* renamed from: b  reason: collision with root package name */
        private b0.a f14820b;

        /* renamed from: c  reason: collision with root package name */
        private f3.x f14821c;

        /* renamed from: d  reason: collision with root package name */
        private x4.d0 f14822d;

        /* renamed from: e  reason: collision with root package name */
        private int f14823e;

        /* renamed from: f  reason: collision with root package name */
        private String f14824f;

        /* renamed from: g  reason: collision with root package name */
        private Object f14825g;

        public b(j.a aVar) {
            this(aVar, new g3.h());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ b0 c(g3.p pVar, t3 t3Var) {
            return new c(pVar);
        }

        public h0 b(f2 f2Var) {
            boolean z10;
            y4.a.e(f2Var.f3880b);
            f2.h hVar = f2Var.f3880b;
            boolean z11 = true;
            if (hVar.f3960h == null && this.f14825g != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (hVar.f3957e != null || this.f14824f == null) {
                z11 = false;
            }
            if (z10 && z11) {
                f2Var = f2Var.b().d(this.f14825g).b(this.f14824f).a();
            } else if (z10) {
                f2Var = f2Var.b().d(this.f14825g).a();
            } else if (z11) {
                f2Var = f2Var.b().b(this.f14824f).a();
            }
            f2 f2Var2 = f2Var;
            return new h0(f2Var2, this.f14819a, this.f14820b, this.f14821c.a(f2Var2), this.f14822d, this.f14823e, null);
        }

        public b(j.a aVar, final g3.p pVar) {
            this(aVar, new b0.a() { // from class: d4.i0
                @Override // d4.b0.a
                public final b0 a(t3 t3Var) {
                    b0 c10;
                    c10 = h0.b.c(g3.p.this, t3Var);
                    return c10;
                }
            });
        }

        public b(j.a aVar, b0.a aVar2) {
            this(aVar, aVar2, new f3.l(), new x4.v(), 1048576);
        }

        public b(j.a aVar, b0.a aVar2, f3.x xVar, x4.d0 d0Var, int i10) {
            this.f14819a = aVar;
            this.f14820b = aVar2;
            this.f14821c = xVar;
            this.f14822d = d0Var;
            this.f14823e = i10;
        }
    }

    /* synthetic */ h0(f2 f2Var, j.a aVar, b0.a aVar2, f3.v vVar, x4.d0 d0Var, int i10, a aVar3) {
        this(f2Var, aVar, aVar2, vVar, d0Var, i10);
    }

    private void F() {
        g4 p0Var = new p0(this.f14815p, this.f14816q, false, this.f14817r, null, this.f14807h);
        if (this.f14814o) {
            p0Var = new a(this, p0Var);
        }
        D(p0Var);
    }

    @Override // d4.a
    protected void C(x4.m0 m0Var) {
        this.f14818s = m0Var;
        this.f14811l.d((Looper) y4.a.e(Looper.myLooper()), A());
        this.f14811l.b();
        F();
    }

    @Override // d4.a
    protected void E() {
        this.f14811l.release();
    }

    @Override // d4.t
    public r d(t.b bVar, x4.b bVar2, long j10) {
        x4.j a10 = this.f14809j.a();
        x4.m0 m0Var = this.f14818s;
        if (m0Var != null) {
            a10.d(m0Var);
        }
        return new g0(this.f14808i.f3953a, a10, this.f14810k.a(A()), this.f14811l, u(bVar), this.f14812m, w(bVar), this, bVar2, this.f14808i.f3957e, this.f14813n);
    }

    @Override // d4.g0.b
    public void f(long j10, boolean z10, boolean z11) {
        if (j10 == -9223372036854775807L) {
            j10 = this.f14815p;
        }
        if (!this.f14814o && this.f14815p == j10 && this.f14816q == z10 && this.f14817r == z11) {
            return;
        }
        this.f14815p = j10;
        this.f14816q = z10;
        this.f14817r = z11;
        this.f14814o = false;
        F();
    }

    @Override // d4.t
    public void g(r rVar) {
        ((g0) rVar).e0();
    }

    @Override // d4.t
    public f2 j() {
        return this.f14807h;
    }

    @Override // d4.t
    public void k() {
    }

    private h0(f2 f2Var, j.a aVar, b0.a aVar2, f3.v vVar, x4.d0 d0Var, int i10) {
        this.f14808i = (f2.h) y4.a.e(f2Var.f3880b);
        this.f14807h = f2Var;
        this.f14809j = aVar;
        this.f14810k = aVar2;
        this.f14811l = vVar;
        this.f14812m = d0Var;
        this.f14813n = i10;
        this.f14814o = true;
        this.f14815p = -9223372036854775807L;
    }
}
