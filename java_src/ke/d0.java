package ke;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: c  reason: collision with root package name */
    public static final d0 f24899c = new d0("OBJ", 0, '{', '}');

    /* renamed from: d  reason: collision with root package name */
    public static final d0 f24900d = new d0("LIST", 1, '[', ']');

    /* renamed from: e  reason: collision with root package name */
    public static final d0 f24901e = new d0("MAP", 2, '{', '}');

    /* renamed from: f  reason: collision with root package name */
    public static final d0 f24902f = new d0("POLY_OBJ", 3, '[', ']');

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ d0[] f24903g;

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ cd.a f24904h;

    /* renamed from: a  reason: collision with root package name */
    public final char f24905a;

    /* renamed from: b  reason: collision with root package name */
    public final char f24906b;

    static {
        d0[] a10 = a();
        f24903g = a10;
        f24904h = cd.b.a(a10);
    }

    private d0(String str, int i10, char c10, char c11) {
        this.f24905a = c10;
        this.f24906b = c11;
    }

    private static final /* synthetic */ d0[] a() {
        return new d0[]{f24899c, f24900d, f24901e, f24902f};
    }

    public static cd.a b() {
        return f24904h;
    }

    public static d0 valueOf(String str) {
        return (d0) Enum.valueOf(d0.class, str);
    }

    public static d0[] values() {
        return (d0[]) f24903g.clone();
    }
}
