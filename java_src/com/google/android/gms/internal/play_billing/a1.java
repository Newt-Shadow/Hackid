package com.google.android.gms.internal.play_billing;

import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a1 extends z0 {

    /* renamed from: e  reason: collision with root package name */
    protected final byte[] f6951e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(byte[] bArr) {
        bArr.getClass();
        this.f6951e = bArr;
    }

    protected int A() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    public byte d(int i10) {
        return this.f6951e[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e1) || i() != ((e1) obj).i()) {
            return false;
        }
        if (i() == 0) {
            return true;
        }
        if (obj instanceof a1) {
            a1 a1Var = (a1) obj;
            int s10 = s();
            int s11 = a1Var.s();
            if (s10 != 0 && s11 != 0 && s10 != s11) {
                return false;
            }
            int i10 = i();
            if (i10 <= a1Var.i()) {
                if (i10 <= a1Var.i()) {
                    byte[] bArr = this.f6951e;
                    byte[] bArr2 = a1Var.f6951e;
                    a1Var.A();
                    int i11 = 0;
                    int i12 = 0;
                    while (i11 < i10) {
                        if (bArr[i11] != bArr2[i12]) {
                            return false;
                        }
                        i11++;
                        i12++;
                    }
                    return true;
                }
                throw new IllegalArgumentException("Ran off end of other: 0, " + i10 + ", " + a1Var.i());
            }
            throw new IllegalArgumentException("Length too large: " + i10 + i());
        }
        return obj.equals(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.e1
    public byte g(int i10) {
        return this.f6951e[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    public int i() {
        return this.f6951e.length;
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    protected final int l(int i10, int i11, int i12) {
        return j2.b(i10, this.f6951e, 0, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    public final e1 m(int i10, int i11) {
        int r10 = e1.r(0, i11, i());
        if (r10 == 0) {
            return e1.f6973b;
        }
        return new x0(this.f6951e, 0, r10);
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    protected final String n(Charset charset) {
        return new String(this.f6951e, 0, i(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.e1
    public final void o(t0 t0Var) {
        ((j1) t0Var).A(this.f6951e, 0, i());
    }

    @Override // com.google.android.gms.internal.play_billing.e1
    public final boolean p() {
        return l4.e(this.f6951e, 0, i());
    }
}
