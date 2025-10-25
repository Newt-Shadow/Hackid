package com.google.android.gms.internal.play_billing;

import kotlin.KotlinVersion;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j1 extends m1 {

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f7017d;

    /* renamed from: e  reason: collision with root package name */
    private final int f7018e;

    /* renamed from: f  reason: collision with root package name */
    private int f7019f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(byte[] bArr, int i10, int i11) {
        super(null);
        int length = bArr.length;
        if (((length - i11) | i11) >= 0) {
            this.f7017d = bArr;
            this.f7019f = 0;
            this.f7018e = i11;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
    }

    public final void A(byte[] bArr, int i10, int i11) {
        try {
            System.arraycopy(bArr, 0, this.f7017d, this.f7019f, i11);
            this.f7019f += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new k1(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7019f), Integer.valueOf(this.f7018e), Integer.valueOf(i11)), e10);
        }
    }

    public final void B(String str) {
        int i10 = this.f7019f;
        try {
            int w10 = m1.w(str.length() * 3);
            int w11 = m1.w(str.length());
            if (w11 == w10) {
                int i11 = i10 + w11;
                this.f7019f = i11;
                int b10 = l4.b(str, this.f7017d, i11, this.f7018e - i11);
                this.f7019f = i10;
                q((b10 - i10) - w11);
                this.f7019f = b10;
                return;
            }
            q(l4.c(str));
            byte[] bArr = this.f7017d;
            int i12 = this.f7019f;
            this.f7019f = l4.b(str, bArr, i12, this.f7018e - i12);
        } catch (k4 e10) {
            this.f7019f = i10;
            a(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new k1(e11);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final int c() {
        return this.f7018e - this.f7019f;
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void d(byte b10) {
        try {
            byte[] bArr = this.f7017d;
            int i10 = this.f7019f;
            this.f7019f = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new k1(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7019f), Integer.valueOf(this.f7018e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void e(int i10, boolean z10) {
        q(i10 << 3);
        d(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void f(int i10, e1 e1Var) {
        q((i10 << 3) | 2);
        q(e1Var.i());
        e1Var.o(this);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void g(int i10, int i11) {
        q((i10 << 3) | 5);
        h(i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void h(int i10) {
        try {
            byte[] bArr = this.f7017d;
            int i11 = this.f7019f;
            int i12 = i11 + 1;
            bArr[i11] = (byte) (i10 & KotlinVersion.MAX_COMPONENT_VALUE);
            int i13 = i12 + 1;
            bArr[i12] = (byte) ((i10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i14 = i13 + 1;
            bArr[i13] = (byte) ((i10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
            this.f7019f = i14 + 1;
            bArr[i14] = (byte) ((i10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
        } catch (IndexOutOfBoundsException e10) {
            throw new k1(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7019f), Integer.valueOf(this.f7018e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void i(int i10, long j10) {
        q((i10 << 3) | 1);
        j(j10);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void j(long j10) {
        try {
            byte[] bArr = this.f7017d;
            int i10 = this.f7019f;
            int i11 = i10 + 1;
            bArr[i10] = (byte) (((int) j10) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i12 = i11 + 1;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i13 = i12 + 1;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i14 = i13 + 1;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i15 = i14 + 1;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i16 = i15 + 1;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & KotlinVersion.MAX_COMPONENT_VALUE);
            int i17 = i16 + 1;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & KotlinVersion.MAX_COMPONENT_VALUE);
            this.f7019f = i17 + 1;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & KotlinVersion.MAX_COMPONENT_VALUE);
        } catch (IndexOutOfBoundsException e10) {
            throw new k1(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7019f), Integer.valueOf(this.f7018e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void k(int i10, int i11) {
        q(i10 << 3);
        l(i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void l(int i10) {
        if (i10 >= 0) {
            q(i10);
        } else {
            s(i10);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void m(byte[] bArr, int i10, int i11) {
        A(bArr, 0, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void n(int i10, String str) {
        q((i10 << 3) | 2);
        B(str);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void o(int i10, int i11) {
        q((i10 << 3) | i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void p(int i10, int i11) {
        q(i10 << 3);
        q(i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void q(int i10) {
        while ((i10 & (-128)) != 0) {
            try {
                byte[] bArr = this.f7017d;
                int i11 = this.f7019f;
                this.f7019f = i11 + 1;
                bArr[i11] = (byte) ((i10 | 128) & KotlinVersion.MAX_COMPONENT_VALUE);
                i10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new k1(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7019f), Integer.valueOf(this.f7018e), 1), e10);
            }
        }
        byte[] bArr2 = this.f7017d;
        int i12 = this.f7019f;
        this.f7019f = i12 + 1;
        bArr2[i12] = (byte) i10;
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void r(int i10, long j10) {
        q(i10 << 3);
        s(j10);
    }

    @Override // com.google.android.gms.internal.play_billing.m1
    public final void s(long j10) {
        boolean z10;
        z10 = m1.f7057c;
        if (!z10 || this.f7018e - this.f7019f < 10) {
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr = this.f7017d;
                    int i10 = this.f7019f;
                    this.f7019f = i10 + 1;
                    bArr[i10] = (byte) ((((int) j10) | 128) & KotlinVersion.MAX_COMPONENT_VALUE);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new k1(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7019f), Integer.valueOf(this.f7018e), 1), e10);
                }
            }
            byte[] bArr2 = this.f7017d;
            int i11 = this.f7019f;
            this.f7019f = i11 + 1;
            bArr2[i11] = (byte) j10;
            return;
        }
        while (true) {
            int i12 = (int) j10;
            if ((j10 & (-128)) == 0) {
                byte[] bArr3 = this.f7017d;
                int i13 = this.f7019f;
                this.f7019f = i13 + 1;
                f4.s(bArr3, i13, (byte) i12);
                return;
            }
            byte[] bArr4 = this.f7017d;
            int i14 = this.f7019f;
            this.f7019f = i14 + 1;
            f4.s(bArr4, i14, (byte) ((i12 | 128) & KotlinVersion.MAX_COMPONENT_VALUE));
            j10 >>>= 7;
        }
    }
}
