package je;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f24595a = new a("NONE", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final a f24596b = new a("ALL_JSON_OBJECTS", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final a f24597c = new a("POLYMORPHIC", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ a[] f24598d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f24599e;

    static {
        a[] a10 = a();
        f24598d = a10;
        f24599e = cd.b.a(a10);
    }

    private a(String str, int i10) {
    }

    private static final /* synthetic */ a[] a() {
        return new a[]{f24595a, f24596b, f24597c};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f24598d.clone();
    }
}
