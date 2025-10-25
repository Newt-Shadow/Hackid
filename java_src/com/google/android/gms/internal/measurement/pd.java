package com.google.android.gms.internal.measurement;
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
public final class pd {

    /* renamed from: c  reason: collision with root package name */
    public static final pd f6670c;

    /* renamed from: d  reason: collision with root package name */
    public static final pd f6671d;

    /* renamed from: e  reason: collision with root package name */
    public static final pd f6672e;

    /* renamed from: f  reason: collision with root package name */
    public static final pd f6673f;

    /* renamed from: g  reason: collision with root package name */
    public static final pd f6674g;

    /* renamed from: h  reason: collision with root package name */
    public static final pd f6675h;

    /* renamed from: i  reason: collision with root package name */
    public static final pd f6676i;

    /* renamed from: j  reason: collision with root package name */
    public static final pd f6677j;

    /* renamed from: k  reason: collision with root package name */
    public static final pd f6678k;

    /* renamed from: l  reason: collision with root package name */
    public static final pd f6679l;

    /* renamed from: m  reason: collision with root package name */
    public static final pd f6680m;

    /* renamed from: n  reason: collision with root package name */
    public static final pd f6681n;

    /* renamed from: o  reason: collision with root package name */
    public static final pd f6682o;

    /* renamed from: p  reason: collision with root package name */
    public static final pd f6683p;

    /* renamed from: q  reason: collision with root package name */
    public static final pd f6684q;

    /* renamed from: r  reason: collision with root package name */
    public static final pd f6685r;

    /* renamed from: s  reason: collision with root package name */
    public static final pd f6686s;

    /* renamed from: t  reason: collision with root package name */
    public static final pd f6687t;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ pd[] f6688u;

    /* renamed from: a  reason: collision with root package name */
    private final qd f6689a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6690b;

    static {
        pd pdVar = new pd("DOUBLE", 0, qd.DOUBLE, 1);
        f6670c = pdVar;
        pd pdVar2 = new pd("FLOAT", 1, qd.FLOAT, 5);
        f6671d = pdVar2;
        qd qdVar = qd.LONG;
        pd pdVar3 = new pd("INT64", 2, qdVar, 0);
        f6672e = pdVar3;
        pd pdVar4 = new pd("UINT64", 3, qdVar, 0);
        f6673f = pdVar4;
        qd qdVar2 = qd.INT;
        pd pdVar5 = new pd("INT32", 4, qdVar2, 0);
        f6674g = pdVar5;
        pd pdVar6 = new pd("FIXED64", 5, qdVar, 1);
        f6675h = pdVar6;
        pd pdVar7 = new pd("FIXED32", 6, qdVar2, 5);
        f6676i = pdVar7;
        pd pdVar8 = new pd("BOOL", 7, qd.BOOLEAN, 0);
        f6677j = pdVar8;
        pd pdVar9 = new pd("STRING", 8, qd.STRING, 2);
        f6678k = pdVar9;
        qd qdVar3 = qd.MESSAGE;
        pd pdVar10 = new pd("GROUP", 9, qdVar3, 3);
        f6679l = pdVar10;
        pd pdVar11 = new pd("MESSAGE", 10, qdVar3, 2);
        f6680m = pdVar11;
        pd pdVar12 = new pd("BYTES", 11, qd.BYTE_STRING, 2);
        f6681n = pdVar12;
        pd pdVar13 = new pd("UINT32", 12, qdVar2, 0);
        f6682o = pdVar13;
        pd pdVar14 = new pd("ENUM", 13, qd.ENUM, 0);
        f6683p = pdVar14;
        pd pdVar15 = new pd("SFIXED32", 14, qdVar2, 5);
        f6684q = pdVar15;
        pd pdVar16 = new pd("SFIXED64", 15, qdVar, 1);
        f6685r = pdVar16;
        pd pdVar17 = new pd("SINT32", 16, qdVar2, 0);
        f6686s = pdVar17;
        pd pdVar18 = new pd("SINT64", 17, qdVar, 0);
        f6687t = pdVar18;
        f6688u = new pd[]{pdVar, pdVar2, pdVar3, pdVar4, pdVar5, pdVar6, pdVar7, pdVar8, pdVar9, pdVar10, pdVar11, pdVar12, pdVar13, pdVar14, pdVar15, pdVar16, pdVar17, pdVar18};
    }

    private pd(String str, int i10, qd qdVar, int i11) {
        this.f6689a = qdVar;
        this.f6690b = i11;
    }

    public static pd[] values() {
        return (pd[]) f6688u.clone();
    }

    public final qd a() {
        return this.f6689a;
    }

    public final int b() {
        return this.f6690b;
    }
}
