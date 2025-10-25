package m8;

import m8.c;
import m8.d;
/* loaded from: classes.dex */
final class a extends d {

    /* renamed from: b  reason: collision with root package name */
    private final String f25984b;

    /* renamed from: c  reason: collision with root package name */
    private final c.a f25985c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25986d;

    /* renamed from: e  reason: collision with root package name */
    private final String f25987e;

    /* renamed from: f  reason: collision with root package name */
    private final long f25988f;

    /* renamed from: g  reason: collision with root package name */
    private final long f25989g;

    /* renamed from: h  reason: collision with root package name */
    private final String f25990h;

    /* loaded from: classes.dex */
    static final class b extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f25991a;

        /* renamed from: b  reason: collision with root package name */
        private c.a f25992b;

        /* renamed from: c  reason: collision with root package name */
        private String f25993c;

        /* renamed from: d  reason: collision with root package name */
        private String f25994d;

        /* renamed from: e  reason: collision with root package name */
        private long f25995e;

        /* renamed from: f  reason: collision with root package name */
        private long f25996f;

        /* renamed from: g  reason: collision with root package name */
        private String f25997g;

        /* renamed from: h  reason: collision with root package name */
        private byte f25998h;

        @Override // m8.d.a
        public d a() {
            if (this.f25998h == 3 && this.f25992b != null) {
                return new a(this.f25991a, this.f25992b, this.f25993c, this.f25994d, this.f25995e, this.f25996f, this.f25997g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f25992b == null) {
                sb2.append(" registrationStatus");
            }
            if ((this.f25998h & 1) == 0) {
                sb2.append(" expiresInSecs");
            }
            if ((this.f25998h & 2) == 0) {
                sb2.append(" tokenCreationEpochInSecs");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // m8.d.a
        public d.a b(String str) {
            this.f25993c = str;
            return this;
        }

        @Override // m8.d.a
        public d.a c(long j10) {
            this.f25995e = j10;
            this.f25998h = (byte) (this.f25998h | 1);
            return this;
        }

        @Override // m8.d.a
        public d.a d(String str) {
            this.f25991a = str;
            return this;
        }

        @Override // m8.d.a
        public d.a e(String str) {
            this.f25997g = str;
            return this;
        }

        @Override // m8.d.a
        public d.a f(String str) {
            this.f25994d = str;
            return this;
        }

        @Override // m8.d.a
        public d.a g(c.a aVar) {
            if (aVar != null) {
                this.f25992b = aVar;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        @Override // m8.d.a
        public d.a h(long j10) {
            this.f25996f = j10;
            this.f25998h = (byte) (this.f25998h | 2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(d dVar) {
            this.f25991a = dVar.d();
            this.f25992b = dVar.g();
            this.f25993c = dVar.b();
            this.f25994d = dVar.f();
            this.f25995e = dVar.c();
            this.f25996f = dVar.h();
            this.f25997g = dVar.e();
            this.f25998h = (byte) 3;
        }
    }

    @Override // m8.d
    public String b() {
        return this.f25986d;
    }

    @Override // m8.d
    public long c() {
        return this.f25988f;
    }

    @Override // m8.d
    public String d() {
        return this.f25984b;
    }

    @Override // m8.d
    public String e() {
        return this.f25990h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str3 = this.f25984b;
        if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
            if (this.f25985c.equals(dVar.g()) && ((str = this.f25986d) != null ? str.equals(dVar.b()) : dVar.b() == null) && ((str2 = this.f25987e) != null ? str2.equals(dVar.f()) : dVar.f() == null) && this.f25988f == dVar.c() && this.f25989g == dVar.h()) {
                String str4 = this.f25990h;
                if (str4 == null) {
                    if (dVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(dVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // m8.d
    public String f() {
        return this.f25987e;
    }

    @Override // m8.d
    public c.a g() {
        return this.f25985c;
    }

    @Override // m8.d
    public long h() {
        return this.f25989g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String str = this.f25984b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode4 = (((hashCode ^ 1000003) * 1000003) ^ this.f25985c.hashCode()) * 1000003;
        String str2 = this.f25986d;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i11 = (hashCode4 ^ hashCode2) * 1000003;
        String str3 = this.f25987e;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        long j10 = this.f25988f;
        long j11 = this.f25989g;
        int i12 = (((((i11 ^ hashCode3) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f25990h;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return i12 ^ i10;
    }

    @Override // m8.d
    public d.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f25984b + ", registrationStatus=" + this.f25985c + ", authToken=" + this.f25986d + ", refreshToken=" + this.f25987e + ", expiresInSecs=" + this.f25988f + ", tokenCreationEpochInSecs=" + this.f25989g + ", fisError=" + this.f25990h + "}";
    }

    private a(String str, c.a aVar, String str2, String str3, long j10, long j11, String str4) {
        this.f25984b = str;
        this.f25985c = aVar;
        this.f25986d = str2;
        this.f25987e = str3;
        this.f25988f = j10;
        this.f25989g = j11;
        this.f25990h = str4;
    }
}
