package t7;

import t7.f0;
/* loaded from: classes.dex */
final class s extends f0.e.d.a.b.AbstractC0329e.AbstractC0331b {

    /* renamed from: a  reason: collision with root package name */
    private final long f30427a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30428b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30429c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30430d;

    /* renamed from: e  reason: collision with root package name */
    private final int f30431e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a {

        /* renamed from: a  reason: collision with root package name */
        private long f30432a;

        /* renamed from: b  reason: collision with root package name */
        private String f30433b;

        /* renamed from: c  reason: collision with root package name */
        private String f30434c;

        /* renamed from: d  reason: collision with root package name */
        private long f30435d;

        /* renamed from: e  reason: collision with root package name */
        private int f30436e;

        /* renamed from: f  reason: collision with root package name */
        private byte f30437f;

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0331b a() {
            String str;
            if (this.f30437f == 7 && (str = this.f30433b) != null) {
                return new s(this.f30432a, str, this.f30434c, this.f30435d, this.f30436e);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30437f & 1) == 0) {
                sb2.append(" pc");
            }
            if (this.f30433b == null) {
                sb2.append(" symbol");
            }
            if ((this.f30437f & 2) == 0) {
                sb2.append(" offset");
            }
            if ((this.f30437f & 4) == 0) {
                sb2.append(" importance");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a b(String str) {
            this.f30434c = str;
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a c(int i10) {
            this.f30436e = i10;
            this.f30437f = (byte) (this.f30437f | 4);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a d(long j10) {
            this.f30435d = j10;
            this.f30437f = (byte) (this.f30437f | 2);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a e(long j10) {
            this.f30432a = j10;
            this.f30437f = (byte) (this.f30437f | 1);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0331b.AbstractC0332a f(String str) {
            if (str != null) {
                this.f30433b = str;
                return this;
            }
            throw new NullPointerException("Null symbol");
        }
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b
    public String b() {
        return this.f30429c;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b
    public int c() {
        return this.f30431e;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b
    public long d() {
        return this.f30430d;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b
    public long e() {
        return this.f30427a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0329e.AbstractC0331b)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0329e.AbstractC0331b abstractC0331b = (f0.e.d.a.b.AbstractC0329e.AbstractC0331b) obj;
        if (this.f30427a == abstractC0331b.e() && this.f30428b.equals(abstractC0331b.f()) && ((str = this.f30429c) != null ? str.equals(abstractC0331b.b()) : abstractC0331b.b() == null) && this.f30430d == abstractC0331b.d() && this.f30431e == abstractC0331b.c()) {
            return true;
        }
        return false;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0331b
    public String f() {
        return this.f30428b;
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f30427a;
        int hashCode2 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f30428b.hashCode()) * 1000003;
        String str = this.f30429c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j11 = this.f30430d;
        return ((((hashCode2 ^ hashCode) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f30431e;
    }

    public String toString() {
        return "Frame{pc=" + this.f30427a + ", symbol=" + this.f30428b + ", file=" + this.f30429c + ", offset=" + this.f30430d + ", importance=" + this.f30431e + "}";
    }

    private s(long j10, String str, String str2, long j11, int i10) {
        this.f30427a = j10;
        this.f30428b = str;
        this.f30429c = str2;
        this.f30430d = j11;
        this.f30431e = i10;
    }
}
