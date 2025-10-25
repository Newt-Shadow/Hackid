package t7;

import t7.f0;
/* loaded from: classes.dex */
final class i extends f0.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f30324a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30325b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30326c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30327d;

    /* renamed from: e  reason: collision with root package name */
    private final String f30328e;

    /* renamed from: f  reason: collision with root package name */
    private final String f30329f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.a.AbstractC0321a {

        /* renamed from: a  reason: collision with root package name */
        private String f30330a;

        /* renamed from: b  reason: collision with root package name */
        private String f30331b;

        /* renamed from: c  reason: collision with root package name */
        private String f30332c;

        /* renamed from: d  reason: collision with root package name */
        private String f30333d;

        /* renamed from: e  reason: collision with root package name */
        private String f30334e;

        /* renamed from: f  reason: collision with root package name */
        private String f30335f;

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a a() {
            String str;
            String str2 = this.f30330a;
            if (str2 != null && (str = this.f30331b) != null) {
                return new i(str2, str, this.f30332c, null, this.f30333d, this.f30334e, this.f30335f);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30330a == null) {
                sb2.append(" identifier");
            }
            if (this.f30331b == null) {
                sb2.append(" version");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a.AbstractC0321a b(String str) {
            this.f30334e = str;
            return this;
        }

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a.AbstractC0321a c(String str) {
            this.f30335f = str;
            return this;
        }

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a.AbstractC0321a d(String str) {
            this.f30332c = str;
            return this;
        }

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a.AbstractC0321a e(String str) {
            if (str != null) {
                this.f30330a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a.AbstractC0321a f(String str) {
            this.f30333d = str;
            return this;
        }

        @Override // t7.f0.e.a.AbstractC0321a
        public f0.e.a.AbstractC0321a g(String str) {
            if (str != null) {
                this.f30331b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    @Override // t7.f0.e.a
    public String b() {
        return this.f30328e;
    }

    @Override // t7.f0.e.a
    public String c() {
        return this.f30329f;
    }

    @Override // t7.f0.e.a
    public String d() {
        return this.f30326c;
    }

    @Override // t7.f0.e.a
    public String e() {
        return this.f30324a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.a)) {
            return false;
        }
        f0.e.a aVar = (f0.e.a) obj;
        if (this.f30324a.equals(aVar.e()) && this.f30325b.equals(aVar.h()) && ((str = this.f30326c) != null ? str.equals(aVar.d()) : aVar.d() == null)) {
            aVar.g();
            String str2 = this.f30327d;
            if (str2 != null ? str2.equals(aVar.f()) : aVar.f() == null) {
                String str3 = this.f30328e;
                if (str3 != null ? str3.equals(aVar.b()) : aVar.b() == null) {
                    String str4 = this.f30329f;
                    if (str4 == null) {
                        if (aVar.c() == null) {
                            return true;
                        }
                    } else if (str4.equals(aVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // t7.f0.e.a
    public String f() {
        return this.f30327d;
    }

    @Override // t7.f0.e.a
    public f0.e.a.b g() {
        return null;
    }

    @Override // t7.f0.e.a
    public String h() {
        return this.f30325b;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = (((this.f30324a.hashCode() ^ 1000003) * 1000003) ^ this.f30325b.hashCode()) * 1000003;
        String str = this.f30326c;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (((hashCode4 ^ hashCode) * 1000003) ^ 0) * 1000003;
        String str2 = this.f30327d;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str3 = this.f30328e;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 ^ hashCode3) * 1000003;
        String str4 = this.f30329f;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return i13 ^ i10;
    }

    public String toString() {
        return "Application{identifier=" + this.f30324a + ", version=" + this.f30325b + ", displayVersion=" + this.f30326c + ", organization=" + ((Object) null) + ", installationUuid=" + this.f30327d + ", developmentPlatform=" + this.f30328e + ", developmentPlatformVersion=" + this.f30329f + "}";
    }

    private i(String str, String str2, String str3, f0.e.a.b bVar, String str4, String str5, String str6) {
        this.f30324a = str;
        this.f30325b = str2;
        this.f30326c = str3;
        this.f30327d = str4;
        this.f30328e = str5;
        this.f30329f = str6;
    }
}
