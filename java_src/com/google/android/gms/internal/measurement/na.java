package com.google.android.gms.internal.measurement;

import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class na extends pa {

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f6583e;

    /* renamed from: f  reason: collision with root package name */
    private final int f6584f;

    /* renamed from: g  reason: collision with root package name */
    private int f6585g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public na(byte[] bArr, int i10, int i11) {
        super(null);
        int length = bArr.length;
        if (((length - i11) | i11) >= 0) {
            this.f6583e = bArr;
            this.f6585g = 0;
            this.f6584f = i11;
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void A(long j10) {
        int i10 = this.f6585g;
        try {
            byte[] bArr = this.f6583e;
            bArr[i10] = (byte) j10;
            bArr[i10 + 1] = (byte) (j10 >> 8);
            bArr[i10 + 2] = (byte) (j10 >> 16);
            bArr[i10 + 3] = (byte) (j10 >> 24);
            bArr[i10 + 4] = (byte) (j10 >> 32);
            bArr[i10 + 5] = (byte) (j10 >> 40);
            bArr[i10 + 6] = (byte) (j10 >> 48);
            bArr[i10 + 7] = (byte) (j10 >> 56);
            this.f6585g = i10 + 8;
        } catch (IndexOutOfBoundsException e10) {
            throw new oa(i10, this.f6584f, 8, e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void B(byte[] bArr, int i10, int i11) {
        F(bArr, 0, i11);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void C(String str) {
        int i10 = this.f6585g;
        try {
            int E = pa.E(str.length() * 3);
            int E2 = pa.E(str.length());
            if (E2 == E) {
                int i11 = i10 + E2;
                this.f6585g = i11;
                int c10 = od.c(str, this.f6583e, i11, this.f6584f - i11);
                this.f6585g = i10;
                x((c10 - i10) - E2);
                this.f6585g = c10;
                return;
            }
            x(od.b(str));
            byte[] bArr = this.f6583e;
            int i12 = this.f6585g;
            this.f6585g = od.c(str, bArr, i12, this.f6584f - i12);
        } catch (nd e10) {
            this.f6585g = i10;
            f(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new oa(e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final int D() {
        return this.f6584f - this.f6585g;
    }

    public final void F(byte[] bArr, int i10, int i11) {
        try {
            System.arraycopy(bArr, 0, this.f6583e, this.f6585g, i11);
            this.f6585g += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new oa(this.f6585g, this.f6584f, i11, e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void i(int i10, int i11) {
        x((i10 << 3) | i11);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void j(int i10, int i11) {
        x(i10 << 3);
        w(i11);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void k(int i10, int i11) {
        x(i10 << 3);
        x(i11);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void l(int i10, int i11) {
        x((i10 << 3) | 5);
        y(i11);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void m(int i10, long j10) {
        x(i10 << 3);
        z(j10);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void n(int i10, long j10) {
        x((i10 << 3) | 1);
        A(j10);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void o(int i10, boolean z10) {
        x(i10 << 3);
        v(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void p(int i10, String str) {
        x((i10 << 3) | 2);
        C(str);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void q(int i10, ka kaVar) {
        x((i10 << 3) | 2);
        r(kaVar);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void r(ka kaVar) {
        x(kaVar.i());
        kaVar.m(this);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void s(byte[] bArr, int i10, int i11) {
        x(i11);
        F(bArr, 0, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.pa
    public final void t(int i10, ic icVar, tc tcVar) {
        x((i10 << 3) | 2);
        x(((v9) icVar).f(tcVar));
        tcVar.g(icVar, this.f6669a);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void u(ic icVar) {
        x(icVar.a());
        icVar.c(this);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void v(byte b10) {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i10 = this.f6585g;
        try {
            int i11 = i10 + 1;
            try {
                this.f6583e[i10] = b10;
                this.f6585g = i11;
            } catch (IndexOutOfBoundsException e10) {
                indexOutOfBoundsException = e10;
                i10 = i11;
                throw new oa(i10, this.f6584f, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e11) {
            indexOutOfBoundsException = e11;
        }
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void w(int i10) {
        if (i10 >= 0) {
            x(i10);
        } else {
            z(i10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void x(int i10) {
        int i11;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i12 = this.f6585g;
        while ((i10 & (-128)) != 0) {
            try {
                i11 = i12 + 1;
                try {
                    this.f6583e[i12] = (byte) (i10 | 128);
                    i10 >>>= 7;
                    i12 = i11;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException = e10;
                    i12 = i11;
                    throw new oa(i12, this.f6584f, 1, indexOutOfBoundsException);
                }
            } catch (IndexOutOfBoundsException e11) {
                indexOutOfBoundsException = e11;
                throw new oa(i12, this.f6584f, 1, indexOutOfBoundsException);
            }
        }
        i11 = i12 + 1;
        this.f6583e[i12] = (byte) i10;
        this.f6585g = i11;
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void y(int i10) {
        int i11 = this.f6585g;
        try {
            byte[] bArr = this.f6583e;
            bArr[i11] = (byte) i10;
            bArr[i11 + 1] = (byte) (i10 >> 8);
            bArr[i11 + 2] = (byte) (i10 >> 16);
            bArr[i11 + 3] = (byte) (i10 >> 24);
            this.f6585g = i11 + 4;
        } catch (IndexOutOfBoundsException e10) {
            throw new oa(i11, this.f6584f, 4, e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void z(long j10) {
        boolean z10;
        int i10;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i11;
        z10 = pa.f6667c;
        int i12 = this.f6585g;
        if (z10 && this.f6584f - i12 >= 10) {
            while ((j10 & (-128)) != 0) {
                ld.u(this.f6583e, i12, (byte) (((int) j10) | 128));
                j10 >>>= 7;
                i12++;
            }
            i10 = i12 + 1;
            ld.u(this.f6583e, i12, (byte) j10);
        } else {
            while ((j10 & (-128)) != 0) {
                try {
                    i11 = i12 + 1;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException = e10;
                }
                try {
                    this.f6583e[i12] = (byte) (((int) j10) | 128);
                    j10 >>>= 7;
                    i12 = i11;
                } catch (IndexOutOfBoundsException e11) {
                    indexOutOfBoundsException = e11;
                    i12 = i11;
                    throw new oa(i12, this.f6584f, 1, indexOutOfBoundsException);
                }
            }
            i10 = i12 + 1;
            try {
                this.f6583e[i12] = (byte) j10;
            } catch (IndexOutOfBoundsException e12) {
                indexOutOfBoundsException = e12;
                i12 = i10;
                throw new oa(i12, this.f6584f, 1, indexOutOfBoundsException);
            }
        }
        this.f6585g = i10;
    }
}
