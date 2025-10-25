package com.google.android.gms.internal.play_billing;
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
public final class m2 {

    /* renamed from: d  reason: collision with root package name */
    public static final m2 f7059d;

    /* renamed from: e  reason: collision with root package name */
    public static final m2 f7060e;

    /* renamed from: f  reason: collision with root package name */
    public static final m2 f7061f;

    /* renamed from: g  reason: collision with root package name */
    public static final m2 f7062g;

    /* renamed from: h  reason: collision with root package name */
    public static final m2 f7063h;

    /* renamed from: i  reason: collision with root package name */
    public static final m2 f7064i;

    /* renamed from: j  reason: collision with root package name */
    public static final m2 f7065j;

    /* renamed from: k  reason: collision with root package name */
    public static final m2 f7066k;

    /* renamed from: l  reason: collision with root package name */
    public static final m2 f7067l;

    /* renamed from: m  reason: collision with root package name */
    public static final m2 f7068m;

    /* renamed from: n  reason: collision with root package name */
    private static final /* synthetic */ m2[] f7069n;

    /* renamed from: a  reason: collision with root package name */
    private final Class f7070a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f7071b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f7072c;

    static {
        m2 m2Var = new m2("VOID", 0, Void.class, Void.class, null);
        f7059d = m2Var;
        Class cls = Integer.TYPE;
        m2 m2Var2 = new m2("INT", 1, cls, Integer.class, 0);
        f7060e = m2Var2;
        m2 m2Var3 = new m2("LONG", 2, Long.TYPE, Long.class, 0L);
        f7061f = m2Var3;
        m2 m2Var4 = new m2("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f7062g = m2Var4;
        m2 m2Var5 = new m2("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f7063h = m2Var5;
        m2 m2Var6 = new m2("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f7064i = m2Var6;
        m2 m2Var7 = new m2("STRING", 6, String.class, String.class, "");
        f7065j = m2Var7;
        m2 m2Var8 = new m2("BYTE_STRING", 7, e1.class, e1.class, e1.f6973b);
        f7066k = m2Var8;
        m2 m2Var9 = new m2("ENUM", 8, cls, Integer.class, null);
        f7067l = m2Var9;
        m2 m2Var10 = new m2("MESSAGE", 9, Object.class, Object.class, null);
        f7068m = m2Var10;
        f7069n = new m2[]{m2Var, m2Var2, m2Var3, m2Var4, m2Var5, m2Var6, m2Var7, m2Var8, m2Var9, m2Var10};
    }

    private m2(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f7070a = cls;
        this.f7071b = cls2;
        this.f7072c = obj;
    }

    public static m2[] values() {
        return (m2[]) f7069n.clone();
    }

    public final Class a() {
        return this.f7071b;
    }
}
