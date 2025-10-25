package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class w3 {

    /* renamed from: f  reason: collision with root package name */
    private static final w3 f7159f = new w3(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f7160a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f7161b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f7162c;

    /* renamed from: d  reason: collision with root package name */
    private int f7163d = -1;

    /* renamed from: e  reason: collision with root package name */
    private boolean f7164e;

    private w3(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f7160a = i10;
        this.f7161b = iArr;
        this.f7162c = objArr;
        this.f7164e = z10;
    }

    public static w3 c() {
        return f7159f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w3 e(w3 w3Var, w3 w3Var2) {
        int i10 = w3Var.f7160a + w3Var2.f7160a;
        int[] copyOf = Arrays.copyOf(w3Var.f7161b, i10);
        System.arraycopy(w3Var2.f7161b, 0, copyOf, w3Var.f7160a, w3Var2.f7160a);
        Object[] copyOf2 = Arrays.copyOf(w3Var.f7162c, i10);
        System.arraycopy(w3Var2.f7162c, 0, copyOf2, w3Var.f7160a, w3Var2.f7160a);
        return new w3(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w3 f() {
        return new w3(0, new int[8], new Object[8], true);
    }

    private final void l(int i10) {
        int[] iArr = this.f7161b;
        if (i10 > iArr.length) {
            int i11 = this.f7160a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f7161b = Arrays.copyOf(iArr, i10);
            this.f7162c = Arrays.copyOf(this.f7162c, i10);
        }
    }

    public final int a() {
        int w10;
        int x10;
        int i10;
        int i11 = this.f7163d;
        if (i11 == -1) {
            int i12 = 0;
            for (int i13 = 0; i13 < this.f7160a; i13++) {
                int i14 = this.f7161b[i13];
                int i15 = i14 >>> 3;
                int i16 = i14 & 7;
                if (i16 != 0) {
                    if (i16 != 1) {
                        if (i16 != 2) {
                            if (i16 != 3) {
                                if (i16 == 5) {
                                    ((Integer) this.f7162c[i13]).intValue();
                                    i10 = m1.w(i15 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(l2.a());
                                }
                            } else {
                                int w11 = m1.w(i15 << 3);
                                w10 = w11 + w11;
                                x10 = ((w3) this.f7162c[i13]).a();
                            }
                        } else {
                            int w12 = m1.w(i15 << 3);
                            int i17 = ((e1) this.f7162c[i13]).i();
                            i10 = w12 + m1.w(i17) + i17;
                        }
                    } else {
                        ((Long) this.f7162c[i13]).longValue();
                        i10 = m1.w(i15 << 3) + 8;
                    }
                    i12 += i10;
                } else {
                    int i18 = i15 << 3;
                    long longValue = ((Long) this.f7162c[i13]).longValue();
                    w10 = m1.w(i18);
                    x10 = m1.x(longValue);
                }
                i10 = w10 + x10;
                i12 += i10;
            }
            this.f7163d = i12;
            return i12;
        }
        return i11;
    }

    public final int b() {
        int i10 = this.f7163d;
        if (i10 == -1) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f7160a; i12++) {
                int w10 = m1.w(8);
                int w11 = m1.w(16) + m1.w(this.f7161b[i12] >>> 3);
                int w12 = m1.w(24);
                int i13 = ((e1) this.f7162c[i12]).i();
                i11 += w10 + w10 + w11 + w12 + m1.w(i13) + i13;
            }
            this.f7163d = i11;
            return i11;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final w3 d(w3 w3Var) {
        if (w3Var.equals(f7159f)) {
            return this;
        }
        g();
        int i10 = this.f7160a + w3Var.f7160a;
        l(i10);
        System.arraycopy(w3Var.f7161b, 0, this.f7161b, this.f7160a, w3Var.f7160a);
        System.arraycopy(w3Var.f7162c, 0, this.f7162c, this.f7160a, w3Var.f7160a);
        this.f7160a = i10;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof w3)) {
            return false;
        }
        w3 w3Var = (w3) obj;
        int i10 = this.f7160a;
        if (i10 == w3Var.f7160a) {
            int[] iArr = this.f7161b;
            int[] iArr2 = w3Var.f7161b;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.f7162c;
                    Object[] objArr2 = w3Var.f7162c;
                    int i12 = this.f7160a;
                    for (int i13 = 0; i13 < i12; i13++) {
                        if (objArr[i13].equals(objArr2[i13])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    final void g() {
        if (this.f7164e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void h() {
        if (this.f7164e) {
            this.f7164e = false;
        }
    }

    public final int hashCode() {
        int i10 = this.f7160a;
        int i11 = i10 + 527;
        int[] iArr = this.f7161b;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = ((i11 * 31) + i13) * 31;
        Object[] objArr = this.f7162c;
        int i16 = this.f7160a;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return i15 + i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f7160a; i11++) {
            h3.b(sb2, i10, String.valueOf(this.f7161b[i11] >>> 3), this.f7162c[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(int i10, Object obj) {
        g();
        l(this.f7160a + 1);
        int[] iArr = this.f7161b;
        int i11 = this.f7160a;
        iArr[i11] = i10;
        this.f7162c[i11] = obj;
        this.f7160a = i11 + 1;
    }

    public final void k(m4 m4Var) {
        if (this.f7160a != 0) {
            for (int i10 = 0; i10 < this.f7160a; i10++) {
                int i11 = this.f7161b[i10];
                Object obj = this.f7162c[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 == 5) {
                                    m4Var.b(i13, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(l2.a());
                                }
                            } else {
                                m4Var.F(i13);
                                ((w3) obj).k(m4Var);
                                m4Var.x(i13);
                            }
                        } else {
                            m4Var.n(i13, (e1) obj);
                        }
                    } else {
                        m4Var.H(i13, ((Long) obj).longValue());
                    }
                } else {
                    m4Var.q(i13, ((Long) obj).longValue());
                }
            }
        }
    }
}
