package q3;

import b3.x1;
import java.util.List;
import q3.i0;
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final List f28054a;

    /* renamed from: b  reason: collision with root package name */
    private final g3.b0[] f28055b;

    public d0(List list) {
        this.f28054a = list;
        this.f28055b = new g3.b0[list.size()];
    }

    public void a(long j10, y4.e0 e0Var) {
        g3.b.a(j10, e0Var, this.f28055b);
    }

    public void b(g3.m mVar, i0.d dVar) {
        boolean z10;
        for (int i10 = 0; i10 < this.f28055b.length; i10++) {
            dVar.a();
            g3.b0 a10 = mVar.a(dVar.c(), 3);
            x1 x1Var = (x1) this.f28054a.get(i10);
            String str = x1Var.f4514l;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z10 = false;
            } else {
                z10 = true;
            }
            y4.a.b(z10, "Invalid closed caption mime type provided: " + str);
            String str2 = x1Var.f4503a;
            if (str2 == null) {
                str2 = dVar.b();
            }
            a10.c(new x1.b().U(str2).g0(str).i0(x1Var.f4506d).X(x1Var.f4505c).H(x1Var.D).V(x1Var.f4516n).G());
            this.f28055b[i10] = a10;
        }
    }
}
