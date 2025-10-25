package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class fd {

    /* renamed from: f  reason: collision with root package name */
    private static final fd f6393f = new fd(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f6394a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f6395b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f6396c;

    /* renamed from: d  reason: collision with root package name */
    private int f6397d = -1;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6398e;

    private fd(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f6394a = i10;
        this.f6395b = iArr;
        this.f6396c = objArr;
        this.f6398e = z10;
    }

    public static fd a() {
        return f6393f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static fd b() {
        return new fd(0, new int[8], new Object[8], true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static fd c(fd fdVar, fd fdVar2) {
        int i10 = fdVar.f6394a + fdVar2.f6394a;
        int[] copyOf = Arrays.copyOf(fdVar.f6395b, i10);
        System.arraycopy(fdVar2.f6395b, 0, copyOf, fdVar.f6394a, fdVar2.f6394a);
        Object[] copyOf2 = Arrays.copyOf(fdVar.f6396c, i10);
        System.arraycopy(fdVar2.f6396c, 0, copyOf2, fdVar.f6394a, fdVar2.f6394a);
        return new fd(i10, copyOf, copyOf2, true);
    }

    private final void l(int i10) {
        int[] iArr = this.f6395b;
        if (i10 > iArr.length) {
            int i11 = this.f6394a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f6395b = Arrays.copyOf(iArr, i10);
            this.f6396c = Arrays.copyOf(this.f6396c, i10);
        }
    }

    public final void d() {
        if (this.f6398e) {
            this.f6398e = false;
        }
    }

    final void e() {
        if (this.f6398e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof fd)) {
            return false;
        }
        fd fdVar = (fd) obj;
        int i10 = this.f6394a;
        if (i10 == fdVar.f6394a) {
            int[] iArr = this.f6395b;
            int[] iArr2 = fdVar.f6395b;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.f6396c;
                    Object[] objArr2 = fdVar.f6396c;
                    int i12 = this.f6394a;
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

    public final void f(rd rdVar) {
        if (this.f6394a != 0) {
            for (int i10 = 0; i10 < this.f6394a; i10++) {
                int i11 = this.f6395b[i10];
                Object obj = this.f6396c[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 == 5) {
                                    rdVar.b(i13, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new pb("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                rdVar.v(i13);
                                ((fd) obj).f(rdVar);
                                rdVar.x(i13);
                            }
                        } else {
                            rdVar.k(i13, (ka) obj);
                        }
                    } else {
                        rdVar.l(i13, ((Long) obj).longValue());
                    }
                } else {
                    rdVar.q(i13, ((Long) obj).longValue());
                }
            }
        }
    }

    public final int g() {
        int i10 = this.f6397d;
        if (i10 == -1) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.f6394a; i12++) {
                int E = pa.E(8);
                int E2 = pa.E(16) + pa.E(this.f6395b[i12] >>> 3);
                int E3 = pa.E(24);
                int i13 = ((ka) this.f6396c[i12]).i();
                i11 += E + E + E2 + E3 + pa.E(i13) + i13;
            }
            this.f6397d = i11;
            return i11;
        }
        return i10;
    }

    public final int h() {
        int E;
        int a10;
        int i10;
        int i11 = this.f6397d;
        if (i11 == -1) {
            int i12 = 0;
            for (int i13 = 0; i13 < this.f6394a; i13++) {
                int i14 = this.f6395b[i13];
                int i15 = i14 >>> 3;
                int i16 = i14 & 7;
                if (i16 != 0) {
                    if (i16 != 1) {
                        if (i16 != 2) {
                            if (i16 != 3) {
                                if (i16 == 5) {
                                    ((Integer) this.f6396c[i13]).intValue();
                                    i10 = pa.E(i15 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new pb("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                int E2 = pa.E(i15 << 3);
                                E = E2 + E2;
                                a10 = ((fd) this.f6396c[i13]).h();
                            }
                        } else {
                            int E3 = pa.E(i15 << 3);
                            int i17 = ((ka) this.f6396c[i13]).i();
                            i10 = E3 + pa.E(i17) + i17;
                        }
                    } else {
                        ((Long) this.f6396c[i13]).longValue();
                        i10 = pa.E(i15 << 3) + 8;
                    }
                    i12 += i10;
                } else {
                    int i18 = i15 << 3;
                    long longValue = ((Long) this.f6396c[i13]).longValue();
                    E = pa.E(i18);
                    a10 = pa.a(longValue);
                }
                i10 = E + a10;
                i12 += i10;
            }
            this.f6397d = i12;
            return i12;
        }
        return i11;
    }

    public final int hashCode() {
        int i10 = this.f6394a;
        int i11 = i10 + 527;
        int[] iArr = this.f6395b;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = ((i11 * 31) + i13) * 31;
        Object[] objArr = this.f6396c;
        int i16 = this.f6394a;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return i15 + i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f6394a; i11++) {
            kc.b(sb2, i10, String.valueOf(this.f6395b[i11] >>> 3), this.f6396c[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(int i10, Object obj) {
        e();
        l(this.f6394a + 1);
        int[] iArr = this.f6395b;
        int i11 = this.f6394a;
        iArr[i11] = i10;
        this.f6396c[i11] = obj;
        this.f6394a = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final fd k(fd fdVar) {
        if (fdVar.equals(f6393f)) {
            return this;
        }
        e();
        int i10 = this.f6394a + fdVar.f6394a;
        l(i10);
        System.arraycopy(fdVar.f6395b, 0, this.f6395b, this.f6394a, fdVar.f6394a);
        System.arraycopy(fdVar.f6396c, 0, this.f6396c, this.f6394a, fdVar.f6394a);
        this.f6394a = i10;
        return this;
    }
}
