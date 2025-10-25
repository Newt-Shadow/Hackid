package b3;

import android.util.Pair;
import b3.g4;
/* loaded from: classes.dex */
public abstract class a extends g4 {

    /* renamed from: f  reason: collision with root package name */
    private final int f3757f;

    /* renamed from: g  reason: collision with root package name */
    private final d4.o0 f3758g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f3759h;

    public a(boolean z10, d4.o0 o0Var) {
        this.f3759h = z10;
        this.f3758g = o0Var;
        this.f3757f = o0Var.b();
    }

    public static Object A(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object C(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int F(int i10, boolean z10) {
        if (z10) {
            return this.f3758g.f(i10);
        }
        if (i10 < this.f3757f - 1) {
            return i10 + 1;
        }
        return -1;
    }

    private int G(int i10, boolean z10) {
        if (z10) {
            return this.f3758g.e(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }

    public static Object z(Object obj) {
        return ((Pair) obj).second;
    }

    protected abstract Object B(int i10);

    protected abstract int D(int i10);

    protected abstract int E(int i10);

    protected abstract g4 H(int i10);

    @Override // b3.g4
    public int e(boolean z10) {
        if (this.f3757f == 0) {
            return -1;
        }
        int i10 = 0;
        if (this.f3759h) {
            z10 = false;
        }
        if (z10) {
            i10 = this.f3758g.d();
        }
        while (H(i10).u()) {
            i10 = F(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return E(i10) + H(i10).e(z10);
    }

    @Override // b3.g4
    public final int f(Object obj) {
        int f10;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object A = A(obj);
        Object z10 = z(obj);
        int w10 = w(A);
        if (w10 == -1 || (f10 = H(w10).f(z10)) == -1) {
            return -1;
        }
        return D(w10) + f10;
    }

    @Override // b3.g4
    public int g(boolean z10) {
        int i10;
        int i11 = this.f3757f;
        if (i11 == 0) {
            return -1;
        }
        if (this.f3759h) {
            z10 = false;
        }
        if (z10) {
            i10 = this.f3758g.h();
        } else {
            i10 = i11 - 1;
        }
        while (H(i10).u()) {
            i10 = G(i10, z10);
            if (i10 == -1) {
                return -1;
            }
        }
        return E(i10) + H(i10).g(z10);
    }

    @Override // b3.g4
    public int i(int i10, int i11, boolean z10) {
        int i12 = 0;
        if (this.f3759h) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int y10 = y(i10);
        int E = E(y10);
        g4 H = H(y10);
        int i13 = i10 - E;
        if (i11 != 2) {
            i12 = i11;
        }
        int i14 = H.i(i13, i12, z10);
        if (i14 != -1) {
            return E + i14;
        }
        int F = F(y10, z10);
        while (F != -1 && H(F).u()) {
            F = F(F, z10);
        }
        if (F != -1) {
            return E(F) + H(F).e(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return e(z10);
    }

    @Override // b3.g4
    public final g4.b k(int i10, g4.b bVar, boolean z10) {
        int x10 = x(i10);
        int E = E(x10);
        H(x10).k(i10 - D(x10), bVar, z10);
        bVar.f4055c += E;
        if (z10) {
            bVar.f4054b = C(B(x10), y4.a.e(bVar.f4054b));
        }
        return bVar;
    }

    @Override // b3.g4
    public final g4.b l(Object obj, g4.b bVar) {
        Object A = A(obj);
        Object z10 = z(obj);
        int w10 = w(A);
        int E = E(w10);
        H(w10).l(z10, bVar);
        bVar.f4055c += E;
        bVar.f4054b = obj;
        return bVar;
    }

    @Override // b3.g4
    public int p(int i10, int i11, boolean z10) {
        int i12 = 0;
        if (this.f3759h) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int y10 = y(i10);
        int E = E(y10);
        g4 H = H(y10);
        int i13 = i10 - E;
        if (i11 != 2) {
            i12 = i11;
        }
        int p10 = H.p(i13, i12, z10);
        if (p10 != -1) {
            return E + p10;
        }
        int G = G(y10, z10);
        while (G != -1 && H(G).u()) {
            G = G(G, z10);
        }
        if (G != -1) {
            return E(G) + H(G).g(z10);
        }
        if (i11 != 2) {
            return -1;
        }
        return g(z10);
    }

    @Override // b3.g4
    public final Object q(int i10) {
        int x10 = x(i10);
        return C(B(x10), H(x10).q(i10 - D(x10)));
    }

    @Override // b3.g4
    public final g4.d s(int i10, g4.d dVar, long j10) {
        int y10 = y(i10);
        int E = E(y10);
        int D = D(y10);
        H(y10).s(i10 - E, dVar, j10);
        Object B = B(y10);
        if (!g4.d.f4064r.equals(dVar.f4073a)) {
            B = C(B, dVar.f4073a);
        }
        dVar.f4073a = B;
        dVar.f4087o += D;
        dVar.f4088p += D;
        return dVar;
    }

    protected abstract int w(Object obj);

    protected abstract int x(int i10);

    protected abstract int y(int i10);
}
