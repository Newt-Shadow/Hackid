package n3;

import android.util.Pair;
import g3.a0;
import g3.z;
import y3.k;
import y4.q0;
/* loaded from: classes.dex */
final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f26116a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f26117b;

    /* renamed from: c  reason: collision with root package name */
    private final long f26118c;

    private c(long[] jArr, long[] jArr2, long j10) {
        this.f26116a = jArr;
        this.f26117b = jArr2;
        this.f26118c = j10 == -9223372036854775807L ? q0.A0(jArr2[jArr2.length - 1]) : j10;
    }

    public static c b(long j10, k kVar, long j11) {
        int length = kVar.f32851e.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j10 += kVar.f32849c + kVar.f32851e[i12];
            j12 += kVar.f32850d + kVar.f32852f[i12];
            jArr[i11] = j10;
            jArr2[i11] = j12;
        }
        return new c(jArr, jArr2, j11);
    }

    private static Pair c(long j10, long[] jArr, long[] jArr2) {
        double d10;
        int i10 = q0.i(jArr, j10, true, true);
        long j11 = jArr[i10];
        long j12 = jArr2[i10];
        int i11 = i10 + 1;
        if (i11 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i11];
        long j14 = jArr2[i11];
        if (j13 == j11) {
            d10 = 0.0d;
        } else {
            d10 = (j10 - j11) / (j13 - j11);
        }
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) (d10 * (j14 - j12))) + j12));
    }

    @Override // n3.g
    public long a(long j10) {
        return q0.A0(((Long) c(j10, this.f26116a, this.f26117b).second).longValue());
    }

    @Override // n3.g
    public long d() {
        return -1L;
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    @Override // g3.z
    public z.a h(long j10) {
        Pair c10 = c(q0.X0(q0.r(j10, 0L, this.f26118c)), this.f26117b, this.f26116a);
        return new z.a(new a0(q0.A0(((Long) c10.first).longValue()), ((Long) c10.second).longValue()));
    }

    @Override // g3.z
    public long i() {
        return this.f26118c;
    }
}
