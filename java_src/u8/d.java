package u8;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class d implements f8.f {

    /* renamed from: b  reason: collision with root package name */
    public static final d f30887b = new d("COLLECTION_UNKNOWN", 0, 0);

    /* renamed from: c  reason: collision with root package name */
    public static final d f30888c = new d("COLLECTION_SDK_NOT_INSTALLED", 1, 1);

    /* renamed from: d  reason: collision with root package name */
    public static final d f30889d = new d("COLLECTION_ENABLED", 2, 2);

    /* renamed from: e  reason: collision with root package name */
    public static final d f30890e = new d("COLLECTION_DISABLED", 3, 3);

    /* renamed from: f  reason: collision with root package name */
    public static final d f30891f = new d("COLLECTION_DISABLED_REMOTE", 4, 4);

    /* renamed from: g  reason: collision with root package name */
    public static final d f30892g = new d("COLLECTION_SAMPLED", 5, 5);

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ d[] f30893h;

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ cd.a f30894i;

    /* renamed from: a  reason: collision with root package name */
    private final int f30895a;

    static {
        d[] a10 = a();
        f30893h = a10;
        f30894i = cd.b.a(a10);
    }

    private d(String str, int i10, int i11) {
        this.f30895a = i11;
    }

    private static final /* synthetic */ d[] a() {
        return new d[]{f30887b, f30888c, f30889d, f30890e, f30891f, f30892g};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f30893h.clone();
    }

    @Override // f8.f
    public int c() {
        return this.f30895a;
    }
}
