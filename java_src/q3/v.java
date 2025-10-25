package q3;

import b3.x1;
import q3.i0;
import y4.m0;
import y4.q0;
/* loaded from: classes.dex */
public final class v implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private x1 f28349a;

    /* renamed from: b  reason: collision with root package name */
    private m0 f28350b;

    /* renamed from: c  reason: collision with root package name */
    private g3.b0 f28351c;

    public v(String str) {
        this.f28349a = new x1.b().g0(str).G();
    }

    private void c() {
        y4.a.h(this.f28350b);
        q0.j(this.f28351c);
    }

    @Override // q3.b0
    public void a(m0 m0Var, g3.m mVar, i0.d dVar) {
        this.f28350b = m0Var;
        dVar.a();
        g3.b0 a10 = mVar.a(dVar.c(), 5);
        this.f28351c = a10;
        a10.c(this.f28349a);
    }

    @Override // q3.b0
    public void b(y4.e0 e0Var) {
        c();
        long d10 = this.f28350b.d();
        long e10 = this.f28350b.e();
        if (d10 != -9223372036854775807L && e10 != -9223372036854775807L) {
            x1 x1Var = this.f28349a;
            if (e10 != x1Var.f4518p) {
                x1 G = x1Var.b().k0(e10).G();
                this.f28349a = G;
                this.f28351c.c(G);
            }
            int a10 = e0Var.a();
            this.f28351c.b(e0Var, a10);
            this.f28351c.f(d10, 1, a10, 0, null);
        }
    }
}
