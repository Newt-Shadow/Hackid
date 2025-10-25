package z4;

import java.util.Arrays;
/* loaded from: classes.dex */
final class e {

    /* renamed from: c  reason: collision with root package name */
    private boolean f33424c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33425d;

    /* renamed from: f  reason: collision with root package name */
    private int f33427f;

    /* renamed from: a  reason: collision with root package name */
    private a f33422a = new a();

    /* renamed from: b  reason: collision with root package name */
    private a f33423b = new a();

    /* renamed from: e  reason: collision with root package name */
    private long f33426e = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f33428a;

        /* renamed from: b  reason: collision with root package name */
        private long f33429b;

        /* renamed from: c  reason: collision with root package name */
        private long f33430c;

        /* renamed from: d  reason: collision with root package name */
        private long f33431d;

        /* renamed from: e  reason: collision with root package name */
        private long f33432e;

        /* renamed from: f  reason: collision with root package name */
        private long f33433f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean[] f33434g = new boolean[15];

        /* renamed from: h  reason: collision with root package name */
        private int f33435h;

        private static int c(long j10) {
            return (int) (j10 % 15);
        }

        public long a() {
            long j10 = this.f33432e;
            if (j10 == 0) {
                return 0L;
            }
            return this.f33433f / j10;
        }

        public long b() {
            return this.f33433f;
        }

        public boolean d() {
            long j10 = this.f33431d;
            if (j10 == 0) {
                return false;
            }
            return this.f33434g[c(j10 - 1)];
        }

        public boolean e() {
            if (this.f33431d > 15 && this.f33435h == 0) {
                return true;
            }
            return false;
        }

        public void f(long j10) {
            long j11 = this.f33431d;
            if (j11 == 0) {
                this.f33428a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f33428a;
                this.f33429b = j12;
                this.f33433f = j12;
                this.f33432e = 1L;
            } else {
                long j13 = j10 - this.f33430c;
                int c10 = c(j11);
                if (Math.abs(j13 - this.f33429b) <= 1000000) {
                    this.f33432e++;
                    this.f33433f += j13;
                    boolean[] zArr = this.f33434g;
                    if (zArr[c10]) {
                        zArr[c10] = false;
                        this.f33435h--;
                    }
                } else {
                    boolean[] zArr2 = this.f33434g;
                    if (!zArr2[c10]) {
                        zArr2[c10] = true;
                        this.f33435h++;
                    }
                }
            }
            this.f33431d++;
            this.f33430c = j10;
        }

        public void g() {
            this.f33431d = 0L;
            this.f33432e = 0L;
            this.f33433f = 0L;
            this.f33435h = 0;
            Arrays.fill(this.f33434g, false);
        }
    }

    public long a() {
        if (e()) {
            return this.f33422a.a();
        }
        return -9223372036854775807L;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f33422a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f33427f;
    }

    public long d() {
        if (e()) {
            return this.f33422a.b();
        }
        return -9223372036854775807L;
    }

    public boolean e() {
        return this.f33422a.e();
    }

    public void f(long j10) {
        this.f33422a.f(j10);
        int i10 = 0;
        if (this.f33422a.e() && !this.f33425d) {
            this.f33424c = false;
        } else if (this.f33426e != -9223372036854775807L) {
            if (!this.f33424c || this.f33423b.d()) {
                this.f33423b.g();
                this.f33423b.f(this.f33426e);
            }
            this.f33424c = true;
            this.f33423b.f(j10);
        }
        if (this.f33424c && this.f33423b.e()) {
            a aVar = this.f33422a;
            this.f33422a = this.f33423b;
            this.f33423b = aVar;
            this.f33424c = false;
            this.f33425d = false;
        }
        this.f33426e = j10;
        if (!this.f33422a.e()) {
            i10 = this.f33427f + 1;
        }
        this.f33427f = i10;
    }

    public void g() {
        this.f33422a.g();
        this.f33423b.g();
        this.f33424c = false;
        this.f33426e = -9223372036854775807L;
        this.f33427f = 0;
    }
}
