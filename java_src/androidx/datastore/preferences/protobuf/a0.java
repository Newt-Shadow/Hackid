package androidx.datastore.preferences.protobuf;
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
public final class a0 {

    /* renamed from: d  reason: collision with root package name */
    public static final a0 f2103d;

    /* renamed from: e  reason: collision with root package name */
    public static final a0 f2104e;

    /* renamed from: f  reason: collision with root package name */
    public static final a0 f2105f;

    /* renamed from: g  reason: collision with root package name */
    public static final a0 f2106g;

    /* renamed from: h  reason: collision with root package name */
    public static final a0 f2107h;

    /* renamed from: i  reason: collision with root package name */
    public static final a0 f2108i;

    /* renamed from: j  reason: collision with root package name */
    public static final a0 f2109j;

    /* renamed from: k  reason: collision with root package name */
    public static final a0 f2110k;

    /* renamed from: l  reason: collision with root package name */
    public static final a0 f2111l;

    /* renamed from: m  reason: collision with root package name */
    public static final a0 f2112m;

    /* renamed from: n  reason: collision with root package name */
    private static final /* synthetic */ a0[] f2113n;

    /* renamed from: a  reason: collision with root package name */
    private final Class f2114a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f2115b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f2116c;

    static {
        a0 a0Var = new a0("VOID", 0, Void.class, Void.class, null);
        f2103d = a0Var;
        Class cls = Integer.TYPE;
        a0 a0Var2 = new a0("INT", 1, cls, Integer.class, 0);
        f2104e = a0Var2;
        a0 a0Var3 = new a0("LONG", 2, Long.TYPE, Long.class, 0L);
        f2105f = a0Var3;
        a0 a0Var4 = new a0("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f2106g = a0Var4;
        a0 a0Var5 = new a0("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f2107h = a0Var5;
        a0 a0Var6 = new a0("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f2108i = a0Var6;
        a0 a0Var7 = new a0("STRING", 6, String.class, String.class, "");
        f2109j = a0Var7;
        a0 a0Var8 = new a0("BYTE_STRING", 7, g.class, g.class, g.f2136b);
        f2110k = a0Var8;
        a0 a0Var9 = new a0("ENUM", 8, cls, Integer.class, null);
        f2111l = a0Var9;
        a0 a0Var10 = new a0("MESSAGE", 9, Object.class, Object.class, null);
        f2112m = a0Var10;
        f2113n = new a0[]{a0Var, a0Var2, a0Var3, a0Var4, a0Var5, a0Var6, a0Var7, a0Var8, a0Var9, a0Var10};
    }

    private a0(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f2114a = cls;
        this.f2115b = cls2;
        this.f2116c = obj;
    }

    public static a0 valueOf(String str) {
        return (a0) Enum.valueOf(a0.class, str);
    }

    public static a0[] values() {
        return (a0[]) f2113n.clone();
    }

    public Class a() {
        return this.f2115b;
    }
}
