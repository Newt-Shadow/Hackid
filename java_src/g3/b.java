package g3;
/* loaded from: classes.dex */
public abstract class b {
    public static void a(long j10, y4.e0 e0Var, b0[] b0VarArr) {
        int i10;
        boolean z10;
        while (true) {
            boolean z11 = true;
            if (e0Var.a() > 1) {
                int c10 = c(e0Var);
                int c11 = c(e0Var);
                int f10 = e0Var.f() + c11;
                if (c11 != -1 && c11 <= e0Var.a()) {
                    if (c10 == 4 && c11 >= 8) {
                        int G = e0Var.G();
                        int M = e0Var.M();
                        if (M == 49) {
                            i10 = e0Var.p();
                        } else {
                            i10 = 0;
                        }
                        int G2 = e0Var.G();
                        if (M == 47) {
                            e0Var.U(1);
                        }
                        if (G == 181 && ((M == 49 || M == 47) && G2 == 3)) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (M == 49) {
                            if (i10 != 1195456820) {
                                z11 = false;
                            }
                            z10 &= z11;
                        }
                        if (z10) {
                            b(j10, e0Var, b0VarArr);
                        }
                    }
                } else {
                    y4.r.i("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    f10 = e0Var.g();
                }
                e0Var.T(f10);
            } else {
                return;
            }
        }
    }

    public static void b(long j10, y4.e0 e0Var, b0[] b0VarArr) {
        boolean z10;
        int G = e0Var.G();
        if ((G & 64) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return;
        }
        e0Var.U(1);
        int i10 = (G & 31) * 3;
        int f10 = e0Var.f();
        for (b0 b0Var : b0VarArr) {
            e0Var.T(f10);
            b0Var.b(e0Var, i10);
            if (j10 != -9223372036854775807L) {
                b0Var.f(j10, 1, i10, 0, null);
            }
        }
    }

    private static int c(y4.e0 e0Var) {
        int i10 = 0;
        while (e0Var.a() != 0) {
            int G = e0Var.G();
            i10 += G;
            if (G != 255) {
                return i10;
            }
        }
        return -1;
    }
}
