package u8;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class u implements f8.f {

    /* renamed from: b  reason: collision with root package name */
    public static final u f31027b = new u("LOG_ENVIRONMENT_UNKNOWN", 0, 0);

    /* renamed from: c  reason: collision with root package name */
    public static final u f31028c = new u("LOG_ENVIRONMENT_AUTOPUSH", 1, 1);

    /* renamed from: d  reason: collision with root package name */
    public static final u f31029d = new u("LOG_ENVIRONMENT_STAGING", 2, 2);

    /* renamed from: e  reason: collision with root package name */
    public static final u f31030e = new u("LOG_ENVIRONMENT_PROD", 3, 3);

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ u[] f31031f;

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ cd.a f31032g;

    /* renamed from: a  reason: collision with root package name */
    private final int f31033a;

    static {
        u[] a10 = a();
        f31031f = a10;
        f31032g = cd.b.a(a10);
    }

    private u(String str, int i10, int i11) {
        this.f31033a = i11;
    }

    private static final /* synthetic */ u[] a() {
        return new u[]{f31027b, f31028c, f31029d, f31030e};
    }

    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    public static u[] values() {
        return (u[]) f31031f.clone();
    }

    @Override // f8.f
    public int c() {
        return this.f31033a;
    }
}
