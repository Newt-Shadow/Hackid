package t7;

import t7.f0;
/* loaded from: classes.dex */
final class b extends f0 {

    /* renamed from: b  reason: collision with root package name */
    private final String f30215b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30216c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30217d;

    /* renamed from: e  reason: collision with root package name */
    private final String f30218e;

    /* renamed from: f  reason: collision with root package name */
    private final String f30219f;

    /* renamed from: g  reason: collision with root package name */
    private final String f30220g;

    /* renamed from: h  reason: collision with root package name */
    private final String f30221h;

    /* renamed from: i  reason: collision with root package name */
    private final String f30222i;

    /* renamed from: j  reason: collision with root package name */
    private final String f30223j;

    /* renamed from: k  reason: collision with root package name */
    private final f0.e f30224k;

    /* renamed from: l  reason: collision with root package name */
    private final f0.d f30225l;

    /* renamed from: m  reason: collision with root package name */
    private final f0.a f30226m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t7.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0318b extends f0.b {

        /* renamed from: a  reason: collision with root package name */
        private String f30227a;

        /* renamed from: b  reason: collision with root package name */
        private String f30228b;

        /* renamed from: c  reason: collision with root package name */
        private int f30229c;

        /* renamed from: d  reason: collision with root package name */
        private String f30230d;

        /* renamed from: e  reason: collision with root package name */
        private String f30231e;

        /* renamed from: f  reason: collision with root package name */
        private String f30232f;

        /* renamed from: g  reason: collision with root package name */
        private String f30233g;

        /* renamed from: h  reason: collision with root package name */
        private String f30234h;

        /* renamed from: i  reason: collision with root package name */
        private String f30235i;

        /* renamed from: j  reason: collision with root package name */
        private f0.e f30236j;

        /* renamed from: k  reason: collision with root package name */
        private f0.d f30237k;

        /* renamed from: l  reason: collision with root package name */
        private f0.a f30238l;

        /* renamed from: m  reason: collision with root package name */
        private byte f30239m;

        @Override // t7.f0.b
        public f0 a() {
            if (this.f30239m == 1 && this.f30227a != null && this.f30228b != null && this.f30230d != null && this.f30234h != null && this.f30235i != null) {
                return new b(this.f30227a, this.f30228b, this.f30229c, this.f30230d, this.f30231e, this.f30232f, this.f30233g, this.f30234h, this.f30235i, this.f30236j, this.f30237k, this.f30238l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30227a == null) {
                sb2.append(" sdkVersion");
            }
            if (this.f30228b == null) {
                sb2.append(" gmpAppId");
            }
            if ((1 & this.f30239m) == 0) {
                sb2.append(" platform");
            }
            if (this.f30230d == null) {
                sb2.append(" installationUuid");
            }
            if (this.f30234h == null) {
                sb2.append(" buildVersion");
            }
            if (this.f30235i == null) {
                sb2.append(" displayVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.b
        public f0.b b(f0.a aVar) {
            this.f30238l = aVar;
            return this;
        }

        @Override // t7.f0.b
        public f0.b c(String str) {
            this.f30233g = str;
            return this;
        }

        @Override // t7.f0.b
        public f0.b d(String str) {
            if (str != null) {
                this.f30234h = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // t7.f0.b
        public f0.b e(String str) {
            if (str != null) {
                this.f30235i = str;
                return this;
            }
            throw new NullPointerException("Null displayVersion");
        }

        @Override // t7.f0.b
        public f0.b f(String str) {
            this.f30232f = str;
            return this;
        }

        @Override // t7.f0.b
        public f0.b g(String str) {
            this.f30231e = str;
            return this;
        }

        @Override // t7.f0.b
        public f0.b h(String str) {
            if (str != null) {
                this.f30228b = str;
                return this;
            }
            throw new NullPointerException("Null gmpAppId");
        }

        @Override // t7.f0.b
        public f0.b i(String str) {
            if (str != null) {
                this.f30230d = str;
                return this;
            }
            throw new NullPointerException("Null installationUuid");
        }

        @Override // t7.f0.b
        public f0.b j(f0.d dVar) {
            this.f30237k = dVar;
            return this;
        }

        @Override // t7.f0.b
        public f0.b k(int i10) {
            this.f30229c = i10;
            this.f30239m = (byte) (this.f30239m | 1);
            return this;
        }

        @Override // t7.f0.b
        public f0.b l(String str) {
            if (str != null) {
                this.f30227a = str;
                return this;
            }
            throw new NullPointerException("Null sdkVersion");
        }

        @Override // t7.f0.b
        public f0.b m(f0.e eVar) {
            this.f30236j = eVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0318b() {
        }

        private C0318b(f0 f0Var) {
            this.f30227a = f0Var.m();
            this.f30228b = f0Var.i();
            this.f30229c = f0Var.l();
            this.f30230d = f0Var.j();
            this.f30231e = f0Var.h();
            this.f30232f = f0Var.g();
            this.f30233g = f0Var.d();
            this.f30234h = f0Var.e();
            this.f30235i = f0Var.f();
            this.f30236j = f0Var.n();
            this.f30237k = f0Var.k();
            this.f30238l = f0Var.c();
            this.f30239m = (byte) 1;
        }
    }

    @Override // t7.f0
    public f0.a c() {
        return this.f30226m;
    }

    @Override // t7.f0
    public String d() {
        return this.f30221h;
    }

    @Override // t7.f0
    public String e() {
        return this.f30222i;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        f0.e eVar;
        f0.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.f30215b.equals(f0Var.m()) && this.f30216c.equals(f0Var.i()) && this.f30217d == f0Var.l() && this.f30218e.equals(f0Var.j()) && ((str = this.f30219f) != null ? str.equals(f0Var.h()) : f0Var.h() == null) && ((str2 = this.f30220g) != null ? str2.equals(f0Var.g()) : f0Var.g() == null) && ((str3 = this.f30221h) != null ? str3.equals(f0Var.d()) : f0Var.d() == null) && this.f30222i.equals(f0Var.e()) && this.f30223j.equals(f0Var.f()) && ((eVar = this.f30224k) != null ? eVar.equals(f0Var.n()) : f0Var.n() == null) && ((dVar = this.f30225l) != null ? dVar.equals(f0Var.k()) : f0Var.k() == null)) {
            f0.a aVar = this.f30226m;
            if (aVar == null) {
                if (f0Var.c() == null) {
                    return true;
                }
            } else if (aVar.equals(f0Var.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // t7.f0
    public String f() {
        return this.f30223j;
    }

    @Override // t7.f0
    public String g() {
        return this.f30220g;
    }

    @Override // t7.f0
    public String h() {
        return this.f30219f;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = (((((((this.f30215b.hashCode() ^ 1000003) * 1000003) ^ this.f30216c.hashCode()) * 1000003) ^ this.f30217d) * 1000003) ^ this.f30218e.hashCode()) * 1000003;
        String str = this.f30219f;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode6 ^ hashCode) * 1000003;
        String str2 = this.f30220g;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str3 = this.f30221h;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int hashCode7 = (((((i12 ^ hashCode3) * 1000003) ^ this.f30222i.hashCode()) * 1000003) ^ this.f30223j.hashCode()) * 1000003;
        f0.e eVar = this.f30224k;
        if (eVar == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = eVar.hashCode();
        }
        int i13 = (hashCode7 ^ hashCode4) * 1000003;
        f0.d dVar = this.f30225l;
        if (dVar == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = dVar.hashCode();
        }
        int i14 = (i13 ^ hashCode5) * 1000003;
        f0.a aVar = this.f30226m;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return i14 ^ i10;
    }

    @Override // t7.f0
    public String i() {
        return this.f30216c;
    }

    @Override // t7.f0
    public String j() {
        return this.f30218e;
    }

    @Override // t7.f0
    public f0.d k() {
        return this.f30225l;
    }

    @Override // t7.f0
    public int l() {
        return this.f30217d;
    }

    @Override // t7.f0
    public String m() {
        return this.f30215b;
    }

    @Override // t7.f0
    public f0.e n() {
        return this.f30224k;
    }

    @Override // t7.f0
    protected f0.b o() {
        return new C0318b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f30215b + ", gmpAppId=" + this.f30216c + ", platform=" + this.f30217d + ", installationUuid=" + this.f30218e + ", firebaseInstallationId=" + this.f30219f + ", firebaseAuthenticationToken=" + this.f30220g + ", appQualitySessionId=" + this.f30221h + ", buildVersion=" + this.f30222i + ", displayVersion=" + this.f30223j + ", session=" + this.f30224k + ", ndkPayload=" + this.f30225l + ", appExitInfo=" + this.f30226m + "}";
    }

    private b(String str, String str2, int i10, String str3, String str4, String str5, String str6, String str7, String str8, f0.e eVar, f0.d dVar, f0.a aVar) {
        this.f30215b = str;
        this.f30216c = str2;
        this.f30217d = i10;
        this.f30218e = str3;
        this.f30219f = str4;
        this.f30220g = str5;
        this.f30221h = str6;
        this.f30222i = str7;
        this.f30223j = str8;
        this.f30224k = eVar;
        this.f30225l = dVar;
        this.f30226m = aVar;
    }
}
