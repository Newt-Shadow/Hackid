package m5;

import m5.j;
/* loaded from: classes.dex */
public final class k1 extends i1 {

    /* renamed from: c  reason: collision with root package name */
    public final v0 f25826c;

    public k1(v0 v0Var, m6.l lVar) {
        super(3, lVar);
        this.f25826c = v0Var;
    }

    @Override // m5.n1
    public final /* bridge */ /* synthetic */ void d(z zVar, boolean z10) {
    }

    @Override // m5.q0
    public final boolean f(i0 i0Var) {
        return this.f25826c.f25897a.f();
    }

    @Override // m5.q0
    public final l5.d[] g(i0 i0Var) {
        return this.f25826c.f25897a.c();
    }

    @Override // m5.i1
    public final void h(i0 i0Var) {
        this.f25826c.f25897a.d(i0Var.v(), this.f25817b);
        j.a b10 = this.f25826c.f25897a.b();
        if (b10 != null) {
            i0Var.x().put(b10, this.f25826c);
        }
    }
}
