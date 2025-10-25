package o3;

import y4.e0;
/* loaded from: classes.dex */
abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f27276a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i10, boolean z10) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z10) {
            return true;
        }
        for (int i11 : f27276a) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(g3.l lVar) {
        return c(lVar, true, false);
    }

    private static boolean c(g3.l lVar, boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        boolean z14;
        int i10;
        boolean z15;
        boolean z16;
        long b10 = lVar.b();
        long j10 = -1;
        int i11 = (b10 > (-1L) ? 1 : (b10 == (-1L) ? 0 : -1));
        long j11 = 4096;
        if (i11 != 0 && b10 <= 4096) {
            j11 = b10;
        }
        int i12 = (int) j11;
        e0 e0Var = new e0(64);
        boolean z17 = false;
        int i13 = 0;
        boolean z18 = false;
        while (i13 < i12) {
            e0Var.P(8);
            if (!lVar.f(e0Var.e(), z17 ? 1 : 0, 8, true)) {
                break;
            }
            long I = e0Var.I();
            int p10 = e0Var.p();
            if (I == 1) {
                lVar.p(e0Var.e(), 8, 8);
                e0Var.S(16);
                i10 = 16;
                I = e0Var.z();
            } else {
                if (I == 0) {
                    long b11 = lVar.b();
                    if (b11 != j10) {
                        I = (b11 - lVar.g()) + 8;
                    }
                }
                i10 = 8;
            }
            long j12 = i10;
            if (I < j12) {
                return z17;
            }
            i13 += i10;
            if (p10 == 1836019574) {
                i12 += (int) I;
                if (i11 != 0 && i12 > b10) {
                    i12 = (int) b10;
                }
            } else if (p10 != 1836019558 && p10 != 1836475768) {
                int i14 = i11;
                if ((i13 + I) - j12 >= i12) {
                    z12 = false;
                    z13 = true;
                    break;
                }
                int i15 = (int) (I - j12);
                i13 += i15;
                if (p10 == 1718909296) {
                    if (i15 < 8) {
                        return false;
                    }
                    e0Var.P(i15);
                    lVar.p(e0Var.e(), 0, i15);
                    int i16 = i15 / 4;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= i16) {
                            z16 = z18;
                            break;
                        }
                        if (i17 == 1) {
                            e0Var.U(4);
                        } else if (a(e0Var.p(), z11)) {
                            z16 = true;
                            break;
                        }
                        i17++;
                    }
                    if (!z16) {
                        return false;
                    }
                    z15 = false;
                    z18 = z16;
                } else {
                    z15 = false;
                    z18 = z18;
                    if (i15 != 0) {
                        lVar.h(i15);
                        z18 = z18;
                    }
                }
                z17 = z15;
                i11 = i14;
            } else {
                z12 = z17 ? 1 : 0;
                z13 = true;
                z14 = true;
                break;
            }
            j10 = -1;
            z18 = z18;
        }
        z12 = z17 ? 1 : 0;
        z13 = true;
        z14 = z12;
        if (!z18 || z10 != z14) {
            return z12;
        }
        return z13;
    }

    public static boolean d(g3.l lVar, boolean z10) {
        return c(lVar, false, z10);
    }
}
