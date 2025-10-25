package s2;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final e f29269c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f29270a;

    /* renamed from: b  reason: collision with root package name */
    private final long f29271b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f29272a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f29273b = 0;

        a() {
        }

        public e a() {
            return new e(this.f29272a, this.f29273b);
        }

        public a b(long j10) {
            this.f29272a = j10;
            return this;
        }

        public a c(long j10) {
            this.f29273b = j10;
            return this;
        }
    }

    e(long j10, long j11) {
        this.f29270a = j10;
        this.f29271b = j11;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f29270a;
    }

    public long b() {
        return this.f29271b;
    }
}
