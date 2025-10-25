package g3;

import b3.e3;
import org.apache.tika.fork.ForkServer;
import y4.q0;
/* loaded from: classes.dex */
public abstract class q {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f16224a;
    }

    private static boolean a(y4.e0 e0Var, t tVar, int i10) {
        int j10 = j(e0Var, i10);
        if (j10 != -1 && j10 <= tVar.f16229b) {
            return true;
        }
        return false;
    }

    private static boolean b(y4.e0 e0Var, int i10) {
        if (e0Var.G() == q0.u(e0Var.e(), i10, e0Var.f() - 1, 0)) {
            return true;
        }
        return false;
    }

    private static boolean c(y4.e0 e0Var, t tVar, boolean z10, a aVar) {
        try {
            long N = e0Var.N();
            if (!z10) {
                N *= tVar.f16229b;
            }
            aVar.f16224a = N;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(y4.e0 e0Var, t tVar, int i10, a aVar) {
        boolean z10;
        boolean z11;
        int f10 = e0Var.f();
        long I = e0Var.I();
        long j10 = I >>> 16;
        if (j10 != i10) {
            return false;
        }
        if ((j10 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = (int) ((I >> 12) & 15);
        int i12 = (int) ((I >> 8) & 15);
        int i13 = (int) ((I >> 4) & 15);
        int i14 = (int) ((I >> 1) & 7);
        if ((I & 1) == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!g(i13, tVar) || !f(i14, tVar) || z11 || !c(e0Var, tVar, z10, aVar) || !a(e0Var, tVar, i11) || !e(e0Var, tVar, i12) || !b(e0Var, f10)) {
            return false;
        }
        return true;
    }

    private static boolean e(y4.e0 e0Var, t tVar, int i10) {
        int i11 = tVar.f16232e;
        if (i10 == 0) {
            return true;
        }
        if (i10 <= 11) {
            if (i10 == tVar.f16233f) {
                return true;
            }
            return false;
        } else if (i10 == 12) {
            if (e0Var.G() * 1000 == i11) {
                return true;
            }
            return false;
        } else if (i10 > 14) {
            return false;
        } else {
            int M = e0Var.M();
            if (i10 == 14) {
                M *= 10;
            }
            if (M == i11) {
                return true;
            }
            return false;
        }
    }

    private static boolean f(int i10, t tVar) {
        if (i10 == 0 || i10 == tVar.f16236i) {
            return true;
        }
        return false;
    }

    private static boolean g(int i10, t tVar) {
        if (i10 <= 7) {
            if (i10 != tVar.f16234g - 1) {
                return false;
            }
            return true;
        } else if (i10 > 10 || tVar.f16234g != 2) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean h(l lVar, t tVar, int i10, a aVar) {
        long g10 = lVar.g();
        byte[] bArr = new byte[2];
        lVar.p(bArr, 0, 2);
        if ((((bArr[0] & ForkServer.ERROR) << 8) | (bArr[1] & ForkServer.ERROR)) != i10) {
            lVar.l();
            lVar.h((int) (g10 - lVar.c()));
            return false;
        }
        y4.e0 e0Var = new y4.e0(16);
        System.arraycopy(bArr, 0, e0Var.e(), 0, 2);
        e0Var.S(n.c(lVar, e0Var.e(), 2, 14));
        lVar.l();
        lVar.h((int) (g10 - lVar.c()));
        return d(e0Var, tVar, i10, aVar);
    }

    public static long i(l lVar, t tVar) {
        int i10;
        lVar.l();
        boolean z10 = true;
        lVar.h(1);
        byte[] bArr = new byte[1];
        lVar.p(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z10 = false;
        }
        lVar.h(2);
        if (z10) {
            i10 = 7;
        } else {
            i10 = 6;
        }
        y4.e0 e0Var = new y4.e0(i10);
        e0Var.S(n.c(lVar, e0Var.e(), 0, i10));
        lVar.l();
        a aVar = new a();
        if (c(e0Var, tVar, z10, aVar)) {
            return aVar.f16224a;
        }
        throw e3.a(null, null);
    }

    public static int j(y4.e0 e0Var, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return e0Var.G() + 1;
            case 7:
                return e0Var.M() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }
}
