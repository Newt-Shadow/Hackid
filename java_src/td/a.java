package td;

import id.Function2;
/* loaded from: classes2.dex */
public abstract class a extends z1 implements ad.e, l0 {

    /* renamed from: c  reason: collision with root package name */
    private final ad.i f30619c;

    public a(ad.i iVar, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            m0((t1) iVar.a(t1.f30695t0));
        }
        this.f30619c = iVar.e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // td.z1
    public String O() {
        return p0.a(this) + " was cancelled";
    }

    protected void O0(Object obj) {
        F(obj);
    }

    protected void P0(Throwable th, boolean z10) {
    }

    protected void Q0(Object obj) {
    }

    public final void R0(n0 n0Var, Object obj, Function2 function2) {
        n0Var.b(function2, obj, this);
    }

    @Override // ad.e
    public final ad.i getContext() {
        return this.f30619c;
    }

    @Override // td.z1, td.t1
    public boolean isActive() {
        return super.isActive();
    }

    @Override // td.z1
    public final void l0(Throwable th) {
        k0.a(this.f30619c, th);
    }

    @Override // td.l0
    public ad.i n() {
        return this.f30619c;
    }

    @Override // ad.e
    public final void resumeWith(Object obj) {
        Object s02 = s0(c0.b(obj));
        if (s02 == a2.f30623b) {
            return;
        }
        O0(s02);
    }

    @Override // td.z1
    public String t0() {
        String g10 = g0.g(this.f30619c);
        if (g10 == null) {
            return super.t0();
        }
        return '\"' + g10 + "\":" + super.t0();
    }

    @Override // td.z1
    protected final void y0(Object obj) {
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            P0(a0Var.f30621a, a0Var.a());
            return;
        }
        Q0(obj);
    }
}
