package n3;

import d3.t0;
import g3.a0;
import g3.z;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f26141a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f26142b;

    /* renamed from: c  reason: collision with root package name */
    private final long f26143c;

    /* renamed from: d  reason: collision with root package name */
    private final long f26144d;

    private h(long[] jArr, long[] jArr2, long j10, long j11) {
        this.f26141a = jArr;
        this.f26142b = jArr2;
        this.f26143c = j10;
        this.f26144d = j11;
    }

    public static h b(long j10, long j11, t0.a aVar, e0 e0Var) {
        int i10;
        int G;
        e0Var.U(10);
        int p10 = e0Var.p();
        if (p10 <= 0) {
            return null;
        }
        int i11 = aVar.f14602d;
        long j12 = p10;
        if (i11 >= 32000) {
            i10 = 1152;
        } else {
            i10 = 576;
        }
        long M0 = q0.M0(j12, i10 * 1000000, i11);
        int M = e0Var.M();
        int M2 = e0Var.M();
        int M3 = e0Var.M();
        e0Var.U(2);
        long j13 = j11 + aVar.f14601c;
        long[] jArr = new long[M];
        long[] jArr2 = new long[M];
        int i12 = 0;
        long j14 = j11;
        while (i12 < M) {
            int i13 = M2;
            long j15 = j13;
            jArr[i12] = (i12 * M0) / M;
            jArr2[i12] = Math.max(j14, j15);
            if (M3 != 1) {
                if (M3 != 2) {
                    if (M3 != 3) {
                        if (M3 != 4) {
                            return null;
                        }
                        G = e0Var.K();
                    } else {
                        G = e0Var.J();
                    }
                } else {
                    G = e0Var.M();
                }
            } else {
                G = e0Var.G();
            }
            j14 += G * i13;
            i12++;
            jArr = jArr;
            M2 = i13;
            j13 = j15;
        }
        long[] jArr3 = jArr;
        if (j10 != -1 && j10 != j14) {
            r.i("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + j14);
        }
        return new h(jArr3, jArr2, M0, j14);
    }

    @Override // n3.g
    public long a(long j10) {
        return this.f26141a[q0.i(this.f26142b, j10, true, true)];
    }

    @Override // n3.g
    public long d() {
        return this.f26144d;
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    @Override // g3.z
    public z.a h(long j10) {
        int i10 = q0.i(this.f26141a, j10, true, true);
        a0 a0Var = new a0(this.f26141a[i10], this.f26142b[i10]);
        if (a0Var.f16143a < j10 && i10 != this.f26141a.length - 1) {
            int i11 = i10 + 1;
            return new z.a(a0Var, new a0(this.f26141a[i11], this.f26142b[i11]));
        }
        return new z.a(a0Var);
    }

    @Override // g3.z
    public long i() {
        return this.f26143c;
    }
}
