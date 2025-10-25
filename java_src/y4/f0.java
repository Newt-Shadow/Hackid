package y4;

import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f32878a;

    /* renamed from: b  reason: collision with root package name */
    private int f32879b;

    /* renamed from: c  reason: collision with root package name */
    private int f32880c;

    /* renamed from: d  reason: collision with root package name */
    private int f32881d;

    public f0(byte[] bArr, int i10, int i11) {
        i(bArr, i10, i11);
    }

    private void a() {
        boolean z10;
        int i10;
        int i11 = this.f32880c;
        if (i11 >= 0 && (i11 < (i10 = this.f32879b) || (i11 == i10 && this.f32881d == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.f(z10);
    }

    private int f() {
        int i10 = 0;
        int i11 = 0;
        while (!d()) {
            i11++;
        }
        int i12 = (1 << i11) - 1;
        if (i11 > 0) {
            i10 = e(i11);
        }
        return i12 + i10;
    }

    private boolean j(int i10) {
        if (2 <= i10 && i10 < this.f32879b) {
            byte[] bArr = this.f32878a;
            if (bArr[i10] == 3 && bArr[i10 - 2] == 0 && bArr[i10 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean b(int i10) {
        int i11 = this.f32880c;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        int i14 = (this.f32881d + i10) - (i12 * 8);
        if (i14 > 7) {
            i13++;
            i14 -= 8;
        }
        while (true) {
            i11++;
            if (i11 > i13 || i13 >= this.f32879b) {
                break;
            } else if (j(i11)) {
                i13++;
                i11 += 2;
            }
        }
        int i15 = this.f32879b;
        if (i13 < i15) {
            return true;
        }
        if (i13 == i15 && i14 == 0) {
            return true;
        }
        return false;
    }

    public boolean c() {
        boolean z10;
        int i10 = this.f32880c;
        int i11 = this.f32881d;
        int i12 = 0;
        while (this.f32880c < this.f32879b && !d()) {
            i12++;
        }
        if (this.f32880c == this.f32879b) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f32880c = i10;
        this.f32881d = i11;
        if (z10 || !b((i12 * 2) + 1)) {
            return false;
        }
        return true;
    }

    public boolean d() {
        boolean z10;
        if ((this.f32878a[this.f32880c] & (128 >> this.f32881d)) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k();
        return z10;
    }

    public int e(int i10) {
        int i11;
        int i12;
        this.f32881d += i10;
        int i13 = 0;
        while (true) {
            i11 = this.f32881d;
            i12 = 2;
            if (i11 <= 8) {
                break;
            }
            int i14 = i11 - 8;
            this.f32881d = i14;
            byte[] bArr = this.f32878a;
            int i15 = this.f32880c;
            i13 |= (bArr[i15] & ForkServer.ERROR) << i14;
            if (!j(i15 + 1)) {
                i12 = 1;
            }
            this.f32880c = i15 + i12;
        }
        byte[] bArr2 = this.f32878a;
        int i16 = this.f32880c;
        int i17 = ((-1) >>> (32 - i10)) & (i13 | ((bArr2[i16] & ForkServer.ERROR) >> (8 - i11)));
        if (i11 == 8) {
            this.f32881d = 0;
            if (!j(i16 + 1)) {
                i12 = 1;
            }
            this.f32880c = i16 + i12;
        }
        a();
        return i17;
    }

    public int g() {
        int i10;
        int f10 = f();
        if (f10 % 2 == 0) {
            i10 = -1;
        } else {
            i10 = 1;
        }
        return i10 * ((f10 + 1) / 2);
    }

    public int h() {
        return f();
    }

    public void i(byte[] bArr, int i10, int i11) {
        this.f32878a = bArr;
        this.f32880c = i10;
        this.f32879b = i11;
        this.f32881d = 0;
        a();
    }

    public void k() {
        int i10 = 1;
        int i11 = this.f32881d + 1;
        this.f32881d = i11;
        if (i11 == 8) {
            this.f32881d = 0;
            int i12 = this.f32880c;
            if (j(i12 + 1)) {
                i10 = 2;
            }
            this.f32880c = i12 + i10;
        }
        a();
    }

    public void l(int i10) {
        int i11 = this.f32880c;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        this.f32880c = i13;
        int i14 = this.f32881d + (i10 - (i12 * 8));
        this.f32881d = i14;
        if (i14 > 7) {
            this.f32880c = i13 + 1;
            this.f32881d = i14 - 8;
        }
        while (true) {
            i11++;
            if (i11 <= this.f32880c) {
                if (j(i11)) {
                    this.f32880c++;
                    i11 += 2;
                }
            } else {
                a();
                return;
            }
        }
    }
}
