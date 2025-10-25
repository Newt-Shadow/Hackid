package m5;

import android.app.Activity;
/* loaded from: classes.dex */
public final class a0 extends r1 {

    /* renamed from: f  reason: collision with root package name */
    private final r.b f25752f;

    /* renamed from: g  reason: collision with root package name */
    private final e f25753g;

    a0(i iVar, e eVar, l5.f fVar) {
        super(iVar, fVar);
        this.f25752f = new r.b();
        this.f25753g = eVar;
        this.f25802a.c("ConnectionlessLifecycleHelper", this);
    }

    public static void u(Activity activity, e eVar, b bVar) {
        i c10 = h.c(activity);
        a0 a0Var = (a0) c10.a("ConnectionlessLifecycleHelper", a0.class);
        if (a0Var == null) {
            a0Var = new a0(c10, eVar, l5.f.m());
        }
        n5.q.l(bVar, "ApiKey cannot be null");
        a0Var.f25752f.add(bVar);
        eVar.b(a0Var);
    }

    private final void v() {
        if (!this.f25752f.isEmpty()) {
            this.f25753g.b(this);
        }
    }

    @Override // m5.h
    public final void h() {
        super.h();
        v();
    }

    @Override // m5.r1, m5.h
    public final void j() {
        super.j();
        v();
    }

    @Override // m5.r1, m5.h
    public final void k() {
        super.k();
        this.f25753g.c(this);
    }

    @Override // m5.r1
    protected final void m(l5.b bVar, int i10) {
        this.f25753g.F(bVar, i10);
    }

    @Override // m5.r1
    protected final void n() {
        this.f25753g.G();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final r.b t() {
        return this.f25752f;
    }
}
