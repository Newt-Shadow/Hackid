package com.google.crypto.tink.shaded.protobuf;
/* loaded from: classes.dex */
public abstract class p1 {

    /* renamed from: a  reason: collision with root package name */
    static final int f8543a = c(1, 3);

    /* renamed from: b  reason: collision with root package name */
    static final int f8544b = c(1, 4);

    /* renamed from: c  reason: collision with root package name */
    static final int f8545c = c(2, 0);

    /* renamed from: d  reason: collision with root package name */
    static final int f8546d = c(3, 2);

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
        public static final b f8547c;

        /* renamed from: d  reason: collision with root package name */
        public static final b f8548d;

        /* renamed from: e  reason: collision with root package name */
        public static final b f8549e;

        /* renamed from: f  reason: collision with root package name */
        public static final b f8550f;

        /* renamed from: g  reason: collision with root package name */
        public static final b f8551g;

        /* renamed from: h  reason: collision with root package name */
        public static final b f8552h;

        /* renamed from: i  reason: collision with root package name */
        public static final b f8553i;

        /* renamed from: j  reason: collision with root package name */
        public static final b f8554j;

        /* renamed from: k  reason: collision with root package name */
        public static final b f8555k;

        /* renamed from: l  reason: collision with root package name */
        public static final b f8556l;

        /* renamed from: m  reason: collision with root package name */
        public static final b f8557m;

        /* renamed from: n  reason: collision with root package name */
        public static final b f8558n;

        /* renamed from: o  reason: collision with root package name */
        public static final b f8559o;

        /* renamed from: p  reason: collision with root package name */
        public static final b f8560p;

        /* renamed from: q  reason: collision with root package name */
        public static final b f8561q;

        /* renamed from: r  reason: collision with root package name */
        public static final b f8562r;

        /* renamed from: s  reason: collision with root package name */
        public static final b f8563s;

        /* renamed from: t  reason: collision with root package name */
        public static final b f8564t;

        /* renamed from: u  reason: collision with root package name */
        private static final /* synthetic */ b[] f8565u;

        /* renamed from: a  reason: collision with root package name */
        private final c f8566a;

        /* renamed from: b  reason: collision with root package name */
        private final int f8567b;

        /* loaded from: classes.dex */
        enum a extends b {
            a(String str, int i10, c cVar, int i11) {
                super(str, i10, cVar, i11);
            }
        }

        /* renamed from: com.google.crypto.tink.shaded.protobuf.p1$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        enum C0105b extends b {
            C0105b(String str, int i10, c cVar, int i11) {
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
            f8547c = bVar;
            b bVar2 = new b("FLOAT", 1, c.FLOAT, 5);
            f8548d = bVar2;
            c cVar = c.LONG;
            b bVar3 = new b("INT64", 2, cVar, 0);
            f8549e = bVar3;
            b bVar4 = new b("UINT64", 3, cVar, 0);
            f8550f = bVar4;
            c cVar2 = c.INT;
            b bVar5 = new b("INT32", 4, cVar2, 0);
            f8551g = bVar5;
            b bVar6 = new b("FIXED64", 5, cVar, 1);
            f8552h = bVar6;
            b bVar7 = new b("FIXED32", 6, cVar2, 5);
            f8553i = bVar7;
            b bVar8 = new b("BOOL", 7, c.BOOLEAN, 0);
            f8554j = bVar8;
            a aVar = new a("STRING", 8, c.STRING, 2);
            f8555k = aVar;
            c cVar3 = c.MESSAGE;
            C0105b c0105b = new C0105b("GROUP", 9, cVar3, 3);
            f8556l = c0105b;
            c cVar4 = new c("MESSAGE", 10, cVar3, 2);
            f8557m = cVar4;
            d dVar = new d("BYTES", 11, c.BYTE_STRING, 2);
            f8558n = dVar;
            b bVar9 = new b("UINT32", 12, cVar2, 0);
            f8559o = bVar9;
            b bVar10 = new b("ENUM", 13, c.ENUM, 0);
            f8560p = bVar10;
            b bVar11 = new b("SFIXED32", 14, cVar2, 5);
            f8561q = bVar11;
            b bVar12 = new b("SFIXED64", 15, cVar, 1);
            f8562r = bVar12;
            b bVar13 = new b("SINT32", 16, cVar2, 0);
            f8563s = bVar13;
            b bVar14 = new b("SINT64", 17, cVar, 0);
            f8564t = bVar14;
            f8565u = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, aVar, c0105b, cVar4, dVar, bVar9, bVar10, bVar11, bVar12, bVar13, bVar14};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f8565u.clone();
        }

        private b(String str, int i10, c cVar, int i11) {
            this.f8566a = cVar;
            this.f8567b = i11;
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
        BYTE_STRING(h.f8444b),
        ENUM(null),
        MESSAGE(null);
        

        /* renamed from: a  reason: collision with root package name */
        private final Object f8578a;

        c(Object obj) {
            this.f8578a = obj;
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
