package y4;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private int f32966a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f32967b;

    public s() {
        this(32);
    }

    public void a(long j10) {
        int i10 = this.f32966a;
        long[] jArr = this.f32967b;
        if (i10 == jArr.length) {
            this.f32967b = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.f32967b;
        int i11 = this.f32966a;
        this.f32966a = i11 + 1;
        jArr2[i11] = j10;
    }

    public long b(int i10) {
        if (i10 >= 0 && i10 < this.f32966a) {
            return this.f32967b[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.f32966a);
    }

    public int c() {
        return this.f32966a;
    }

    public long[] d() {
        return Arrays.copyOf(this.f32967b, this.f32966a);
    }

    public s(int i10) {
        this.f32967b = new long[i10];
    }
}
