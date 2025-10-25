package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.q1;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class k1 {

    /* renamed from: f  reason: collision with root package name */
    private static final k1 f8495f = new k1(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f8496a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f8497b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f8498c;

    /* renamed from: d  reason: collision with root package name */
    private int f8499d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8500e;

    private k1() {
        this(0, new int[8], new Object[8], true);
    }

    private void b(int i10) {
        int[] iArr = this.f8497b;
        if (i10 > iArr.length) {
            int i11 = this.f8496a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f8497b = Arrays.copyOf(iArr, i10);
            this.f8498c = Arrays.copyOf(this.f8498c, i10);
        }
    }

    public static k1 c() {
        return f8495f;
    }

    private static int f(int[] iArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return i11;
    }

    private static int g(Object[] objArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + objArr[i12].hashCode();
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k1 j(k1 k1Var, k1 k1Var2) {
        int i10 = k1Var.f8496a + k1Var2.f8496a;
        int[] copyOf = Arrays.copyOf(k1Var.f8497b, i10);
        System.arraycopy(k1Var2.f8497b, 0, copyOf, k1Var.f8496a, k1Var2.f8496a);
        Object[] copyOf2 = Arrays.copyOf(k1Var.f8498c, i10);
        System.arraycopy(k1Var2.f8498c, 0, copyOf2, k1Var.f8496a, k1Var2.f8496a);
        return new k1(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k1 k() {
        return new k1();
    }

    private static boolean l(Object[] objArr, Object[] objArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!objArr[i11].equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    private static boolean o(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static void q(int i10, Object obj, q1 q1Var) {
        int a10 = p1.a(i10);
        int b10 = p1.b(i10);
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 != 2) {
                    if (b10 != 3) {
                        if (b10 == 5) {
                            q1Var.d(a10, ((Integer) obj).intValue());
                            return;
                        }
                        throw new RuntimeException(a0.e());
                    } else if (q1Var.i() == q1.a.ASCENDING) {
                        q1Var.q(a10);
                        ((k1) obj).r(q1Var);
                        q1Var.B(a10);
                        return;
                    } else {
                        q1Var.B(a10);
                        ((k1) obj).r(q1Var);
                        q1Var.q(a10);
                        return;
                    }
                }
                q1Var.O(a10, (h) obj);
                return;
            }
            q1Var.h(a10, ((Long) obj).longValue());
            return;
        }
        q1Var.n(a10, ((Long) obj).longValue());
    }

    void a() {
        if (this.f8500e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public int d() {
        int O;
        int i10 = this.f8499d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f8496a; i12++) {
            int i13 = this.f8497b[i12];
            int a10 = p1.a(i13);
            int b10 = p1.b(i13);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                O = k.l(a10, ((Integer) this.f8498c[i12]).intValue());
                            } else {
                                throw new IllegalStateException(a0.e());
                            }
                        } else {
                            O = (k.L(a10) * 2) + ((k1) this.f8498c[i12]).d();
                        }
                    } else {
                        O = k.f(a10, (h) this.f8498c[i12]);
                    }
                } else {
                    O = k.n(a10, ((Long) this.f8498c[i12]).longValue());
                }
            } else {
                O = k.O(a10, ((Long) this.f8498c[i12]).longValue());
            }
            i11 += O;
        }
        this.f8499d = i11;
        return i11;
    }

    public int e() {
        int i10 = this.f8499d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f8496a; i12++) {
            i11 += k.A(p1.a(this.f8497b[i12]), (h) this.f8498c[i12]);
        }
        this.f8499d = i11;
        return i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k1)) {
            return false;
        }
        k1 k1Var = (k1) obj;
        int i10 = this.f8496a;
        if (i10 == k1Var.f8496a && o(this.f8497b, k1Var.f8497b, i10) && l(this.f8498c, k1Var.f8498c, this.f8496a)) {
            return true;
        }
        return false;
    }

    public void h() {
        this.f8500e = false;
    }

    public int hashCode() {
        int i10 = this.f8496a;
        return ((((527 + i10) * 31) + f(this.f8497b, i10)) * 31) + g(this.f8498c, this.f8496a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1 i(k1 k1Var) {
        if (k1Var.equals(c())) {
            return this;
        }
        a();
        int i10 = this.f8496a + k1Var.f8496a;
        b(i10);
        System.arraycopy(k1Var.f8497b, 0, this.f8497b, this.f8496a, k1Var.f8496a);
        System.arraycopy(k1Var.f8498c, 0, this.f8498c, this.f8496a, k1Var.f8496a);
        this.f8496a = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f8496a; i11++) {
            q0.d(sb2, i10, String.valueOf(p1.a(this.f8497b[i11])), this.f8498c[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(int i10, Object obj) {
        a();
        b(this.f8496a + 1);
        int[] iArr = this.f8497b;
        int i11 = this.f8496a;
        iArr[i11] = i10;
        this.f8498c[i11] = obj;
        this.f8496a = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(q1 q1Var) {
        if (q1Var.i() == q1.a.DESCENDING) {
            for (int i10 = this.f8496a - 1; i10 >= 0; i10--) {
                q1Var.c(p1.a(this.f8497b[i10]), this.f8498c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f8496a; i11++) {
            q1Var.c(p1.a(this.f8497b[i11]), this.f8498c[i11]);
        }
    }

    public void r(q1 q1Var) {
        if (this.f8496a == 0) {
            return;
        }
        if (q1Var.i() == q1.a.ASCENDING) {
            for (int i10 = 0; i10 < this.f8496a; i10++) {
                q(this.f8497b[i10], this.f8498c[i10], q1Var);
            }
            return;
        }
        for (int i11 = this.f8496a - 1; i11 >= 0; i11--) {
            q(this.f8497b[i11], this.f8498c[i11], q1Var);
        }
    }

    private k1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f8499d = -1;
        this.f8496a = i10;
        this.f8497b = iArr;
        this.f8498c = objArr;
        this.f8500e = z10;
    }
}
