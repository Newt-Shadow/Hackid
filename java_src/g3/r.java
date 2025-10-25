package g3;

import b3.e3;
import g3.t;
import java.util.Arrays;
import java.util.List;
import y3.h;
/* loaded from: classes.dex */
public abstract class r {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public t f16225a;

        public a(t tVar) {
            this.f16225a = tVar;
        }
    }

    public static boolean a(l lVar) {
        y4.e0 e0Var = new y4.e0(4);
        lVar.p(e0Var.e(), 0, 4);
        if (e0Var.I() != 1716281667) {
            return false;
        }
        return true;
    }

    public static int b(l lVar) {
        lVar.l();
        y4.e0 e0Var = new y4.e0(2);
        lVar.p(e0Var.e(), 0, 2);
        int M = e0Var.M();
        if ((M >> 2) == 16382) {
            lVar.l();
            return M;
        }
        lVar.l();
        throw e3.a("First frame does not start with sync code.", null);
    }

    public static t3.a c(l lVar, boolean z10) {
        h.a aVar;
        if (z10) {
            aVar = null;
        } else {
            aVar = y3.h.f32839b;
        }
        t3.a a10 = new w().a(lVar, aVar);
        if (a10 == null || a10.e() == 0) {
            return null;
        }
        return a10;
    }

    public static t3.a d(l lVar, boolean z10) {
        lVar.l();
        long g10 = lVar.g();
        t3.a c10 = c(lVar, z10);
        lVar.m((int) (lVar.g() - g10));
        return c10;
    }

    public static boolean e(l lVar, a aVar) {
        lVar.l();
        y4.d0 d0Var = new y4.d0(new byte[4]);
        lVar.p(d0Var.f32862a, 0, 4);
        boolean g10 = d0Var.g();
        int h10 = d0Var.h(7);
        int h11 = d0Var.h(24) + 4;
        if (h10 == 0) {
            aVar.f16225a = h(lVar);
        } else {
            t tVar = aVar.f16225a;
            if (tVar != null) {
                if (h10 == 3) {
                    aVar.f16225a = tVar.b(f(lVar, h11));
                } else if (h10 == 4) {
                    aVar.f16225a = tVar.c(j(lVar, h11));
                } else if (h10 == 6) {
                    y4.e0 e0Var = new y4.e0(h11);
                    lVar.readFully(e0Var.e(), 0, h11);
                    e0Var.U(4);
                    aVar.f16225a = tVar.a(o6.q.F(w3.a.a(e0Var)));
                } else {
                    lVar.m(h11);
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return g10;
    }

    private static t.a f(l lVar, int i10) {
        y4.e0 e0Var = new y4.e0(i10);
        lVar.readFully(e0Var.e(), 0, i10);
        return g(e0Var);
    }

    public static t.a g(y4.e0 e0Var) {
        e0Var.U(1);
        int J = e0Var.J();
        long f10 = e0Var.f() + J;
        int i10 = J / 18;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            long z10 = e0Var.z();
            if (z10 == -1) {
                jArr = Arrays.copyOf(jArr, i11);
                jArr2 = Arrays.copyOf(jArr2, i11);
                break;
            }
            jArr[i11] = z10;
            jArr2[i11] = e0Var.z();
            e0Var.U(2);
            i11++;
        }
        e0Var.U((int) (f10 - e0Var.f()));
        return new t.a(jArr, jArr2);
    }

    private static t h(l lVar) {
        byte[] bArr = new byte[38];
        lVar.readFully(bArr, 0, 38);
        return new t(bArr, 4);
    }

    public static void i(l lVar) {
        y4.e0 e0Var = new y4.e0(4);
        lVar.readFully(e0Var.e(), 0, 4);
        if (e0Var.I() == 1716281667) {
            return;
        }
        throw e3.a("Failed to read FLAC stream marker.", null);
    }

    private static List j(l lVar, int i10) {
        y4.e0 e0Var = new y4.e0(i10);
        lVar.readFully(e0Var.e(), 0, i10);
        e0Var.U(4);
        return Arrays.asList(e0.j(e0Var, false, false).f16186b);
    }
}
