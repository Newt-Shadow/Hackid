package t7;

import t7.f0;
/* loaded from: classes.dex */
final class l extends f0.e.d {

    /* renamed from: a  reason: collision with root package name */
    private final long f30355a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30356b;

    /* renamed from: c  reason: collision with root package name */
    private final f0.e.d.a f30357c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.d.c f30358d;

    /* renamed from: e  reason: collision with root package name */
    private final f0.e.d.AbstractC0334d f30359e;

    /* renamed from: f  reason: collision with root package name */
    private final f0.e.d.f f30360f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.b {

        /* renamed from: a  reason: collision with root package name */
        private long f30361a;

        /* renamed from: b  reason: collision with root package name */
        private String f30362b;

        /* renamed from: c  reason: collision with root package name */
        private f0.e.d.a f30363c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.d.c f30364d;

        /* renamed from: e  reason: collision with root package name */
        private f0.e.d.AbstractC0334d f30365e;

        /* renamed from: f  reason: collision with root package name */
        private f0.e.d.f f30366f;

        /* renamed from: g  reason: collision with root package name */
        private byte f30367g;

        @Override // t7.f0.e.d.b
        public f0.e.d a() {
            String str;
            f0.e.d.a aVar;
            f0.e.d.c cVar;
            if (this.f30367g == 1 && (str = this.f30362b) != null && (aVar = this.f30363c) != null && (cVar = this.f30364d) != null) {
                return new l(this.f30361a, str, aVar, cVar, this.f30365e, this.f30366f);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((1 & this.f30367g) == 0) {
                sb2.append(" timestamp");
            }
            if (this.f30362b == null) {
                sb2.append(" type");
            }
            if (this.f30363c == null) {
                sb2.append(" app");
            }
            if (this.f30364d == null) {
                sb2.append(" device");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.b
        public f0.e.d.b b(f0.e.d.a aVar) {
            if (aVar != null) {
                this.f30363c = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // t7.f0.e.d.b
        public f0.e.d.b c(f0.e.d.c cVar) {
            if (cVar != null) {
                this.f30364d = cVar;
                return this;
            }
            throw new NullPointerException("Null device");
        }

        @Override // t7.f0.e.d.b
        public f0.e.d.b d(f0.e.d.AbstractC0334d abstractC0334d) {
            this.f30365e = abstractC0334d;
            return this;
        }

        @Override // t7.f0.e.d.b
        public f0.e.d.b e(f0.e.d.f fVar) {
            this.f30366f = fVar;
            return this;
        }

        @Override // t7.f0.e.d.b
        public f0.e.d.b f(long j10) {
            this.f30361a = j10;
            this.f30367g = (byte) (this.f30367g | 1);
            return this;
        }

        @Override // t7.f0.e.d.b
        public f0.e.d.b g(String str) {
            if (str != null) {
                this.f30362b = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(f0.e.d dVar) {
            this.f30361a = dVar.f();
            this.f30362b = dVar.g();
            this.f30363c = dVar.b();
            this.f30364d = dVar.c();
            this.f30365e = dVar.d();
            this.f30366f = dVar.e();
            this.f30367g = (byte) 1;
        }
    }

    @Override // t7.f0.e.d
    public f0.e.d.a b() {
        return this.f30357c;
    }

    @Override // t7.f0.e.d
    public f0.e.d.c c() {
        return this.f30358d;
    }

    @Override // t7.f0.e.d
    public f0.e.d.AbstractC0334d d() {
        return this.f30359e;
    }

    @Override // t7.f0.e.d
    public f0.e.d.f e() {
        return this.f30360f;
    }

    public boolean equals(Object obj) {
        f0.e.d.AbstractC0334d abstractC0334d;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d)) {
            return false;
        }
        f0.e.d dVar = (f0.e.d) obj;
        if (this.f30355a == dVar.f() && this.f30356b.equals(dVar.g()) && this.f30357c.equals(dVar.b()) && this.f30358d.equals(dVar.c()) && ((abstractC0334d = this.f30359e) != null ? abstractC0334d.equals(dVar.d()) : dVar.d() == null)) {
            f0.e.d.f fVar = this.f30360f;
            if (fVar == null) {
                if (dVar.e() == null) {
                    return true;
                }
            } else if (fVar.equals(dVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // t7.f0.e.d
    public long f() {
        return this.f30355a;
    }

    @Override // t7.f0.e.d
    public String g() {
        return this.f30356b;
    }

    @Override // t7.f0.e.d
    public f0.e.d.b h() {
        return new b(this);
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f30355a;
        int hashCode2 = (((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f30356b.hashCode()) * 1000003) ^ this.f30357c.hashCode()) * 1000003) ^ this.f30358d.hashCode()) * 1000003;
        f0.e.d.AbstractC0334d abstractC0334d = this.f30359e;
        int i10 = 0;
        if (abstractC0334d == null) {
            hashCode = 0;
        } else {
            hashCode = abstractC0334d.hashCode();
        }
        int i11 = (hashCode2 ^ hashCode) * 1000003;
        f0.e.d.f fVar = this.f30360f;
        if (fVar != null) {
            i10 = fVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "Event{timestamp=" + this.f30355a + ", type=" + this.f30356b + ", app=" + this.f30357c + ", device=" + this.f30358d + ", log=" + this.f30359e + ", rollouts=" + this.f30360f + "}";
    }

    private l(long j10, String str, f0.e.d.a aVar, f0.e.d.c cVar, f0.e.d.AbstractC0334d abstractC0334d, f0.e.d.f fVar) {
        this.f30355a = j10;
        this.f30356b = str;
        this.f30357c = aVar;
        this.f30358d = cVar;
        this.f30359e = abstractC0334d;
        this.f30360f = fVar;
    }
}
