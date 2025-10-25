package w2;

import java.util.Set;
import w2.f;
/* loaded from: classes.dex */
final class c extends f.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f31655a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31656b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f31657c;

    /* loaded from: classes.dex */
    static final class b extends f.b.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f31658a;

        /* renamed from: b  reason: collision with root package name */
        private Long f31659b;

        /* renamed from: c  reason: collision with root package name */
        private Set f31660c;

        @Override // w2.f.b.a
        public f.b a() {
            String str = "";
            if (this.f31658a == null) {
                str = " delta";
            }
            if (this.f31659b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f31660c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new c(this.f31658a.longValue(), this.f31659b.longValue(), this.f31660c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // w2.f.b.a
        public f.b.a b(long j10) {
            this.f31658a = Long.valueOf(j10);
            return this;
        }

        @Override // w2.f.b.a
        public f.b.a c(Set set) {
            if (set != null) {
                this.f31660c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // w2.f.b.a
        public f.b.a d(long j10) {
            this.f31659b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // w2.f.b
    long b() {
        return this.f31655a;
    }

    @Override // w2.f.b
    Set c() {
        return this.f31657c;
    }

    @Override // w2.f.b
    long d() {
        return this.f31656b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f.b)) {
            return false;
        }
        f.b bVar = (f.b) obj;
        if (this.f31655a == bVar.b() && this.f31656b == bVar.d() && this.f31657c.equals(bVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f31655a;
        long j11 = this.f31656b;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f31657c.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f31655a + ", maxAllowedDelay=" + this.f31656b + ", flags=" + this.f31657c + "}";
    }

    private c(long j10, long j11, Set set) {
        this.f31655a = j10;
        this.f31656b = j11;
        this.f31657c = set;
    }
}
