package com.google.android.gms.internal.measurement;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum c uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class rb {

    /* renamed from: b  reason: collision with root package name */
    public static final rb f6745b;

    /* renamed from: c  reason: collision with root package name */
    public static final rb f6746c;

    /* renamed from: d  reason: collision with root package name */
    public static final rb f6747d;

    /* renamed from: e  reason: collision with root package name */
    public static final rb f6748e;

    /* renamed from: f  reason: collision with root package name */
    public static final rb f6749f;

    /* renamed from: g  reason: collision with root package name */
    public static final rb f6750g;

    /* renamed from: h  reason: collision with root package name */
    public static final rb f6751h;

    /* renamed from: i  reason: collision with root package name */
    public static final rb f6752i;

    /* renamed from: j  reason: collision with root package name */
    public static final rb f6753j;

    /* renamed from: k  reason: collision with root package name */
    public static final rb f6754k;

    /* renamed from: l  reason: collision with root package name */
    private static final /* synthetic */ rb[] f6755l;

    /* renamed from: a  reason: collision with root package name */
    private final Class f6756a;

    static {
        rb rbVar = new rb("VOID", 0, Void.class, Void.class, null);
        f6745b = rbVar;
        Class cls = Integer.TYPE;
        rb rbVar2 = new rb("INT", 1, cls, Integer.class, 0);
        f6746c = rbVar2;
        rb rbVar3 = new rb("LONG", 2, Long.TYPE, Long.class, 0L);
        f6747d = rbVar3;
        rb rbVar4 = new rb("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f6748e = rbVar4;
        rb rbVar5 = new rb("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f6749f = rbVar5;
        rb rbVar6 = new rb("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f6750g = rbVar6;
        rb rbVar7 = new rb("STRING", 6, String.class, String.class, "");
        f6751h = rbVar7;
        rb rbVar8 = new rb("BYTE_STRING", 7, ka.class, ka.class, ka.f6472b);
        f6752i = rbVar8;
        rb rbVar9 = new rb("ENUM", 8, cls, Integer.class, null);
        f6753j = rbVar9;
        rb rbVar10 = new rb("MESSAGE", 9, Object.class, Object.class, null);
        f6754k = rbVar10;
        f6755l = new rb[]{rbVar, rbVar2, rbVar3, rbVar4, rbVar5, rbVar6, rbVar7, rbVar8, rbVar9, rbVar10};
    }

    private rb(String str, int i10, Class cls, Class cls2, Object obj) {
        this.f6756a = cls2;
    }

    public static rb[] values() {
        return (rb[]) f6755l.clone();
    }

    public final Class a() {
        return this.f6756a;
    }
}
