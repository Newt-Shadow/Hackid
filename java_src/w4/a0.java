package w4;

import android.util.Pair;
import b3.g4;
import b3.u3;
import b3.v3;
import d4.s0;
import d4.t;
import d4.u0;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public abstract class a0 extends h0 {

    /* renamed from: c  reason: collision with root package name */
    private a f31760c;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f31761a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f31762b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f31763c;

        /* renamed from: d  reason: collision with root package name */
        private final u0[] f31764d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f31765e;

        /* renamed from: f  reason: collision with root package name */
        private final int[][][] f31766f;

        /* renamed from: g  reason: collision with root package name */
        private final u0 f31767g;

        a(String[] strArr, int[] iArr, u0[] u0VarArr, int[] iArr2, int[][][] iArr3, u0 u0Var) {
            this.f31762b = strArr;
            this.f31763c = iArr;
            this.f31764d = u0VarArr;
            this.f31766f = iArr3;
            this.f31765e = iArr2;
            this.f31767g = u0Var;
            this.f31761a = iArr.length;
        }

        public int a(int i10, int i11, boolean z10) {
            int i12 = this.f31764d[i10].b(i11).f14950a;
            int[] iArr = new int[i12];
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                int g10 = g(i10, i11, i14);
                if (g10 == 4 || (z10 && g10 == 3)) {
                    iArr[i13] = i14;
                    i13++;
                }
            }
            return b(i10, i11, Arrays.copyOf(iArr, i13));
        }

        public int b(int i10, int i11, int[] iArr) {
            int i12 = 0;
            int i13 = 16;
            String str = null;
            boolean z10 = false;
            int i14 = 0;
            while (i12 < iArr.length) {
                String str2 = this.f31764d[i10].b(i11).b(iArr[i12]).f4514l;
                int i15 = i14 + 1;
                if (i14 == 0) {
                    str = str2;
                } else {
                    z10 |= !q0.c(str, str2);
                }
                i13 = Math.min(i13, u3.u(this.f31766f[i10][i11][i12]));
                i12++;
                i14 = i15;
            }
            if (z10) {
                return Math.min(i13, this.f31765e[i10]);
            }
            return i13;
        }

        public int c(int i10, int i11, int i12) {
            return this.f31766f[i10][i11][i12];
        }

        public int d() {
            return this.f31761a;
        }

        public int e(int i10) {
            return this.f31763c[i10];
        }

        public u0 f(int i10) {
            return this.f31764d[i10];
        }

        public int g(int i10, int i11, int i12) {
            return u3.F(c(i10, i11, i12));
        }

        public u0 h() {
            return this.f31767g;
        }
    }

    private static int i(u3[] u3VarArr, s0 s0Var, int[] iArr, boolean z10) {
        boolean z11;
        int length = u3VarArr.length;
        int i10 = 0;
        boolean z12 = true;
        for (int i11 = 0; i11 < u3VarArr.length; i11++) {
            u3 u3Var = u3VarArr[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < s0Var.f14950a; i13++) {
                i12 = Math.max(i12, u3.F(u3Var.b(s0Var.b(i13))));
            }
            if (iArr[i11] == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (i12 > i10 || (i12 == i10 && z10 && !z12 && z11)) {
                length = i11;
                z12 = z11;
                i10 = i12;
            }
        }
        return length;
    }

    private static int[] j(u3 u3Var, s0 s0Var) {
        int[] iArr = new int[s0Var.f14950a];
        for (int i10 = 0; i10 < s0Var.f14950a; i10++) {
            iArr[i10] = u3Var.b(s0Var.b(i10));
        }
        return iArr;
    }

    private static int[] k(u3[] u3VarArr) {
        int length = u3VarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = u3VarArr[i10].w();
        }
        return iArr;
    }

    @Override // w4.h0
    public final void e(Object obj) {
        this.f31760c = (a) obj;
    }

    @Override // w4.h0
    public final i0 g(u3[] u3VarArr, u0 u0Var, t.b bVar, g4 g4Var) {
        boolean z10;
        int[] j10;
        int[] iArr = new int[u3VarArr.length + 1];
        int length = u3VarArr.length + 1;
        s0[][] s0VarArr = new s0[length];
        int[][][] iArr2 = new int[u3VarArr.length + 1][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = u0Var.f14962a;
            s0VarArr[i10] = new s0[i11];
            iArr2[i10] = new int[i11];
        }
        int[] k10 = k(u3VarArr);
        for (int i12 = 0; i12 < u0Var.f14962a; i12++) {
            s0 b10 = u0Var.b(i12);
            if (b10.f14952c == 5) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i13 = i(u3VarArr, b10, iArr, z10);
            if (i13 == u3VarArr.length) {
                j10 = new int[b10.f14950a];
            } else {
                j10 = j(u3VarArr[i13], b10);
            }
            int i14 = iArr[i13];
            s0VarArr[i13][i14] = b10;
            iArr2[i13][i14] = j10;
            iArr[i13] = i14 + 1;
        }
        u0[] u0VarArr = new u0[u3VarArr.length];
        String[] strArr = new String[u3VarArr.length];
        int[] iArr3 = new int[u3VarArr.length];
        for (int i15 = 0; i15 < u3VarArr.length; i15++) {
            int i16 = iArr[i15];
            u0VarArr[i15] = new u0((s0[]) q0.F0(s0VarArr[i15], i16));
            iArr2[i15] = (int[][]) q0.F0(iArr2[i15], i16);
            strArr[i15] = u3VarArr[i15].getName();
            iArr3[i15] = u3VarArr[i15].h();
        }
        a aVar = new a(strArr, iArr3, u0VarArr, k10, iArr2, new u0((s0[]) q0.F0(s0VarArr[u3VarArr.length], iArr[u3VarArr.length])));
        Pair l10 = l(aVar, iArr2, k10, bVar, g4Var);
        return new i0((v3[]) l10.first, (y[]) l10.second, g0.b(aVar, (b0[]) l10.second), aVar);
    }

    protected abstract Pair l(a aVar, int[][][] iArr, int[] iArr2, t.b bVar, g4 g4Var);
}
