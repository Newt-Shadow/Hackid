package com.google.android.gms.internal.auth;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class r3 {

    /* renamed from: e  reason: collision with root package name */
    private static final r3 f6161e = new r3(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f6162a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f6163b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f6164c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6165d;

    private r3(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f6162a = i10;
        this.f6163b = iArr;
        this.f6164c = objArr;
        this.f6165d = z10;
    }

    public static r3 a() {
        return f6161e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r3 c(r3 r3Var, r3 r3Var2) {
        int i10 = r3Var.f6162a + r3Var2.f6162a;
        int[] copyOf = Arrays.copyOf(r3Var.f6163b, i10);
        System.arraycopy(r3Var2.f6163b, 0, copyOf, r3Var.f6162a, r3Var2.f6162a);
        Object[] copyOf2 = Arrays.copyOf(r3Var.f6164c, i10);
        System.arraycopy(r3Var2.f6164c, 0, copyOf2, r3Var.f6162a, r3Var2.f6162a);
        return new r3(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r3 d() {
        return new r3(0, new int[8], new Object[8], true);
    }

    private final void i(int i10) {
        int[] iArr = this.f6163b;
        if (i10 > iArr.length) {
            int i11 = this.f6162a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f6163b = Arrays.copyOf(iArr, i10);
            this.f6164c = Arrays.copyOf(this.f6164c, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final r3 b(r3 r3Var) {
        if (r3Var.equals(f6161e)) {
            return this;
        }
        e();
        int i10 = this.f6162a + r3Var.f6162a;
        i(i10);
        System.arraycopy(r3Var.f6163b, 0, this.f6163b, this.f6162a, r3Var.f6162a);
        System.arraycopy(r3Var.f6164c, 0, this.f6164c, this.f6162a, r3Var.f6162a);
        this.f6162a = i10;
        return this;
    }

    final void e() {
        if (this.f6165d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof r3)) {
            return false;
        }
        r3 r3Var = (r3) obj;
        int i10 = this.f6162a;
        if (i10 == r3Var.f6162a) {
            int[] iArr = this.f6163b;
            int[] iArr2 = r3Var.f6163b;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.f6164c;
                    Object[] objArr2 = r3Var.f6164c;
                    int i12 = this.f6162a;
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

    public final void f() {
        if (this.f6165d) {
            this.f6165d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f6162a; i11++) {
            a3.b(sb2, i10, String.valueOf(this.f6163b[i11] >>> 3), this.f6164c[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(int i10, Object obj) {
        e();
        i(this.f6162a + 1);
        int[] iArr = this.f6163b;
        int i11 = this.f6162a;
        iArr[i11] = i10;
        this.f6164c[i11] = obj;
        this.f6162a = i11 + 1;
    }

    public final int hashCode() {
        int i10 = this.f6162a;
        int i11 = i10 + 527;
        int[] iArr = this.f6163b;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = (i11 * 31) + i13;
        Object[] objArr = this.f6164c;
        int i16 = this.f6162a;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return (i15 * 31) + i12;
    }
}
