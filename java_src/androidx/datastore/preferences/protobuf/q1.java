package androidx.datastore.preferences.protobuf;
/* loaded from: classes.dex */
public abstract class q1 {

    /* renamed from: a  reason: collision with root package name */
    static final int f2261a = c(1, 3);

    /* renamed from: b  reason: collision with root package name */
    static final int f2262b = c(1, 4);

    /* renamed from: c  reason: collision with root package name */
    static final int f2263c = c(2, 0);

    /* renamed from: d  reason: collision with root package name */
    static final int f2264d = c(3, 2);

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum e uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        public static final b f2265c;

        /* renamed from: d  reason: collision with root package name */
        public static final b f2266d;

        /* renamed from: e  reason: collision with root package name */
        public static final b f2267e;

        /* renamed from: f  reason: collision with root package name */
        public static final b f2268f;

        /* renamed from: g  reason: collision with root package name */
        public static final b f2269g;

        /* renamed from: h  reason: collision with root package name */
        public static final b f2270h;

        /* renamed from: i  reason: collision with root package name */
        public static final b f2271i;

        /* renamed from: j  reason: collision with root package name */
        public static final b f2272j;

        /* renamed from: k  reason: collision with root package name */
        public static final b f2273k;

        /* renamed from: l  reason: collision with root package name */
        public static final b f2274l;

        /* renamed from: m  reason: collision with root package name */
        public static final b f2275m;

        /* renamed from: n  reason: collision with root package name */
        public static final b f2276n;

        /* renamed from: o  reason: collision with root package name */
        public static final b f2277o;

        /* renamed from: p  reason: collision with root package name */
        public static final b f2278p;

        /* renamed from: q  reason: collision with root package name */
        public static final b f2279q;

        /* renamed from: r  reason: collision with root package name */
        public static final b f2280r;

        /* renamed from: s  reason: collision with root package name */
        public static final b f2281s;

        /* renamed from: t  reason: collision with root package name */
        public static final b f2282t;

        /* renamed from: u  reason: collision with root package name */
        private static final /* synthetic */ b[] f2283u;

        /* renamed from: a  reason: collision with root package name */
        private final c f2284a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2285b;

        /* loaded from: classes.dex */
        enum a extends b {
            a(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* renamed from: androidx.datastore.preferences.protobuf.q1$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        enum C0035b extends b {
            C0035b(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* loaded from: classes.dex */
        enum c extends b {
            c(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* loaded from: classes.dex */
        enum d extends b {
            d(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        static {
            b bVar = new b("DOUBLE", 0, c.DOUBLE, 1);
            f2265c = bVar;
            b bVar2 = new b("FLOAT", 1, c.FLOAT, 5);
            f2266d = bVar2;
            c cVar = c.LONG;
            b bVar3 = new b("INT64", 2, cVar, 0);
            f2267e = bVar3;
            b bVar4 = new b("UINT64", 3, cVar, 0);
            f2268f = bVar4;
            c cVar2 = c.INT;
            b bVar5 = new b("INT32", 4, cVar2, 0);
            f2269g = bVar5;
            b bVar6 = new b("FIXED64", 5, cVar, 1);
            f2270h = bVar6;
            b bVar7 = new b("FIXED32", 6, cVar2, 5);
            f2271i = bVar7;
            b bVar8 = new b("BOOL", 7, c.BOOLEAN, 0);
            f2272j = bVar8;
            a aVar = new a("STRING", 8, c.STRING, 2);
            f2273k = aVar;
            c cVar3 = c.MESSAGE;
            C0035b c0035b = new C0035b("GROUP", 9, cVar3, 3);
            f2274l = c0035b;
            c cVar4 = new c("MESSAGE", 10, cVar3, 2);
            f2275m = cVar4;
            d dVar = new d("BYTES", 11, c.BYTE_STRING, 2);
            f2276n = dVar;
            b bVar9 = new b("UINT32", 12, cVar2, 0);
            f2277o = bVar9;
            b bVar10 = new b("ENUM", 13, c.ENUM, 0);
            f2278p = bVar10;
            b bVar11 = new b("SFIXED32", 14, cVar2, 5);
            f2279q = bVar11;
            b bVar12 = new b("SFIXED64", 15, cVar, 1);
            f2280r = bVar12;
            b bVar13 = new b("SINT32", 16, cVar2, 0);
            f2281s = bVar13;
            b bVar14 = new b("SINT64", 17, cVar, 0);
            f2282t = bVar14;
            f2283u = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, aVar, c0035b, cVar4, dVar, bVar9, bVar10, bVar11, bVar12, bVar13, bVar14};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f2283u.clone();
        }

        public c a() {
            return this.f2284a;
        }

        public int b() {
            return this.f2285b;
        }

        private b(String str, int i10, c cVar, int i11) {
            this.f2284a = cVar;
            this.f2285b = i11;
        }
    }

    /* loaded from: classes.dex */
    public enum c {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(g.f2136b),
        ENUM(null),
        MESSAGE(null);
        

        /* renamed from: a  reason: collision with root package name */
        private final Object f2296a;

        c(Object obj) {
            this.f2296a = obj;
        }
    }

    public static int a(int i10) {
        return i10 >>> 3;
    }

    public static int b(int i10) {
        return i10 & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i10, int i11) {
        return (i10 << 3) | i11;
    }
}
