package s2;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final c f29250c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f29251a;

    /* renamed from: b  reason: collision with root package name */
    private final b f29252b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f29253a = 0;

        /* renamed from: b  reason: collision with root package name */
        private b f29254b = b.REASON_UNKNOWN;

        a() {
        }

        public c a() {
            return new c(this.f29253a, this.f29254b);
        }

        public a b(long j10) {
            this.f29253a = j10;
            return this;
        }

        public a c(b bVar) {
            this.f29254b = bVar;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public enum b implements g8.c {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f29263a;

        b(int i10) {
            this.f29263a = i10;
        }

        @Override // g8.c
        public int c() {
            return this.f29263a;
        }
    }

    c(long j10, b bVar) {
        this.f29251a = j10;
        this.f29252b = bVar;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f29251a;
    }

    public b b() {
        return this.f29252b;
    }
}
