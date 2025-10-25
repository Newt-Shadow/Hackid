package bf;

import af.e1;
import af.p0;
import af.v0;
import kotlin.jvm.internal.m;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a */
    private static final byte[] f4744a = e1.a("0123456789abcdef");

    public static final byte[] a() {
        return f4744a;
    }

    public static final String b(af.d dVar, long j10) {
        m.e(dVar, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (dVar.k(j11) == 13) {
                String A = dVar.A(j11);
                dVar.skip(2L);
                return A;
            }
        }
        String A2 = dVar.A(j10);
        dVar.skip(1L);
        return A2;
    }

    public static final int c(af.d dVar, p0 options, boolean z10) {
        int i10;
        int i11;
        boolean z11;
        int i12;
        int i13;
        v0 v0Var;
        m.e(dVar, "<this>");
        m.e(options, "options");
        v0 v0Var2 = dVar.f371a;
        if (v0Var2 == null) {
            if (z10) {
                return -2;
            }
            return -1;
        }
        byte[] bArr = v0Var2.f455a;
        int i14 = v0Var2.f456b;
        int i15 = v0Var2.f457c;
        int[] p10 = options.p();
        v0 v0Var3 = v0Var2;
        int i16 = -1;
        int i17 = 0;
        loop0: while (true) {
            int i18 = i17 + 1;
            int i19 = p10[i17];
            int i20 = i18 + 1;
            int i21 = p10[i18];
            if (i21 != -1) {
                i16 = i21;
            }
            if (v0Var3 == null) {
                break;
            }
            if (i19 < 0) {
                int i22 = i20 + (i19 * (-1));
                while (true) {
                    int i23 = i14 + 1;
                    int i24 = i20 + 1;
                    if ((bArr[i14] & ForkServer.ERROR) != p10[i20]) {
                        return i16;
                    }
                    if (i24 == i22) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (i23 == i15) {
                        m.b(v0Var3);
                        v0 v0Var4 = v0Var3.f460f;
                        m.b(v0Var4);
                        i13 = v0Var4.f456b;
                        byte[] bArr2 = v0Var4.f455a;
                        i12 = v0Var4.f457c;
                        if (v0Var4 == v0Var2) {
                            if (!z11) {
                                break loop0;
                            }
                            bArr = bArr2;
                            v0Var = null;
                        } else {
                            v0Var = v0Var4;
                            bArr = bArr2;
                        }
                    } else {
                        v0 v0Var5 = v0Var3;
                        i12 = i15;
                        i13 = i23;
                        v0Var = v0Var5;
                    }
                    if (z11) {
                        i11 = p10[i24];
                        i10 = i13;
                        i15 = i12;
                        v0Var3 = v0Var;
                        break;
                    }
                    i14 = i13;
                    i15 = i12;
                    i20 = i24;
                    v0Var3 = v0Var;
                }
            } else {
                i10 = i14 + 1;
                int i25 = bArr[i14] & ForkServer.ERROR;
                int i26 = i20 + i19;
                while (i20 != i26) {
                    if (i25 == p10[i20]) {
                        i11 = p10[i20 + i19];
                        if (i10 == i15) {
                            v0Var3 = v0Var3.f460f;
                            m.b(v0Var3);
                            i10 = v0Var3.f456b;
                            bArr = v0Var3.f455a;
                            i15 = v0Var3.f457c;
                            if (v0Var3 == v0Var2) {
                                v0Var3 = null;
                            }
                        }
                    } else {
                        i20++;
                    }
                }
                return i16;
            }
            if (i11 >= 0) {
                return i11;
            }
            i17 = -i11;
            i14 = i10;
        }
        if (z10) {
            return -2;
        }
        return i16;
    }

    public static /* synthetic */ int d(af.d dVar, p0 p0Var, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return c(dVar, p0Var, z10);
    }
}
