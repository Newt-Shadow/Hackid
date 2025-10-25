package y4;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: a  reason: collision with root package name */
    private long[] f32917a;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f32918b;

    /* renamed from: c  reason: collision with root package name */
    private int f32919c;

    /* renamed from: d  reason: collision with root package name */
    private int f32920d;

    public l0() {
        this(10);
    }

    private void b(long j10, Object obj) {
        int i10 = this.f32919c;
        int i11 = this.f32920d;
        Object[] objArr = this.f32918b;
        int length = (i10 + i11) % objArr.length;
        this.f32917a[length] = j10;
        objArr[length] = obj;
        this.f32920d = i11 + 1;
    }

    private void d(long j10) {
        int i10 = this.f32920d;
        if (i10 > 0) {
            if (j10 <= this.f32917a[((this.f32919c + i10) - 1) % this.f32918b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f32918b.length;
        if (this.f32920d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        Object[] f10 = f(i10);
        int i11 = this.f32919c;
        int i12 = length - i11;
        System.arraycopy(this.f32917a, i11, jArr, 0, i12);
        System.arraycopy(this.f32918b, this.f32919c, f10, 0, i12);
        int i13 = this.f32919c;
        if (i13 > 0) {
            System.arraycopy(this.f32917a, 0, jArr, i12, i13);
            System.arraycopy(this.f32918b, 0, f10, i12, this.f32919c);
        }
        this.f32917a = jArr;
        this.f32918b = f10;
        this.f32919c = 0;
    }

    private static Object[] f(int i10) {
        return new Object[i10];
    }

    private Object g(long j10, boolean z10) {
        Object obj = null;
        long j11 = Long.MAX_VALUE;
        while (this.f32920d > 0) {
            long j12 = j10 - this.f32917a[this.f32919c];
            if (j12 < 0 && (z10 || (-j12) >= j11)) {
                break;
            }
            obj = j();
            j11 = j12;
        }
        return obj;
    }

    private Object j() {
        boolean z10;
        if (this.f32920d > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.f(z10);
        Object[] objArr = this.f32918b;
        int i10 = this.f32919c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f32919c = (i10 + 1) % objArr.length;
        this.f32920d--;
        return obj;
    }

    public synchronized void a(long j10, Object obj) {
        d(j10);
        e();
        b(j10, obj);
    }

    public synchronized void c() {
        this.f32919c = 0;
        this.f32920d = 0;
        Arrays.fill(this.f32918b, (Object) null);
    }

    public synchronized Object h() {
        Object j10;
        if (this.f32920d == 0) {
            j10 = null;
        } else {
            j10 = j();
        }
        return j10;
    }

    public synchronized Object i(long j10) {
        return g(j10, true);
    }

    public synchronized int k() {
        return this.f32920d;
    }

    public l0(int i10) {
        this.f32917a = new long[i10];
        this.f32918b = f(i10);
    }
}
