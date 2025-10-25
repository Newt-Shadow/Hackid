package com.google.gson;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a  reason: collision with root package name */
    public static final r f9352a;

    /* renamed from: b  reason: collision with root package name */
    public static final r f9353b;

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ r[] f9354c;

    /* loaded from: classes.dex */
    enum a extends r {
        a(String str, int i10) {
            super(str, i10, null);
        }
    }

    static {
        a aVar = new a("DEFAULT", 0);
        f9352a = aVar;
        r rVar = new r("STRING", 1) { // from class: com.google.gson.r.b
        };
        f9353b = rVar;
        f9354c = new r[]{aVar, rVar};
    }

    private r(String str, int i10) {
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) f9354c.clone();
    }

    /* synthetic */ r(String str, int i10, a aVar) {
        this(str, i10);
    }
}
