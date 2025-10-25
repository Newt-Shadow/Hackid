package q8;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: p  reason: collision with root package name */
    private static final a f28578p = new C0289a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f28579a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28580b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28581c;

    /* renamed from: d  reason: collision with root package name */
    private final c f28582d;

    /* renamed from: e  reason: collision with root package name */
    private final d f28583e;

    /* renamed from: f  reason: collision with root package name */
    private final String f28584f;

    /* renamed from: g  reason: collision with root package name */
    private final String f28585g;

    /* renamed from: h  reason: collision with root package name */
    private final int f28586h;

    /* renamed from: i  reason: collision with root package name */
    private final int f28587i;

    /* renamed from: j  reason: collision with root package name */
    private final String f28588j;

    /* renamed from: k  reason: collision with root package name */
    private final long f28589k;

    /* renamed from: l  reason: collision with root package name */
    private final b f28590l;

    /* renamed from: m  reason: collision with root package name */
    private final String f28591m;

    /* renamed from: n  reason: collision with root package name */
    private final long f28592n;

    /* renamed from: o  reason: collision with root package name */
    private final String f28593o;

    /* renamed from: q8.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0289a {

        /* renamed from: a  reason: collision with root package name */
        private long f28594a = 0;

        /* renamed from: b  reason: collision with root package name */
        private String f28595b = "";

        /* renamed from: c  reason: collision with root package name */
        private String f28596c = "";

        /* renamed from: d  reason: collision with root package name */
        private c f28597d = c.UNKNOWN;

        /* renamed from: e  reason: collision with root package name */
        private d f28598e = d.UNKNOWN_OS;

        /* renamed from: f  reason: collision with root package name */
        private String f28599f = "";

        /* renamed from: g  reason: collision with root package name */
        private String f28600g = "";

        /* renamed from: h  reason: collision with root package name */
        private int f28601h = 0;

        /* renamed from: i  reason: collision with root package name */
        private int f28602i = 0;

        /* renamed from: j  reason: collision with root package name */
        private String f28603j = "";

        /* renamed from: k  reason: collision with root package name */
        private long f28604k = 0;

        /* renamed from: l  reason: collision with root package name */
        private b f28605l = b.UNKNOWN_EVENT;

        /* renamed from: m  reason: collision with root package name */
        private String f28606m = "";

        /* renamed from: n  reason: collision with root package name */
        private long f28607n = 0;

        /* renamed from: o  reason: collision with root package name */
        private String f28608o = "";

        C0289a() {
        }

        public a a() {
            return new a(this.f28594a, this.f28595b, this.f28596c, this.f28597d, this.f28598e, this.f28599f, this.f28600g, this.f28601h, this.f28602i, this.f28603j, this.f28604k, this.f28605l, this.f28606m, this.f28607n, this.f28608o);
        }

        public C0289a b(String str) {
            this.f28606m = str;
            return this;
        }

        public C0289a c(String str) {
            this.f28600g = str;
            return this;
        }

        public C0289a d(String str) {
            this.f28608o = str;
            return this;
        }

        public C0289a e(b bVar) {
            this.f28605l = bVar;
            return this;
        }

        public C0289a f(String str) {
            this.f28596c = str;
            return this;
        }

        public C0289a g(String str) {
            this.f28595b = str;
            return this;
        }

        public C0289a h(c cVar) {
            this.f28597d = cVar;
            return this;
        }

        public C0289a i(String str) {
            this.f28599f = str;
            return this;
        }

        public C0289a j(int i10) {
            this.f28601h = i10;
            return this;
        }

        public C0289a k(long j10) {
            this.f28594a = j10;
            return this;
        }

        public C0289a l(d dVar) {
            this.f28598e = dVar;
            return this;
        }

        public C0289a m(String str) {
            this.f28603j = str;
            return this;
        }

        public C0289a n(int i10) {
            this.f28602i = i10;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public enum b implements g8.c {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f28613a;

        b(int i10) {
            this.f28613a = i10;
        }

        @Override // g8.c
        public int c() {
            return this.f28613a;
        }
    }

    /* loaded from: classes.dex */
    public enum c implements g8.c {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f28619a;

        c(int i10) {
            this.f28619a = i10;
        }

        @Override // g8.c
        public int c() {
            return this.f28619a;
        }
    }

    /* loaded from: classes.dex */
    public enum d implements g8.c {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f28625a;

        d(int i10) {
            this.f28625a = i10;
        }

        @Override // g8.c
        public int c() {
            return this.f28625a;
        }
    }

    a(long j10, String str, String str2, c cVar, d dVar, String str3, String str4, int i10, int i11, String str5, long j11, b bVar, String str6, long j12, String str7) {
        this.f28579a = j10;
        this.f28580b = str;
        this.f28581c = str2;
        this.f28582d = cVar;
        this.f28583e = dVar;
        this.f28584f = str3;
        this.f28585g = str4;
        this.f28586h = i10;
        this.f28587i = i11;
        this.f28588j = str5;
        this.f28589k = j11;
        this.f28590l = bVar;
        this.f28591m = str6;
        this.f28592n = j12;
        this.f28593o = str7;
    }

    public static C0289a p() {
        return new C0289a();
    }

    public String a() {
        return this.f28591m;
    }

    public long b() {
        return this.f28589k;
    }

    public long c() {
        return this.f28592n;
    }

    public String d() {
        return this.f28585g;
    }

    public String e() {
        return this.f28593o;
    }

    public b f() {
        return this.f28590l;
    }

    public String g() {
        return this.f28581c;
    }

    public String h() {
        return this.f28580b;
    }

    public c i() {
        return this.f28582d;
    }

    public String j() {
        return this.f28584f;
    }

    public int k() {
        return this.f28586h;
    }

    public long l() {
        return this.f28579a;
    }

    public d m() {
        return this.f28583e;
    }

    public String n() {
        return this.f28588j;
    }

    public int o() {
        return this.f28587i;
    }
}
