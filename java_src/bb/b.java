package bb;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f4727a = new b("INCLUDE_ITEM", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final b f4728b = new b("SKIP_ITEM", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final b f4729c = new b("CANCEL", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ b[] f4730d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f4731e;

    static {
        b[] a10 = a();
        f4730d = a10;
        f4731e = cd.b.a(a10);
    }

    private b(String str, int i10) {
    }

    private static final /* synthetic */ b[] a() {
        return new b[]{f4727a, f4728b, f4729c};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f4730d.clone();
    }
}
