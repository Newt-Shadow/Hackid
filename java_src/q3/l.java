package q3;

import b3.x1;
import java.util.Collections;
import java.util.List;
import q3.i0;
/* loaded from: classes.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final List f28175a;

    /* renamed from: b  reason: collision with root package name */
    private final g3.b0[] f28176b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28177c;

    /* renamed from: d  reason: collision with root package name */
    private int f28178d;

    /* renamed from: e  reason: collision with root package name */
    private int f28179e;

    /* renamed from: f  reason: collision with root package name */
    private long f28180f = -9223372036854775807L;

    public l(List list) {
        this.f28175a = list;
        this.f28176b = new g3.b0[list.size()];
    }

    private boolean a(y4.e0 e0Var, int i10) {
        if (e0Var.a() == 0) {
            return false;
        }
        if (e0Var.G() != i10) {
            this.f28177c = false;
        }
        this.f28178d--;
        return this.f28177c;
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        g3.b0[] b0VarArr;
        if (this.f28177c) {
            if (this.f28178d == 2 && !a(e0Var, 32)) {
                return;
            }
            if (this.f28178d == 1 && !a(e0Var, 0)) {
                return;
            }
            int f10 = e0Var.f();
            int a10 = e0Var.a();
            for (g3.b0 b0Var : this.f28176b) {
                e0Var.T(f10);
                b0Var.b(e0Var, a10);
            }
            this.f28179e += a10;
        }
    }

    @Override // q3.m
    public void c() {
        this.f28177c = false;
        this.f28180f = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
        if (this.f28177c) {
            if (this.f28180f != -9223372036854775807L) {
                for (g3.b0 b0Var : this.f28176b) {
                    b0Var.f(this.f28180f, 1, this.f28179e, 0, null);
                }
            }
            this.f28177c = false;
        }
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f28177c = true;
        if (j10 != -9223372036854775807L) {
            this.f28180f = j10;
        }
        this.f28179e = 0;
        this.f28178d = 2;
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.f28176b.length; i10++) {
            i0.a aVar = (i0.a) this.f28175a.get(i10);
            dVar.a();
            g3.b0 a10 = mVar.a(dVar.c(), 3);
            a10.c(new x1.b().U(dVar.b()).g0("application/dvbsubs").V(Collections.singletonList(aVar.f28150c)).X(aVar.f28148a).G());
            this.f28176b[i10] = a10;
        }
    }
}
