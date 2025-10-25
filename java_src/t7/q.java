package t7;

import t7.f0;
/* loaded from: classes.dex */
final class q extends f0.e.d.a.b.AbstractC0327d {

    /* renamed from: a  reason: collision with root package name */
    private final String f30413a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30414b;

    /* renamed from: c  reason: collision with root package name */
    private final long f30415c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0327d.AbstractC0328a {

        /* renamed from: a  reason: collision with root package name */
        private String f30416a;

        /* renamed from: b  reason: collision with root package name */
        private String f30417b;

        /* renamed from: c  reason: collision with root package name */
        private long f30418c;

        /* renamed from: d  reason: collision with root package name */
        private byte f30419d;

        @Override // t7.f0.e.d.a.b.AbstractC0327d.AbstractC0328a
        public f0.e.d.a.b.AbstractC0327d a() {
            String str;
            String str2;
            if (this.f30419d == 1 && (str = this.f30416a) != null && (str2 = this.f30417b) != null) {
                return new q(str, str2, this.f30418c);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30416a == null) {
                sb2.append(" name");
            }
            if (this.f30417b == null) {
                sb2.append(" code");
            }
            if ((1 & this.f30419d) == 0) {
                sb2.append(" address");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.b.AbstractC0327d.AbstractC0328a
        public f0.e.d.a.b.AbstractC0327d.AbstractC0328a b(long j10) {
            this.f30418c = j10;
            this.f30419d = (byte) (this.f30419d | 1);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0327d.AbstractC0328a
        public f0.e.d.a.b.AbstractC0327d.AbstractC0328a c(String str) {
            if (str != null) {
                this.f30417b = str;
                return this;
            }
            throw new NullPointerException("Null code");
        }

        @Override // t7.f0.e.d.a.b.AbstractC0327d.AbstractC0328a
        public f0.e.d.a.b.AbstractC0327d.AbstractC0328a d(String str) {
            if (str != null) {
                this.f30416a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // t7.f0.e.d.a.b.AbstractC0327d
    public long b() {
        return this.f30415c;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0327d
    public String c() {
        return this.f30414b;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0327d
    public String d() {
        return this.f30413a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0327d)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0327d abstractC0327d = (f0.e.d.a.b.AbstractC0327d) obj;
        if (this.f30413a.equals(abstractC0327d.d()) && this.f30414b.equals(abstractC0327d.c()) && this.f30415c == abstractC0327d.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f30415c;
        return ((((this.f30413a.hashCode() ^ 1000003) * 1000003) ^ this.f30414b.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f30413a + ", code=" + this.f30414b + ", address=" + this.f30415c + "}";
    }

    private q(String str, String str2, long j10) {
        this.f30413a = str;
        this.f30414b = str2;
        this.f30415c = j10;
    }
}
