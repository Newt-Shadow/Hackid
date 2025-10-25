package b3;
/* loaded from: classes.dex */
public abstract class o implements t3, u3 {

    /* renamed from: a  reason: collision with root package name */
    private final int f4291a;

    /* renamed from: c  reason: collision with root package name */
    private v3 f4293c;

    /* renamed from: d  reason: collision with root package name */
    private int f4294d;

    /* renamed from: e  reason: collision with root package name */
    private c3.t3 f4295e;

    /* renamed from: f  reason: collision with root package name */
    private int f4296f;

    /* renamed from: g  reason: collision with root package name */
    private d4.m0 f4297g;

    /* renamed from: h  reason: collision with root package name */
    private x1[] f4298h;

    /* renamed from: i  reason: collision with root package name */
    private long f4299i;

    /* renamed from: j  reason: collision with root package name */
    private long f4300j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f4302l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f4303m;

    /* renamed from: b  reason: collision with root package name */
    private final y1 f4292b = new y1();

    /* renamed from: k  reason: collision with root package name */
    private long f4301k = Long.MIN_VALUE;

    public o(int i10) {
        this.f4291a = i10;
    }

    private void W(long j10, boolean z10) {
        this.f4302l = false;
        this.f4300j = j10;
        this.f4301k = j10;
        Q(j10, z10);
    }

    @Override // b3.t3
    public final void A(v3 v3Var, x1[] x1VarArr, d4.m0 m0Var, long j10, boolean z10, boolean z11, long j11, long j12) {
        boolean z12;
        if (this.f4296f == 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        y4.a.f(z12);
        this.f4293c = v3Var;
        this.f4296f = 1;
        P(z10, z11);
        i(x1VarArr, m0Var, j11, j12);
        W(j10, z10);
    }

    @Override // b3.t3
    public final long B() {
        return this.f4301k;
    }

    @Override // b3.t3
    public final void C(long j10) {
        W(j10, false);
    }

    @Override // b3.t3
    public final boolean D() {
        return this.f4302l;
    }

    @Override // b3.t3
    public y4.t E() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a0 G(Throwable th, x1 x1Var, int i10) {
        return H(th, x1Var, false, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final a0 H(Throwable th, x1 x1Var, boolean z10, int i10) {
        int i11;
        if (x1Var != null && !this.f4303m) {
            this.f4303m = true;
            try {
                i11 = u3.F(b(x1Var));
            } catch (a0 unused) {
            } finally {
                this.f4303m = false;
            }
            return a0.f(th, getName(), K(), x1Var, i11, z10, i10);
        }
        i11 = 4;
        return a0.f(th, getName(), K(), x1Var, i11, z10, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final v3 I() {
        return (v3) y4.a.e(this.f4293c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final y1 J() {
        this.f4292b.a();
        return this.f4292b;
    }

    protected final int K() {
        return this.f4294d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c3.t3 L() {
        return (c3.t3) y4.a.e(this.f4295e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final x1[] M() {
        return (x1[]) y4.a.e(this.f4298h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean N() {
        if (j()) {
            return this.f4302l;
        }
        return ((d4.m0) y4.a.e(this.f4297g)).isReady();
    }

    protected abstract void O();

    protected void P(boolean z10, boolean z11) {
    }

    protected abstract void Q(long j10, boolean z10);

    protected void R() {
    }

    protected void S() {
    }

    protected void T() {
    }

    protected abstract void U(x1[] x1VarArr, long j10, long j11);

    /* JADX INFO: Access modifiers changed from: protected */
    public final int V(y1 y1Var, e3.g gVar, int i10) {
        int l10 = ((d4.m0) y4.a.e(this.f4297g)).l(y1Var, gVar, i10);
        if (l10 == -4) {
            if (gVar.q()) {
                this.f4301k = Long.MIN_VALUE;
                if (this.f4302l) {
                    return -4;
                }
                return -3;
            }
            long j10 = gVar.f15291e + this.f4299i;
            gVar.f15291e = j10;
            this.f4301k = Math.max(this.f4301k, j10);
        } else if (l10 == -5) {
            x1 x1Var = (x1) y4.a.e(y1Var.f4575b);
            if (x1Var.f4518p != Long.MAX_VALUE) {
                y1Var.f4575b = x1Var.b().k0(x1Var.f4518p + this.f4299i).G();
            }
        }
        return l10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int X(long j10) {
        return ((d4.m0) y4.a.e(this.f4297g)).j(j10 - this.f4299i);
    }

    @Override // b3.t3
    public final void a() {
        boolean z10;
        if (this.f4296f == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        this.f4292b.a();
        R();
    }

    @Override // b3.t3
    public final void e() {
        boolean z10 = true;
        if (this.f4296f != 1) {
            z10 = false;
        }
        y4.a.f(z10);
        this.f4292b.a();
        this.f4296f = 0;
        this.f4297g = null;
        this.f4298h = null;
        this.f4302l = false;
        O();
    }

    @Override // b3.t3
    public final d4.m0 f() {
        return this.f4297g;
    }

    @Override // b3.t3
    public final int getState() {
        return this.f4296f;
    }

    @Override // b3.t3, b3.u3
    public final int h() {
        return this.f4291a;
    }

    @Override // b3.t3
    public final void i(x1[] x1VarArr, d4.m0 m0Var, long j10, long j11) {
        y4.a.f(!this.f4302l);
        this.f4297g = m0Var;
        if (this.f4301k == Long.MIN_VALUE) {
            this.f4301k = j10;
        }
        this.f4298h = x1VarArr;
        this.f4299i = j11;
        U(x1VarArr, j10, j11);
    }

    @Override // b3.t3
    public final boolean j() {
        if (this.f4301k == Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    @Override // b3.t3
    public final void l(int i10, c3.t3 t3Var) {
        this.f4294d = i10;
        this.f4295e = t3Var;
    }

    @Override // b3.t3
    public final void m() {
        this.f4302l = true;
    }

    @Override // b3.t3
    public final u3 q() {
        return this;
    }

    @Override // b3.t3
    public final void start() {
        boolean z10 = true;
        if (this.f4296f != 1) {
            z10 = false;
        }
        y4.a.f(z10);
        this.f4296f = 2;
        S();
    }

    @Override // b3.t3
    public final void stop() {
        boolean z10;
        if (this.f4296f == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        this.f4296f = 1;
        T();
    }

    @Override // b3.u3
    public int w() {
        return 0;
    }

    @Override // b3.p3.b
    public void y(int i10, Object obj) {
    }

    @Override // b3.t3
    public final void z() {
        ((d4.m0) y4.a.e(this.f4297g)).a();
    }
}
