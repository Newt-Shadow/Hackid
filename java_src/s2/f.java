package s2;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private static final f f29274c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f29275a;

    /* renamed from: b  reason: collision with root package name */
    private final long f29276b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f29277a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f29278b = 0;

        a() {
        }

        public f a() {
            return new f(this.f29277a, this.f29278b);
        }

        public a b(long j10) {
            this.f29278b = j10;
            return this;
        }

        public a c(long j10) {
            this.f29277a = j10;
            return this;
        }
    }

    f(long j10, long j11) {
        this.f29275a = j10;
        this.f29276b = j11;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f29276b;
    }

    public long b() {
        return this.f29275a;
    }
}
