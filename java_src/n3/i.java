package n3;

import d3.t0;
import g3.a0;
import g3.z;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f26145a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26146b;

    /* renamed from: c  reason: collision with root package name */
    private final long f26147c;

    /* renamed from: d  reason: collision with root package name */
    private final long f26148d;

    /* renamed from: e  reason: collision with root package name */
    private final long f26149e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f26150f;

    private i(long j10, int i10, long j11) {
        this(j10, i10, j11, -1L, null);
    }

    public static i b(long j10, long j11, t0.a aVar, e0 e0Var) {
        int K;
        int i10 = aVar.f14605g;
        int i11 = aVar.f14602d;
        int p10 = e0Var.p();
        if ((p10 & 1) == 1 && (K = e0Var.K()) != 0) {
            long M0 = q0.M0(K, i10 * 1000000, i11);
            if ((p10 & 6) != 6) {
                return new i(j11, aVar.f14601c, M0);
            }
            long I = e0Var.I();
            long[] jArr = new long[100];
            for (int i12 = 0; i12 < 100; i12++) {
                jArr[i12] = e0Var.G();
            }
            if (j10 != -1) {
                long j12 = j11 + I;
                if (j10 != j12) {
                    r.i("XingSeeker", "XING data size mismatch: " + j10 + ", " + j12);
                }
            }
            return new i(j11, aVar.f14601c, M0, I, jArr);
        }
        return null;
    }

    private long c(int i10) {
        return (this.f26147c * i10) / 100;
    }

    @Override // n3.g
    public long a(long j10) {
        long j11;
        double d10;
        long j12 = j10 - this.f26145a;
        if (e() && j12 > this.f26146b) {
            long[] jArr = (long[]) y4.a.h(this.f26150f);
            double d11 = (j12 * 256.0d) / this.f26148d;
            int i10 = q0.i(jArr, (long) d11, true, true);
            long c10 = c(i10);
            long j13 = jArr[i10];
            int i11 = i10 + 1;
            long c11 = c(i11);
            if (i10 == 99) {
                j11 = 256;
            } else {
                j11 = jArr[i11];
            }
            if (j13 == j11) {
                d10 = 0.0d;
            } else {
                d10 = (d11 - j13) / (j11 - j13);
            }
            return c10 + Math.round(d10 * (c11 - c10));
        }
        return 0L;
    }

    @Override // n3.g
    public long d() {
        return this.f26149e;
    }

    @Override // g3.z
    public boolean e() {
        if (this.f26150f != null) {
            return true;
        }
        return false;
    }

    @Override // g3.z
    public z.a h(long j10) {
        double d10;
        if (!e()) {
            return new z.a(new a0(0L, this.f26145a + this.f26146b));
        }
        long r10 = q0.r(j10, 0L, this.f26147c);
        double d11 = (r10 * 100.0d) / this.f26147c;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i10 = (int) d11;
                long[] jArr = (long[]) y4.a.h(this.f26150f);
                double d13 = jArr[i10];
                if (i10 == 99) {
                    d10 = 256.0d;
                } else {
                    d10 = jArr[i10 + 1];
                }
                d12 = d13 + ((d11 - i10) * (d10 - d13));
            }
        }
        return new z.a(new a0(r10, this.f26145a + q0.r(Math.round((d12 / 256.0d) * this.f26148d), this.f26146b, this.f26148d - 1)));
    }

    @Override // g3.z
    public long i() {
        return this.f26147c;
    }

    private i(long j10, int i10, long j11, long j12, long[] jArr) {
        this.f26145a = j10;
        this.f26146b = i10;
        this.f26147c = j11;
        this.f26150f = jArr;
        this.f26148d = j12;
        this.f26149e = j12 != -1 ? j10 + j12 : -1L;
    }
}
