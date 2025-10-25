package b3;
/* loaded from: classes.dex */
final class v implements y4.t {

    /* renamed from: a  reason: collision with root package name */
    private final y4.i0 f4463a;

    /* renamed from: b  reason: collision with root package name */
    private final a f4464b;

    /* renamed from: c  reason: collision with root package name */
    private t3 f4465c;

    /* renamed from: d  reason: collision with root package name */
    private y4.t f4466d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4467e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4468f;

    /* loaded from: classes.dex */
    public interface a {
        void onPlaybackParametersChanged(l3 l3Var);
    }

    public v(a aVar, y4.d dVar) {
        this.f4464b = aVar;
        this.f4463a = new y4.i0(dVar);
    }

    private boolean e(boolean z10) {
        t3 t3Var = this.f4465c;
        if (t3Var != null && !t3Var.d() && (this.f4465c.isReady() || (!z10 && !this.f4465c.j()))) {
            return false;
        }
        return true;
    }

    private void j(boolean z10) {
        if (e(z10)) {
            this.f4467e = true;
            if (this.f4468f) {
                this.f4463a.b();
                return;
            }
            return;
        }
        y4.t tVar = (y4.t) y4.a.e(this.f4466d);
        long s10 = tVar.s();
        if (this.f4467e) {
            if (s10 < this.f4463a.s()) {
                this.f4463a.d();
                return;
            }
            this.f4467e = false;
            if (this.f4468f) {
                this.f4463a.b();
            }
        }
        this.f4463a.a(s10);
        l3 g10 = tVar.g();
        if (!g10.equals(this.f4463a.g())) {
            this.f4463a.c(g10);
            this.f4464b.onPlaybackParametersChanged(g10);
        }
    }

    public void a(t3 t3Var) {
        if (t3Var == this.f4465c) {
            this.f4466d = null;
            this.f4465c = null;
            this.f4467e = true;
        }
    }

    public void b(t3 t3Var) {
        y4.t tVar;
        y4.t E = t3Var.E();
        if (E != null && E != (tVar = this.f4466d)) {
            if (tVar == null) {
                this.f4466d = E;
                this.f4465c = t3Var;
                E.c(this.f4463a.g());
                return;
            }
            throw a0.h(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    @Override // y4.t
    public void c(l3 l3Var) {
        y4.t tVar = this.f4466d;
        if (tVar != null) {
            tVar.c(l3Var);
            l3Var = this.f4466d.g();
        }
        this.f4463a.c(l3Var);
    }

    public void d(long j10) {
        this.f4463a.a(j10);
    }

    public void f() {
        this.f4468f = true;
        this.f4463a.b();
    }

    @Override // y4.t
    public l3 g() {
        y4.t tVar = this.f4466d;
        if (tVar != null) {
            return tVar.g();
        }
        return this.f4463a.g();
    }

    public void h() {
        this.f4468f = false;
        this.f4463a.d();
    }

    public long i(boolean z10) {
        j(z10);
        return s();
    }

    @Override // y4.t
    public long s() {
        if (this.f4467e) {
            return this.f4463a.s();
        }
        return ((y4.t) y4.a.e(this.f4466d)).s();
    }
}
