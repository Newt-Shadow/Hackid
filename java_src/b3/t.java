package b3;

import android.os.SystemClock;
import b3.f2;
/* loaded from: classes.dex */
public final class t implements c2 {

    /* renamed from: a  reason: collision with root package name */
    private final float f4363a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4364b;

    /* renamed from: c  reason: collision with root package name */
    private final long f4365c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4366d;

    /* renamed from: e  reason: collision with root package name */
    private final long f4367e;

    /* renamed from: f  reason: collision with root package name */
    private final long f4368f;

    /* renamed from: g  reason: collision with root package name */
    private final float f4369g;

    /* renamed from: h  reason: collision with root package name */
    private long f4370h;

    /* renamed from: i  reason: collision with root package name */
    private long f4371i;

    /* renamed from: j  reason: collision with root package name */
    private long f4372j;

    /* renamed from: k  reason: collision with root package name */
    private long f4373k;

    /* renamed from: l  reason: collision with root package name */
    private long f4374l;

    /* renamed from: m  reason: collision with root package name */
    private long f4375m;

    /* renamed from: n  reason: collision with root package name */
    private float f4376n;

    /* renamed from: o  reason: collision with root package name */
    private float f4377o;

    /* renamed from: p  reason: collision with root package name */
    private float f4378p;

    /* renamed from: q  reason: collision with root package name */
    private long f4379q;

    /* renamed from: r  reason: collision with root package name */
    private long f4380r;

    /* renamed from: s  reason: collision with root package name */
    private long f4381s;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private float f4382a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        private float f4383b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        private long f4384c = 1000;

        /* renamed from: d  reason: collision with root package name */
        private float f4385d = 1.0E-7f;

        /* renamed from: e  reason: collision with root package name */
        private long f4386e = y4.q0.A0(20);

        /* renamed from: f  reason: collision with root package name */
        private long f4387f = y4.q0.A0(500);

        /* renamed from: g  reason: collision with root package name */
        private float f4388g = 0.999f;

        public t a() {
            return new t(this.f4382a, this.f4383b, this.f4384c, this.f4385d, this.f4386e, this.f4387f, this.f4388g);
        }
    }

    private void f(long j10) {
        long j11 = this.f4380r + (this.f4381s * 3);
        if (this.f4375m > j11) {
            float A0 = (float) y4.q0.A0(this.f4365c);
            this.f4375m = q6.g.c(j11, this.f4372j, this.f4375m - (((this.f4378p - 1.0f) * A0) + ((this.f4376n - 1.0f) * A0)));
            return;
        }
        long r10 = y4.q0.r(j10 - (Math.max(0.0f, this.f4378p - 1.0f) / this.f4366d), this.f4375m, j11);
        this.f4375m = r10;
        long j12 = this.f4374l;
        if (j12 != -9223372036854775807L && r10 > j12) {
            this.f4375m = j12;
        }
    }

    private void g() {
        long j10 = this.f4370h;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f4371i;
            if (j11 != -9223372036854775807L) {
                j10 = j11;
            }
            long j12 = this.f4373k;
            if (j12 != -9223372036854775807L && j10 < j12) {
                j10 = j12;
            }
            long j13 = this.f4374l;
            if (j13 != -9223372036854775807L && j10 > j13) {
                j10 = j13;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f4372j == j10) {
            return;
        }
        this.f4372j = j10;
        this.f4375m = j10;
        this.f4380r = -9223372036854775807L;
        this.f4381s = -9223372036854775807L;
        this.f4379q = -9223372036854775807L;
    }

    private static long h(long j10, long j11, float f10) {
        return (((float) j10) * f10) + ((1.0f - f10) * ((float) j11));
    }

    private void i(long j10, long j11) {
        long j12 = j10 - j11;
        long j13 = this.f4380r;
        if (j13 == -9223372036854775807L) {
            this.f4380r = j12;
            this.f4381s = 0L;
            return;
        }
        long max = Math.max(j12, h(j13, j12, this.f4369g));
        this.f4380r = max;
        this.f4381s = h(this.f4381s, Math.abs(j12 - max), this.f4369g);
    }

    @Override // b3.c2
    public void a(f2.g gVar) {
        this.f4370h = y4.q0.A0(gVar.f3943a);
        this.f4373k = y4.q0.A0(gVar.f3944b);
        this.f4374l = y4.q0.A0(gVar.f3945c);
        float f10 = gVar.f3946d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f4363a;
        }
        this.f4377o = f10;
        float f11 = gVar.f3947e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f4364b;
        }
        this.f4376n = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            this.f4370h = -9223372036854775807L;
        }
        g();
    }

    @Override // b3.c2
    public float b(long j10, long j11) {
        if (this.f4370h == -9223372036854775807L) {
            return 1.0f;
        }
        i(j10, j11);
        if (this.f4379q != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f4379q < this.f4365c) {
            return this.f4378p;
        }
        this.f4379q = SystemClock.elapsedRealtime();
        f(j10);
        long j12 = j10 - this.f4375m;
        if (Math.abs(j12) < this.f4367e) {
            this.f4378p = 1.0f;
        } else {
            this.f4378p = y4.q0.p((this.f4366d * ((float) j12)) + 1.0f, this.f4377o, this.f4376n);
        }
        return this.f4378p;
    }

    @Override // b3.c2
    public long c() {
        return this.f4375m;
    }

    @Override // b3.c2
    public void d() {
        long j10 = this.f4375m;
        if (j10 == -9223372036854775807L) {
            return;
        }
        long j11 = j10 + this.f4368f;
        this.f4375m = j11;
        long j12 = this.f4374l;
        if (j12 != -9223372036854775807L && j11 > j12) {
            this.f4375m = j12;
        }
        this.f4379q = -9223372036854775807L;
    }

    @Override // b3.c2
    public void e(long j10) {
        this.f4371i = j10;
        g();
    }

    private t(float f10, float f11, long j10, float f12, long j11, long j12, float f13) {
        this.f4363a = f10;
        this.f4364b = f11;
        this.f4365c = j10;
        this.f4366d = f12;
        this.f4367e = j11;
        this.f4368f = j12;
        this.f4369g = f13;
        this.f4370h = -9223372036854775807L;
        this.f4371i = -9223372036854775807L;
        this.f4373k = -9223372036854775807L;
        this.f4374l = -9223372036854775807L;
        this.f4377o = f10;
        this.f4376n = f11;
        this.f4378p = 1.0f;
        this.f4379q = -9223372036854775807L;
        this.f4372j = -9223372036854775807L;
        this.f4375m = -9223372036854775807L;
        this.f4380r = -9223372036854775807L;
        this.f4381s = -9223372036854775807L;
    }
}
