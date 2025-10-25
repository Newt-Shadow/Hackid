package s3;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private int f29344a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f29345b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f29346c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int[] f29347d;

    /* renamed from: e  reason: collision with root package name */
    private int f29348e;

    public k() {
        int[] iArr = new int[16];
        this.f29347d = iArr;
        this.f29348e = iArr.length - 1;
    }

    private void c() {
        int[] iArr = this.f29347d;
        int length = iArr.length << 1;
        if (length >= 0) {
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i10 = this.f29344a;
            int i11 = length2 - i10;
            System.arraycopy(iArr, i10, iArr2, 0, i11);
            System.arraycopy(this.f29347d, 0, iArr2, i11, i10);
            this.f29344a = 0;
            this.f29345b = this.f29346c - 1;
            this.f29347d = iArr2;
            this.f29348e = iArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    public void a(int i10) {
        if (this.f29346c == this.f29347d.length) {
            c();
        }
        int i11 = (this.f29345b + 1) & this.f29348e;
        this.f29345b = i11;
        this.f29347d[i11] = i10;
        this.f29346c++;
    }

    public void b() {
        this.f29344a = 0;
        this.f29345b = -1;
        this.f29346c = 0;
    }

    public boolean d() {
        if (this.f29346c == 0) {
            return true;
        }
        return false;
    }

    public int e() {
        int i10 = this.f29346c;
        if (i10 != 0) {
            int[] iArr = this.f29347d;
            int i11 = this.f29344a;
            int i12 = iArr[i11];
            this.f29344a = (i11 + 1) & this.f29348e;
            this.f29346c = i10 - 1;
            return i12;
        }
        throw new NoSuchElementException();
    }
}
