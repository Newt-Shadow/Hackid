package com.google.crypto.tink.shaded.protobuf;
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
public final class b0 {

    /* renamed from: d  reason: collision with root package name */
    public static final b0 f8405d;

    /* renamed from: e  reason: collision with root package name */
    public static final b0 f8406e;

    /* renamed from: f  reason: collision with root package name */
    public static final b0 f8407f;

    /* renamed from: g  reason: collision with root package name */
    public static final b0 f8408g;

    /* renamed from: h  reason: collision with root package name */
    public static final b0 f8409h;

    /* renamed from: i  reason: collision with root package name */
    public static final b0 f8410i;

    /* renamed from: j  reason: collision with root package name */
    public static final b0 f8411j;

    /* renamed from: k  reason: collision with root package name */
    public static final b0 f8412k;

    /* renamed from: l  reason: collision with root package name */
    public static final b0 f8413l;

    /* renamed from: m  reason: collision with root package name */
    public static final b0 f8414m;

    /* renamed from: n  reason: collision with root package name */
    private static final /* synthetic */ b0[] f8415n;

    /* renamed from: a  reason: collision with root package name */
    private final Class f8416a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f8417b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f8418c;

    static {
        b0 b0Var = new b0("VOID", 0, Void.class, Void.class, null);
        f8405d = b0Var;
        Class cls = Integer.TYPE;
        b0 b0Var2 = new b0("INT", 1, cls, Integer.class, 0);
        f8406e = b0Var2;
        b0 b0Var3 = new b0("LONG", 2, Long.TYPE, Long.class, 0L);
        f8407f = b0Var3;
        b0 b0Var4 = new b0("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f8408g = b0Var4;
        b0 b0Var5 = new b0("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f8409h = b0Var5;
        b0 b0Var6 = new b0("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f8410i = b0Var6;
        b0 b0Var7 = new b0("STRING", 6, String.class, String.class, "");
        f8411j = b0Var7;
        b0 b0Var8 = new b0("BYTE_STRING", 7, h.class, h.class, h.f8444b);
        f8412k = b0Var8;
        b0 b0Var9 = new b0("ENUM", 8, cls, Integer.class, null);
        f8413l = b0Var9;
        b0 b0Var10 = new b0("MESSAGE", 9, Object.class, Object.class, null);
        f8414m = b0Var10;
        f8415n = new b0[]{b0Var, b0Var2, b0Var3, b0Var4, b0Var5, b0Var6, b0Var7, b0Var8, b0Var9, b0Var10};
    }

    private b0(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f8416a = cls;
        this.f8417b = cls2;
        this.f8418c = obj;
    }

    public static b0 valueOf(String str) {
        return (b0) Enum.valueOf(b0.class, str);
    }

    public static b0[] values() {
        return (b0[]) f8415n.clone();
    }

    public Class a() {
        return this.f8417b;
    }
}
