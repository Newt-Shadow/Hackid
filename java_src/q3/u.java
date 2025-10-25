package q3;

import java.util.Arrays;
/* loaded from: classes.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private final int f28344a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28345b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28346c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f28347d;

    /* renamed from: e  reason: collision with root package name */
    public int f28348e;

    public u(int i10, int i11) {
        this.f28344a = i10;
        byte[] bArr = new byte[i11 + 3];
        this.f28347d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i10, int i11) {
        if (!this.f28345b) {
            return;
        }
        int i12 = i11 - i10;
        byte[] bArr2 = this.f28347d;
        int length = bArr2.length;
        int i13 = this.f28348e;
        if (length < i13 + i12) {
            this.f28347d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
        }
        System.arraycopy(bArr, i10, this.f28347d, this.f28348e, i12);
        this.f28348e += i12;
    }

    public boolean b(int i10) {
        if (!this.f28345b) {
            return false;
        }
        this.f28348e -= i10;
        this.f28345b = false;
        this.f28346c = true;
        return true;
    }

    public boolean c() {
        return this.f28346c;
    }

    public void d() {
        this.f28345b = false;
        this.f28346c = false;
    }

    public void e(int i10) {
        boolean z10 = true;
        y4.a.f(!this.f28345b);
        if (i10 != this.f28344a) {
            z10 = false;
        }
        this.f28345b = z10;
        if (z10) {
            this.f28348e = 3;
            this.f28346c = false;
        }
    }
}
