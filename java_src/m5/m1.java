package m5;

import m5.j;
/* loaded from: classes.dex */
public final class m1 extends i1 {

    /* renamed from: c  reason: collision with root package name */
    public final j.a f25838c;

    public m1(j.a aVar, m6.l lVar) {
        super(4, lVar);
        this.f25838c = aVar;
    }

    @Override // m5.n1
    public final /* bridge */ /* synthetic */ void d(z zVar, boolean z10) {
    }

    @Override // m5.q0
    public final boolean f(i0 i0Var) {
        v0 v0Var = (v0) i0Var.x().get(this.f25838c);
        if (v0Var != null && v0Var.f25897a.f()) {
            return true;
        }
        return false;
    }

    @Override // m5.q0
    public final l5.d[] g(i0 i0Var) {
        v0 v0Var = (v0) i0Var.x().get(this.f25838c);
        if (v0Var == null) {
            return null;
        }
        return v0Var.f25897a.c();
    }

    @Override // m5.i1
    public final void h(i0 i0Var) {
        v0 v0Var = (v0) i0Var.x().remove(this.f25838c);
        if (v0Var != null) {
            v0Var.f25898b.b(i0Var.v(), this.f25817b);
            v0Var.f25897a.a();
            return;
        }
        this.f25817b.e(Boolean.FALSE);
    }
}
