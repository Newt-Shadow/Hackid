package g3;

import g3.z;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class c implements z {

    /* renamed from: a  reason: collision with root package name */
    public final int f16149a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f16150b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f16151c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f16152d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f16153e;

    /* renamed from: f  reason: collision with root package name */
    private final long f16154f;

    public c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f16150b = iArr;
        this.f16151c = jArr;
        this.f16152d = jArr2;
        this.f16153e = jArr3;
        int length = iArr.length;
        this.f16149a = length;
        if (length > 0) {
            this.f16154f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f16154f = 0L;
        }
    }

    public int b(long j10) {
        return q0.i(this.f16153e, j10, true, true);
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    @Override // g3.z
    public z.a h(long j10) {
        int b10 = b(j10);
        a0 a0Var = new a0(this.f16153e[b10], this.f16151c[b10]);
        if (a0Var.f16143a < j10 && b10 != this.f16149a - 1) {
            int i10 = b10 + 1;
            return new z.a(a0Var, new a0(this.f16153e[i10], this.f16151c[i10]));
        }
        return new z.a(a0Var);
    }

    @Override // g3.z
    public long i() {
        return this.f16154f;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f16149a + ", sizes=" + Arrays.toString(this.f16150b) + ", offsets=" + Arrays.toString(this.f16151c) + ", timeUs=" + Arrays.toString(this.f16153e) + ", durationsUs=" + Arrays.toString(this.f16152d) + ")";
    }
}
