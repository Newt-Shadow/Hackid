package g3;

import g3.z;
/* loaded from: classes.dex */
public class d implements z {

    /* renamed from: a  reason: collision with root package name */
    private final long f16162a;

    /* renamed from: b  reason: collision with root package name */
    private final long f16163b;

    /* renamed from: c  reason: collision with root package name */
    private final int f16164c;

    /* renamed from: d  reason: collision with root package name */
    private final long f16165d;

    /* renamed from: e  reason: collision with root package name */
    private final int f16166e;

    /* renamed from: f  reason: collision with root package name */
    private final long f16167f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f16168g;

    public d(long j10, long j11, int i10, int i11, boolean z10) {
        this.f16162a = j10;
        this.f16163b = j11;
        this.f16164c = i11 == -1 ? 1 : i11;
        this.f16166e = i10;
        this.f16168g = z10;
        if (j10 == -1) {
            this.f16165d = -1L;
            this.f16167f = -9223372036854775807L;
            return;
        }
        this.f16165d = j10 - j11;
        this.f16167f = f(j10, j11, i10);
    }

    private long b(long j10) {
        int i10 = this.f16164c;
        long j11 = (((j10 * this.f16166e) / 8000000) / i10) * i10;
        long j12 = this.f16165d;
        if (j12 != -1) {
            j11 = Math.min(j11, j12 - i10);
        }
        return this.f16163b + Math.max(j11, 0L);
    }

    private static long f(long j10, long j11, int i10) {
        return ((Math.max(0L, j10 - j11) * 8) * 1000000) / i10;
    }

    public long c(long j10) {
        return f(j10, this.f16163b, this.f16166e);
    }

    @Override // g3.z
    public boolean e() {
        if (this.f16165d == -1 && !this.f16168g) {
            return false;
        }
        return true;
    }

    @Override // g3.z
    public z.a h(long j10) {
        if (this.f16165d == -1 && !this.f16168g) {
            return new z.a(new a0(0L, this.f16163b));
        }
        long b10 = b(j10);
        long c10 = c(b10);
        a0 a0Var = new a0(c10, b10);
        if (this.f16165d != -1 && c10 < j10) {
            int i10 = this.f16164c;
            if (i10 + b10 < this.f16162a) {
                long j11 = b10 + i10;
                return new z.a(a0Var, new a0(c(j11), j11));
            }
        }
        return new z.a(a0Var);
    }

    @Override // g3.z
    public long i() {
        return this.f16167f;
    }
}
