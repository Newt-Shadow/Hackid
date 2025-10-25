package xc;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f32711a = new h("SYNCHRONIZED", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final h f32712b = new h("PUBLICATION", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final h f32713c = new h("NONE", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ h[] f32714d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f32715e;

    static {
        h[] a10 = a();
        f32714d = a10;
        f32715e = cd.b.a(a10);
    }

    private h(String str, int i10) {
    }

    private static final /* synthetic */ h[] a() {
        return new h[]{f32711a, f32712b, f32713c};
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f32714d.clone();
    }
}
