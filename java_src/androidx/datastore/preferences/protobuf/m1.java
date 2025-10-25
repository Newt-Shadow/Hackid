package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.r1;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: f  reason: collision with root package name */
    private static final m1 f2224f = new m1(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f2225a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f2226b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f2227c;

    /* renamed from: d  reason: collision with root package name */
    private int f2228d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2229e;

    private m1() {
        this(0, new int[8], new Object[8], true);
    }

    private void b(int i10) {
        int[] iArr = this.f2226b;
        if (i10 > iArr.length) {
            int i11 = this.f2225a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f2226b = Arrays.copyOf(iArr, i10);
            this.f2227c = Arrays.copyOf(this.f2227c, i10);
        }
    }

    public static m1 c() {
        return f2224f;
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
    public static m1 j(m1 m1Var, m1 m1Var2) {
        int i10 = m1Var.f2225a + m1Var2.f2225a;
        int[] copyOf = Arrays.copyOf(m1Var.f2226b, i10);
        System.arraycopy(m1Var2.f2226b, 0, copyOf, m1Var.f2225a, m1Var2.f2225a);
        Object[] copyOf2 = Arrays.copyOf(m1Var.f2227c, i10);
        System.arraycopy(m1Var2.f2227c, 0, copyOf2, m1Var.f2225a, m1Var2.f2225a);
        return new m1(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static m1 k() {
        return new m1();
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

    private static void q(int i10, Object obj, r1 r1Var) {
        int a10 = q1.a(i10);
        int b10 = q1.b(i10);
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 != 2) {
                    if (b10 != 3) {
                        if (b10 == 5) {
                            r1Var.d(a10, ((Integer) obj).intValue());
                            return;
                        }
                        throw new RuntimeException(z.e());
                    } else if (r1Var.i() == r1.a.ASCENDING) {
                        r1Var.q(a10);
                        ((m1) obj).r(r1Var);
                        r1Var.B(a10);
                        return;
                    } else {
                        r1Var.B(a10);
                        ((m1) obj).r(r1Var);
                        r1Var.q(a10);
                        return;
                    }
                }
                r1Var.L(a10, (g) obj);
                return;
            }
            r1Var.h(a10, ((Long) obj).longValue());
            return;
        }
        r1Var.n(a10, ((Long) obj).longValue());
    }

    void a() {
        if (this.f2229e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public int d() {
        int R;
        int i10 = this.f2228d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f2225a; i12++) {
            int i13 = this.f2226b[i12];
            int a10 = q1.a(i13);
            int b10 = q1.b(i13);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                R = j.l(a10, ((Integer) this.f2227c[i12]).intValue());
                            } else {
                                throw new IllegalStateException(z.e());
                            }
                        } else {
                            R = (j.O(a10) * 2) + ((m1) this.f2227c[i12]).d();
                        }
                    } else {
                        R = j.f(a10, (g) this.f2227c[i12]);
                    }
                } else {
                    R = j.n(a10, ((Long) this.f2227c[i12]).longValue());
                }
            } else {
                R = j.R(a10, ((Long) this.f2227c[i12]).longValue());
            }
            i11 += R;
        }
        this.f2228d = i11;
        return i11;
    }

    public int e() {
        int i10 = this.f2228d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f2225a; i12++) {
            i11 += j.D(q1.a(this.f2226b[i12]), (g) this.f2227c[i12]);
        }
        this.f2228d = i11;
        return i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof m1)) {
            return false;
        }
        m1 m1Var = (m1) obj;
        int i10 = this.f2225a;
        if (i10 == m1Var.f2225a && o(this.f2226b, m1Var.f2226b, i10) && l(this.f2227c, m1Var.f2227c, this.f2225a)) {
            return true;
        }
        return false;
    }

    public void h() {
        if (this.f2229e) {
            this.f2229e = false;
        }
    }

    public int hashCode() {
        int i10 = this.f2225a;
        return ((((527 + i10) * 31) + f(this.f2226b, i10)) * 31) + g(this.f2227c, this.f2225a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1 i(m1 m1Var) {
        if (m1Var.equals(c())) {
            return this;
        }
        a();
        int i10 = this.f2225a + m1Var.f2225a;
        b(i10);
        System.arraycopy(m1Var.f2226b, 0, this.f2226b, this.f2225a, m1Var.f2225a);
        System.arraycopy(m1Var.f2227c, 0, this.f2227c, this.f2225a, m1Var.f2225a);
        this.f2225a = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f2225a; i11++) {
            r0.d(sb2, i10, String.valueOf(q1.a(this.f2226b[i11])), this.f2227c[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(int i10, Object obj) {
        a();
        b(this.f2225a + 1);
        int[] iArr = this.f2226b;
        int i11 = this.f2225a;
        iArr[i11] = i10;
        this.f2227c[i11] = obj;
        this.f2225a = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(r1 r1Var) {
        if (r1Var.i() == r1.a.DESCENDING) {
            for (int i10 = this.f2225a - 1; i10 >= 0; i10--) {
                r1Var.c(q1.a(this.f2226b[i10]), this.f2227c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f2225a; i11++) {
            r1Var.c(q1.a(this.f2226b[i11]), this.f2227c[i11]);
        }
    }

    public void r(r1 r1Var) {
        if (this.f2225a == 0) {
            return;
        }
        if (r1Var.i() == r1.a.ASCENDING) {
            for (int i10 = 0; i10 < this.f2225a; i10++) {
                q(this.f2226b[i10], this.f2227c[i10], r1Var);
            }
            return;
        }
        for (int i11 = this.f2225a - 1; i11 >= 0; i11--) {
            q(this.f2226b[i11], this.f2227c[i11], r1Var);
        }
    }

    private m1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f2228d = -1;
        this.f2225a = i10;
        this.f2226b = iArr;
        this.f2227c = objArr;
        this.f2229e = z10;
    }
}
