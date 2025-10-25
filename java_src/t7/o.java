package t7;

import t7.f0;
/* loaded from: classes.dex */
final class o extends f0.e.d.a.b.AbstractC0323a {

    /* renamed from: a  reason: collision with root package name */
    private final long f30393a;

    /* renamed from: b  reason: collision with root package name */
    private final long f30394b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30395c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30396d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0323a.AbstractC0324a {

        /* renamed from: a  reason: collision with root package name */
        private long f30397a;

        /* renamed from: b  reason: collision with root package name */
        private long f30398b;

        /* renamed from: c  reason: collision with root package name */
        private String f30399c;

        /* renamed from: d  reason: collision with root package name */
        private String f30400d;

        /* renamed from: e  reason: collision with root package name */
        private byte f30401e;

        @Override // t7.f0.e.d.a.b.AbstractC0323a.AbstractC0324a
        public f0.e.d.a.b.AbstractC0323a a() {
            String str;
            if (this.f30401e == 3 && (str = this.f30399c) != null) {
                return new o(this.f30397a, this.f30398b, str, this.f30400d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30401e & 1) == 0) {
                sb2.append(" baseAddress");
            }
            if ((this.f30401e & 2) == 0) {
                sb2.append(" size");
            }
            if (this.f30399c == null) {
                sb2.append(" name");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.b.AbstractC0323a.AbstractC0324a
        public f0.e.d.a.b.AbstractC0323a.AbstractC0324a b(long j10) {
            this.f30397a = j10;
            this.f30401e = (byte) (this.f30401e | 1);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0323a.AbstractC0324a
        public f0.e.d.a.b.AbstractC0323a.AbstractC0324a c(String str) {
            if (str != null) {
                this.f30399c = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // t7.f0.e.d.a.b.AbstractC0323a.AbstractC0324a
        public f0.e.d.a.b.AbstractC0323a.AbstractC0324a d(long j10) {
            this.f30398b = j10;
            this.f30401e = (byte) (this.f30401e | 2);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0323a.AbstractC0324a
        public f0.e.d.a.b.AbstractC0323a.AbstractC0324a e(String str) {
            this.f30400d = str;
            return this;
        }
    }

    @Override // t7.f0.e.d.a.b.AbstractC0323a
    public long b() {
        return this.f30393a;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0323a
    public String c() {
        return this.f30395c;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0323a
    public long d() {
        return this.f30394b;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0323a
    public String e() {
        return this.f30396d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0323a)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0323a abstractC0323a = (f0.e.d.a.b.AbstractC0323a) obj;
        if (this.f30393a == abstractC0323a.b() && this.f30394b == abstractC0323a.d() && this.f30395c.equals(abstractC0323a.c())) {
            String str = this.f30396d;
            if (str == null) {
                if (abstractC0323a.e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0323a.e())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f30393a;
        long j11 = this.f30394b;
        int hashCode2 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f30395c.hashCode()) * 1000003;
        String str = this.f30396d;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f30393a + ", size=" + this.f30394b + ", name=" + this.f30395c + ", uuid=" + this.f30396d + "}";
    }

    private o(long j10, long j11, String str, String str2) {
        this.f30393a = j10;
        this.f30394b = j11;
        this.f30395c = str;
        this.f30396d = str2;
    }
}
