package n8;

import n8.f;
/* loaded from: classes.dex */
final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f26490a;

    /* renamed from: b  reason: collision with root package name */
    private final long f26491b;

    /* renamed from: c  reason: collision with root package name */
    private final f.b f26492c;

    /* renamed from: n8.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0260b extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private String f26493a;

        /* renamed from: b  reason: collision with root package name */
        private long f26494b;

        /* renamed from: c  reason: collision with root package name */
        private f.b f26495c;

        /* renamed from: d  reason: collision with root package name */
        private byte f26496d;

        @Override // n8.f.a
        public f a() {
            if (this.f26496d == 1) {
                return new b(this.f26493a, this.f26494b, this.f26495c);
            }
            throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
        }

        @Override // n8.f.a
        public f.a b(f.b bVar) {
            this.f26495c = bVar;
            return this;
        }

        @Override // n8.f.a
        public f.a c(String str) {
            this.f26493a = str;
            return this;
        }

        @Override // n8.f.a
        public f.a d(long j10) {
            this.f26494b = j10;
            this.f26496d = (byte) (this.f26496d | 1);
            return this;
        }
    }

    @Override // n8.f
    public f.b b() {
        return this.f26492c;
    }

    @Override // n8.f
    public String c() {
        return this.f26490a;
    }

    @Override // n8.f
    public long d() {
        return this.f26491b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f26490a;
        if (str != null ? str.equals(fVar.c()) : fVar.c() == null) {
            if (this.f26491b == fVar.d()) {
                f.b bVar = this.f26492c;
                if (bVar == null) {
                    if (fVar.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(fVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f26490a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j10 = this.f26491b;
        int i11 = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        f.b bVar = this.f26492c;
        if (bVar != null) {
            i10 = bVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "TokenResult{token=" + this.f26490a + ", tokenExpirationTimestamp=" + this.f26491b + ", responseCode=" + this.f26492c + "}";
    }

    private b(String str, long j10, f.b bVar) {
        this.f26490a = str;
        this.f26491b = j10;
        this.f26492c = bVar;
    }
}
