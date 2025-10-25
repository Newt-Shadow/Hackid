package com.google.android.gms.internal.auth;

import java.nio.charset.Charset;
/* loaded from: classes.dex */
class m1 extends l1 {

    /* renamed from: e  reason: collision with root package name */
    protected final byte[] f6113e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(byte[] bArr) {
        bArr.getClass();
        this.f6113e = bArr;
    }

    @Override // com.google.android.gms.internal.auth.p1
    public byte d(int i10) {
        return this.f6113e[i10];
    }

    @Override // com.google.android.gms.internal.auth.p1
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p1) || i() != ((p1) obj).i()) {
            return false;
        }
        if (i() == 0) {
            return true;
        }
        if (obj instanceof m1) {
            m1 m1Var = (m1) obj;
            int r10 = r();
            int r11 = m1Var.r();
            if (r10 != 0 && r11 != 0 && r10 != r11) {
                return false;
            }
            int i10 = i();
            if (i10 <= m1Var.i()) {
                if (i10 <= m1Var.i()) {
                    byte[] bArr = this.f6113e;
                    byte[] bArr2 = m1Var.f6113e;
                    m1Var.y();
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
                throw new IllegalArgumentException("Ran off end of other: 0, " + i10 + ", " + m1Var.i());
            }
            throw new IllegalArgumentException("Length too large: " + i10 + i());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.auth.p1
    byte g(int i10) {
        return this.f6113e[i10];
    }

    @Override // com.google.android.gms.internal.auth.p1
    public int i() {
        return this.f6113e.length;
    }

    @Override // com.google.android.gms.internal.auth.p1
    protected final int l(int i10, int i11, int i12) {
        return f2.b(i10, this.f6113e, 0, i12);
    }

    @Override // com.google.android.gms.internal.auth.p1
    public final p1 m(int i10, int i11) {
        int p10 = p1.p(0, i11, i());
        if (p10 == 0) {
            return p1.f6140b;
        }
        return new i1(this.f6113e, 0, p10);
    }

    @Override // com.google.android.gms.internal.auth.p1
    protected final String n(Charset charset) {
        return new String(this.f6113e, 0, i(), charset);
    }

    @Override // com.google.android.gms.internal.auth.p1
    public final boolean o() {
        return e4.c(this.f6113e, 0, i());
    }

    protected int y() {
        return 0;
    }
}
