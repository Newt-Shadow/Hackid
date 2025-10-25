package x2;

import x2.e;
/* loaded from: classes.dex */
final class a extends e {

    /* renamed from: b  reason: collision with root package name */
    private final long f32175b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32176c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32177d;

    /* renamed from: e  reason: collision with root package name */
    private final long f32178e;

    /* renamed from: f  reason: collision with root package name */
    private final int f32179f;

    /* loaded from: classes.dex */
    static final class b extends e.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f32180a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f32181b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f32182c;

        /* renamed from: d  reason: collision with root package name */
        private Long f32183d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f32184e;

        @Override // x2.e.a
        e a() {
            String str = "";
            if (this.f32180a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f32181b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f32182c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f32183d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f32184e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f32180a.longValue(), this.f32181b.intValue(), this.f32182c.intValue(), this.f32183d.longValue(), this.f32184e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // x2.e.a
        e.a b(int i10) {
            this.f32182c = Integer.valueOf(i10);
            return this;
        }

        @Override // x2.e.a
        e.a c(long j10) {
            this.f32183d = Long.valueOf(j10);
            return this;
        }

        @Override // x2.e.a
        e.a d(int i10) {
            this.f32181b = Integer.valueOf(i10);
            return this;
        }

        @Override // x2.e.a
        e.a e(int i10) {
            this.f32184e = Integer.valueOf(i10);
            return this;
        }

        @Override // x2.e.a
        e.a f(long j10) {
            this.f32180a = Long.valueOf(j10);
            return this;
        }
    }

    @Override // x2.e
    int b() {
        return this.f32177d;
    }

    @Override // x2.e
    long c() {
        return this.f32178e;
    }

    @Override // x2.e
    int d() {
        return this.f32176c;
    }

    @Override // x2.e
    int e() {
        return this.f32179f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f32175b == eVar.f() && this.f32176c == eVar.d() && this.f32177d == eVar.b() && this.f32178e == eVar.c() && this.f32179f == eVar.e()) {
            return true;
        }
        return false;
    }

    @Override // x2.e
    long f() {
        return this.f32175b;
    }

    public int hashCode() {
        long j10 = this.f32175b;
        long j11 = this.f32178e;
        return ((((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f32176c) * 1000003) ^ this.f32177d) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f32179f;
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f32175b + ", loadBatchSize=" + this.f32176c + ", criticalSectionEnterTimeoutMs=" + this.f32177d + ", eventCleanUpAge=" + this.f32178e + ", maxBlobByteSizePerRow=" + this.f32179f + "}";
    }

    private a(long j10, int i10, int i11, long j11, int i12) {
        this.f32175b = j10;
        this.f32176c = i10;
        this.f32177d = i11;
        this.f32178e = j11;
        this.f32179f = i12;
    }
}
