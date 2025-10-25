package d4;

import b3.x3;
import d4.r;
import d4.t;
/* loaded from: classes.dex */
public final class o implements r, r.a {

    /* renamed from: a  reason: collision with root package name */
    public final t.b f14895a;

    /* renamed from: b  reason: collision with root package name */
    private final long f14896b;

    /* renamed from: c  reason: collision with root package name */
    private final x4.b f14897c;

    /* renamed from: d  reason: collision with root package name */
    private t f14898d;

    /* renamed from: e  reason: collision with root package name */
    private r f14899e;

    /* renamed from: f  reason: collision with root package name */
    private r.a f14900f;

    /* renamed from: g  reason: collision with root package name */
    private long f14901g = -9223372036854775807L;

    public o(t.b bVar, x4.b bVar2, long j10) {
        this.f14895a = bVar;
        this.f14897c = bVar2;
        this.f14896b = j10;
    }

    private long s(long j10) {
        long j11 = this.f14901g;
        if (j11 != -9223372036854775807L) {
            return j11;
        }
        return j10;
    }

    @Override // d4.r, d4.n0
    public long b() {
        return ((r) y4.q0.j(this.f14899e)).b();
    }

    @Override // d4.r, d4.n0
    public boolean c(long j10) {
        r rVar = this.f14899e;
        if (rVar != null && rVar.c(j10)) {
            return true;
        }
        return false;
    }

    @Override // d4.r, d4.n0
    public long d() {
        return ((r) y4.q0.j(this.f14899e)).d();
    }

    @Override // d4.r
    public long e(long j10, x3 x3Var) {
        return ((r) y4.q0.j(this.f14899e)).e(j10, x3Var);
    }

    @Override // d4.r, d4.n0
    public void f(long j10) {
        ((r) y4.q0.j(this.f14899e)).f(j10);
    }

    @Override // d4.r.a
    public void g(r rVar) {
        ((r.a) y4.q0.j(this.f14900f)).g(this);
    }

    @Override // d4.r
    public void i() {
        r rVar = this.f14899e;
        if (rVar != null) {
            rVar.i();
            return;
        }
        t tVar = this.f14898d;
        if (tVar != null) {
            tVar.k();
        }
    }

    @Override // d4.r, d4.n0
    public boolean isLoading() {
        r rVar = this.f14899e;
        if (rVar != null && rVar.isLoading()) {
            return true;
        }
        return false;
    }

    @Override // d4.r
    public long k(long j10) {
        return ((r) y4.q0.j(this.f14899e)).k(j10);
    }

    public void l(t.b bVar) {
        long s10 = s(this.f14896b);
        r d10 = ((t) y4.a.e(this.f14898d)).d(bVar, this.f14897c, s10);
        this.f14899e = d10;
        if (this.f14900f != null) {
            d10.t(this, s10);
        }
    }

    @Override // d4.r
    public long m(w4.y[] yVarArr, boolean[] zArr, m0[] m0VarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f14901g;
        if (j12 != -9223372036854775807L && j10 == this.f14896b) {
            this.f14901g = -9223372036854775807L;
            j11 = j12;
        } else {
            j11 = j10;
        }
        return ((r) y4.q0.j(this.f14899e)).m(yVarArr, zArr, m0VarArr, zArr2, j11);
    }

    public long n() {
        return this.f14901g;
    }

    public long o() {
        return this.f14896b;
    }

    @Override // d4.r
    public long p() {
        return ((r) y4.q0.j(this.f14899e)).p();
    }

    @Override // d4.r
    public u0 q() {
        return ((r) y4.q0.j(this.f14899e)).q();
    }

    @Override // d4.r
    public void r(long j10, boolean z10) {
        ((r) y4.q0.j(this.f14899e)).r(j10, z10);
    }

    @Override // d4.r
    public void t(r.a aVar, long j10) {
        this.f14900f = aVar;
        r rVar = this.f14899e;
        if (rVar != null) {
            rVar.t(this, s(this.f14896b));
        }
    }

    @Override // d4.n0.a
    /* renamed from: u */
    public void h(r rVar) {
        ((r.a) y4.q0.j(this.f14900f)).h(this);
    }

    public void v(long j10) {
        this.f14901g = j10;
    }

    public void w() {
        if (this.f14899e != null) {
            ((t) y4.a.e(this.f14898d)).g(this.f14899e);
        }
    }

    public void x(t tVar) {
        boolean z10;
        if (this.f14898d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        this.f14898d = tVar;
    }
}
