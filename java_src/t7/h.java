package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class h extends f0.e {

    /* renamed from: a  reason: collision with root package name */
    private final String f30299a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30300b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30301c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30302d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f30303e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f30304f;

    /* renamed from: g  reason: collision with root package name */
    private final f0.e.a f30305g;

    /* renamed from: h  reason: collision with root package name */
    private final f0.e.f f30306h;

    /* renamed from: i  reason: collision with root package name */
    private final f0.e.AbstractC0336e f30307i;

    /* renamed from: j  reason: collision with root package name */
    private final f0.e.c f30308j;

    /* renamed from: k  reason: collision with root package name */
    private final List f30309k;

    /* renamed from: l  reason: collision with root package name */
    private final int f30310l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.b {

        /* renamed from: a  reason: collision with root package name */
        private String f30311a;

        /* renamed from: b  reason: collision with root package name */
        private String f30312b;

        /* renamed from: c  reason: collision with root package name */
        private String f30313c;

        /* renamed from: d  reason: collision with root package name */
        private long f30314d;

        /* renamed from: e  reason: collision with root package name */
        private Long f30315e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f30316f;

        /* renamed from: g  reason: collision with root package name */
        private f0.e.a f30317g;

        /* renamed from: h  reason: collision with root package name */
        private f0.e.f f30318h;

        /* renamed from: i  reason: collision with root package name */
        private f0.e.AbstractC0336e f30319i;

        /* renamed from: j  reason: collision with root package name */
        private f0.e.c f30320j;

        /* renamed from: k  reason: collision with root package name */
        private List f30321k;

        /* renamed from: l  reason: collision with root package name */
        private int f30322l;

        /* renamed from: m  reason: collision with root package name */
        private byte f30323m;

        @Override // t7.f0.e.b
        public f0.e a() {
            String str;
            String str2;
            f0.e.a aVar;
            if (this.f30323m == 7 && (str = this.f30311a) != null && (str2 = this.f30312b) != null && (aVar = this.f30317g) != null) {
                return new h(str, str2, this.f30313c, this.f30314d, this.f30315e, this.f30316f, aVar, this.f30318h, this.f30319i, this.f30320j, this.f30321k, this.f30322l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30311a == null) {
                sb2.append(" generator");
            }
            if (this.f30312b == null) {
                sb2.append(" identifier");
            }
            if ((this.f30323m & 1) == 0) {
                sb2.append(" startedAt");
            }
            if ((this.f30323m & 2) == 0) {
                sb2.append(" crashed");
            }
            if (this.f30317g == null) {
                sb2.append(" app");
            }
            if ((this.f30323m & 4) == 0) {
                sb2.append(" generatorType");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.b
        public f0.e.b b(f0.e.a aVar) {
            if (aVar != null) {
                this.f30317g = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // t7.f0.e.b
        public f0.e.b c(String str) {
            this.f30313c = str;
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b d(boolean z10) {
            this.f30316f = z10;
            this.f30323m = (byte) (this.f30323m | 2);
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b e(f0.e.c cVar) {
            this.f30320j = cVar;
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b f(Long l10) {
            this.f30315e = l10;
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b g(List list) {
            this.f30321k = list;
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b h(String str) {
            if (str != null) {
                this.f30311a = str;
                return this;
            }
            throw new NullPointerException("Null generator");
        }

        @Override // t7.f0.e.b
        public f0.e.b i(int i10) {
            this.f30322l = i10;
            this.f30323m = (byte) (this.f30323m | 4);
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b j(String str) {
            if (str != null) {
                this.f30312b = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // t7.f0.e.b
        public f0.e.b l(f0.e.AbstractC0336e abstractC0336e) {
            this.f30319i = abstractC0336e;
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b m(long j10) {
            this.f30314d = j10;
            this.f30323m = (byte) (this.f30323m | 1);
            return this;
        }

        @Override // t7.f0.e.b
        public f0.e.b n(f0.e.f fVar) {
            this.f30318h = fVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(f0.e eVar) {
            this.f30311a = eVar.g();
            this.f30312b = eVar.i();
            this.f30313c = eVar.c();
            this.f30314d = eVar.l();
            this.f30315e = eVar.e();
            this.f30316f = eVar.n();
            this.f30317g = eVar.b();
            this.f30318h = eVar.m();
            this.f30319i = eVar.k();
            this.f30320j = eVar.d();
            this.f30321k = eVar.f();
            this.f30322l = eVar.h();
            this.f30323m = (byte) 7;
        }
    }

    @Override // t7.f0.e
    public f0.e.a b() {
        return this.f30305g;
    }

    @Override // t7.f0.e
    public String c() {
        return this.f30301c;
    }

    @Override // t7.f0.e
    public f0.e.c d() {
        return this.f30308j;
    }

    @Override // t7.f0.e
    public Long e() {
        return this.f30303e;
    }

    public boolean equals(Object obj) {
        String str;
        Long l10;
        f0.e.f fVar;
        f0.e.AbstractC0336e abstractC0336e;
        f0.e.c cVar;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e)) {
            return false;
        }
        f0.e eVar = (f0.e) obj;
        if (this.f30299a.equals(eVar.g()) && this.f30300b.equals(eVar.i()) && ((str = this.f30301c) != null ? str.equals(eVar.c()) : eVar.c() == null) && this.f30302d == eVar.l() && ((l10 = this.f30303e) != null ? l10.equals(eVar.e()) : eVar.e() == null) && this.f30304f == eVar.n() && this.f30305g.equals(eVar.b()) && ((fVar = this.f30306h) != null ? fVar.equals(eVar.m()) : eVar.m() == null) && ((abstractC0336e = this.f30307i) != null ? abstractC0336e.equals(eVar.k()) : eVar.k() == null) && ((cVar = this.f30308j) != null ? cVar.equals(eVar.d()) : eVar.d() == null) && ((list = this.f30309k) != null ? list.equals(eVar.f()) : eVar.f() == null) && this.f30310l == eVar.h()) {
            return true;
        }
        return false;
    }

    @Override // t7.f0.e
    public List f() {
        return this.f30309k;
    }

    @Override // t7.f0.e
    public String g() {
        return this.f30299a;
    }

    @Override // t7.f0.e
    public int h() {
        return this.f30310l;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int i10;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = (((this.f30299a.hashCode() ^ 1000003) * 1000003) ^ this.f30300b.hashCode()) * 1000003;
        String str = this.f30301c;
        int i11 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j10 = this.f30302d;
        int i12 = (((hashCode6 ^ hashCode) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        Long l10 = this.f30303e;
        if (l10 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = l10.hashCode();
        }
        int i13 = (i12 ^ hashCode2) * 1000003;
        if (this.f30304f) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        int hashCode7 = (((i13 ^ i10) * 1000003) ^ this.f30305g.hashCode()) * 1000003;
        f0.e.f fVar = this.f30306h;
        if (fVar == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = fVar.hashCode();
        }
        int i14 = (hashCode7 ^ hashCode3) * 1000003;
        f0.e.AbstractC0336e abstractC0336e = this.f30307i;
        if (abstractC0336e == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = abstractC0336e.hashCode();
        }
        int i15 = (i14 ^ hashCode4) * 1000003;
        f0.e.c cVar = this.f30308j;
        if (cVar == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = cVar.hashCode();
        }
        int i16 = (i15 ^ hashCode5) * 1000003;
        List list = this.f30309k;
        if (list != null) {
            i11 = list.hashCode();
        }
        return ((i16 ^ i11) * 1000003) ^ this.f30310l;
    }

    @Override // t7.f0.e
    public String i() {
        return this.f30300b;
    }

    @Override // t7.f0.e
    public f0.e.AbstractC0336e k() {
        return this.f30307i;
    }

    @Override // t7.f0.e
    public long l() {
        return this.f30302d;
    }

    @Override // t7.f0.e
    public f0.e.f m() {
        return this.f30306h;
    }

    @Override // t7.f0.e
    public boolean n() {
        return this.f30304f;
    }

    @Override // t7.f0.e
    public f0.e.b o() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f30299a + ", identifier=" + this.f30300b + ", appQualitySessionId=" + this.f30301c + ", startedAt=" + this.f30302d + ", endedAt=" + this.f30303e + ", crashed=" + this.f30304f + ", app=" + this.f30305g + ", user=" + this.f30306h + ", os=" + this.f30307i + ", device=" + this.f30308j + ", events=" + this.f30309k + ", generatorType=" + this.f30310l + "}";
    }

    private h(String str, String str2, String str3, long j10, Long l10, boolean z10, f0.e.a aVar, f0.e.f fVar, f0.e.AbstractC0336e abstractC0336e, f0.e.c cVar, List list, int i10) {
        this.f30299a = str;
        this.f30300b = str2;
        this.f30301c = str3;
        this.f30302d = j10;
        this.f30303e = l10;
        this.f30304f = z10;
        this.f30305g = aVar;
        this.f30306h = fVar;
        this.f30307i = abstractC0336e;
        this.f30308j = cVar;
        this.f30309k = list;
        this.f30310l = i10;
    }
}
