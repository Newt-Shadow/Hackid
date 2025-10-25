package g3;

import b3.u1;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class e implements l {

    /* renamed from: b  reason: collision with root package name */
    private final x4.h f16174b;

    /* renamed from: c  reason: collision with root package name */
    private final long f16175c;

    /* renamed from: d  reason: collision with root package name */
    private long f16176d;

    /* renamed from: f  reason: collision with root package name */
    private int f16178f;

    /* renamed from: g  reason: collision with root package name */
    private int f16179g;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f16177e = new byte[65536];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f16173a = new byte[Base64Utils.IO_BUFFER_SIZE];

    static {
        u1.a("goog.exo.extractor");
    }

    public e(x4.h hVar, long j10, long j11) {
        this.f16174b = hVar;
        this.f16176d = j10;
        this.f16175c = j11;
    }

    private void q(int i10) {
        if (i10 != -1) {
            this.f16176d += i10;
        }
    }

    private void r(int i10) {
        int i11 = this.f16178f + i10;
        byte[] bArr = this.f16177e;
        if (i11 > bArr.length) {
            this.f16177e = Arrays.copyOf(this.f16177e, q0.q(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    private int s(byte[] bArr, int i10, int i11) {
        int i12 = this.f16179g;
        if (i12 == 0) {
            return 0;
        }
        int min = Math.min(i12, i11);
        System.arraycopy(this.f16177e, 0, bArr, i10, min);
        w(min);
        return min;
    }

    private int t(byte[] bArr, int i10, int i11, int i12, boolean z10) {
        if (!Thread.interrupted()) {
            int read = this.f16174b.read(bArr, i10 + i12, i11 - i12);
            if (read == -1) {
                if (i12 == 0 && z10) {
                    return -1;
                }
                throw new EOFException();
            }
            return i12 + read;
        }
        throw new InterruptedIOException();
    }

    private int u(int i10) {
        int min = Math.min(this.f16179g, i10);
        w(min);
        return min;
    }

    private void w(int i10) {
        byte[] bArr;
        int i11 = this.f16179g - i10;
        this.f16179g = i11;
        this.f16178f = 0;
        byte[] bArr2 = this.f16177e;
        if (i11 < bArr2.length - 524288) {
            bArr = new byte[65536 + i11];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i10, bArr, 0, i11);
        this.f16177e = bArr;
    }

    @Override // g3.l
    public int a(int i10) {
        int u10 = u(i10);
        if (u10 == 0) {
            byte[] bArr = this.f16173a;
            u10 = t(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        q(u10);
        return u10;
    }

    @Override // g3.l
    public long b() {
        return this.f16175c;
    }

    @Override // g3.l
    public long c() {
        return this.f16176d;
    }

    @Override // g3.l
    public boolean e(byte[] bArr, int i10, int i11, boolean z10) {
        int s10 = s(bArr, i10, i11);
        while (s10 < i11 && s10 != -1) {
            s10 = t(bArr, i10, i11, s10, z10);
        }
        q(s10);
        if (s10 != -1) {
            return true;
        }
        return false;
    }

    @Override // g3.l
    public boolean f(byte[] bArr, int i10, int i11, boolean z10) {
        if (!n(i11, z10)) {
            return false;
        }
        System.arraycopy(this.f16177e, this.f16178f - i11, bArr, i10, i11);
        return true;
    }

    @Override // g3.l
    public long g() {
        return this.f16176d + this.f16178f;
    }

    @Override // g3.l
    public void h(int i10) {
        n(i10, false);
    }

    @Override // g3.l
    public int j(byte[] bArr, int i10, int i11) {
        int min;
        r(i11);
        int i12 = this.f16179g;
        int i13 = this.f16178f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            min = t(this.f16177e, i13, i11, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f16179g += min;
        } else {
            min = Math.min(i11, i14);
        }
        System.arraycopy(this.f16177e, this.f16178f, bArr, i10, min);
        this.f16178f += min;
        return min;
    }

    @Override // g3.l
    public void l() {
        this.f16178f = 0;
    }

    @Override // g3.l
    public void m(int i10) {
        v(i10, false);
    }

    @Override // g3.l
    public boolean n(int i10, boolean z10) {
        r(i10);
        int i11 = this.f16179g - this.f16178f;
        while (i11 < i10) {
            i11 = t(this.f16177e, this.f16178f, i10, i11, z10);
            if (i11 == -1) {
                return false;
            }
            this.f16179g = this.f16178f + i11;
        }
        this.f16178f += i10;
        return true;
    }

    @Override // g3.l
    public void p(byte[] bArr, int i10, int i11) {
        f(bArr, i10, i11, false);
    }

    @Override // g3.l, x4.h
    public int read(byte[] bArr, int i10, int i11) {
        int s10 = s(bArr, i10, i11);
        if (s10 == 0) {
            s10 = t(bArr, i10, i11, 0, true);
        }
        q(s10);
        return s10;
    }

    @Override // g3.l
    public void readFully(byte[] bArr, int i10, int i11) {
        e(bArr, i10, i11, false);
    }

    public boolean v(int i10, boolean z10) {
        int u10 = u(i10);
        while (u10 < i10 && u10 != -1) {
            u10 = t(this.f16173a, -u10, Math.min(i10, this.f16173a.length + u10), u10, z10);
        }
        q(u10);
        if (u10 != -1) {
            return true;
        }
        return false;
    }
}
