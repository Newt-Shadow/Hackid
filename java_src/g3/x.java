package g3;

import g3.z;
import y4.q0;
/* loaded from: classes.dex */
public final class x implements z {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f16247a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f16248b;

    /* renamed from: c  reason: collision with root package name */
    private final long f16249c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16250d;

    public x(long[] jArr, long[] jArr2, long j10) {
        boolean z10;
        boolean z11;
        if (jArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        int length = jArr2.length;
        if (length > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f16250d = z11;
        if (z11 && jArr2[0] > 0) {
            int i10 = length + 1;
            long[] jArr3 = new long[i10];
            this.f16247a = jArr3;
            long[] jArr4 = new long[i10];
            this.f16248b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        } else {
            this.f16247a = jArr;
            this.f16248b = jArr2;
        }
        this.f16249c = j10;
    }

    @Override // g3.z
    public boolean e() {
        return this.f16250d;
    }

    @Override // g3.z
    public z.a h(long j10) {
        if (!this.f16250d) {
            return new z.a(a0.f16142c);
        }
        int i10 = q0.i(this.f16248b, j10, true, true);
        a0 a0Var = new a0(this.f16248b[i10], this.f16247a[i10]);
        if (a0Var.f16143a != j10 && i10 != this.f16248b.length - 1) {
            int i11 = i10 + 1;
            return new z.a(a0Var, new a0(this.f16248b[i11], this.f16247a[i11]));
        }
        return new z.a(a0Var);
    }

    @Override // g3.z
    public long i() {
        return this.f16249c;
    }
}
