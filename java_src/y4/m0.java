package y4;
/* loaded from: classes.dex */
public final class m0 {

    /* renamed from: a  reason: collision with root package name */
    private long f32924a;

    /* renamed from: b  reason: collision with root package name */
    private long f32925b;

    /* renamed from: c  reason: collision with root package name */
    private long f32926c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal f32927d = new ThreadLocal();

    public m0(long j10) {
        g(j10);
    }

    public static long f(long j10) {
        return (j10 * 1000000) / 90000;
    }

    public static long i(long j10) {
        return (j10 * 90000) / 1000000;
    }

    public static long j(long j10) {
        return i(j10) % 8589934592L;
    }

    public synchronized long a(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f32925b == -9223372036854775807L) {
            long j11 = this.f32924a;
            if (j11 == 9223372036854775806L) {
                j11 = ((Long) a.e((Long) this.f32927d.get())).longValue();
            }
            this.f32925b = j11 - j10;
            notifyAll();
        }
        this.f32926c = j10;
        return j10 + this.f32925b;
    }

    public synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = this.f32926c;
        if (j11 != -9223372036854775807L) {
            long i10 = i(j11);
            long j12 = (4294967296L + i10) / 8589934592L;
            long j13 = ((j12 - 1) * 8589934592L) + j10;
            j10 += j12 * 8589934592L;
            if (Math.abs(j13 - i10) < Math.abs(j10 - i10)) {
                j10 = j13;
            }
        }
        return a(f(j10));
    }

    public synchronized long c() {
        long j10;
        j10 = this.f32924a;
        return (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) ? -9223372036854775807L : -9223372036854775807L;
    }

    public synchronized long d() {
        long c10;
        long j10 = this.f32926c;
        if (j10 != -9223372036854775807L) {
            c10 = j10 + this.f32925b;
        } else {
            c10 = c();
        }
        return c10;
    }

    public synchronized long e() {
        return this.f32925b;
    }

    public synchronized void g(long j10) {
        long j11;
        this.f32924a = j10;
        if (j10 == Long.MAX_VALUE) {
            j11 = 0;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f32925b = j11;
        this.f32926c = -9223372036854775807L;
    }

    public synchronized void h(boolean z10, long j10) {
        boolean z11;
        if (this.f32924a == 9223372036854775806L) {
            z11 = true;
        } else {
            z11 = false;
        }
        a.f(z11);
        if (this.f32925b != -9223372036854775807L) {
            return;
        }
        if (z10) {
            this.f32927d.set(Long.valueOf(j10));
        } else {
            while (this.f32925b == -9223372036854775807L) {
                wait();
            }
        }
    }
}
