package u8;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class j implements f8.f {

    /* renamed from: b  reason: collision with root package name */
    public static final j f30919b = new j("EVENT_TYPE_UNKNOWN", 0, 0);

    /* renamed from: c  reason: collision with root package name */
    public static final j f30920c = new j("SESSION_START", 1, 1);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ j[] f30921d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f30922e;

    /* renamed from: a  reason: collision with root package name */
    private final int f30923a;

    static {
        j[] a10 = a();
        f30921d = a10;
        f30922e = cd.b.a(a10);
    }

    private j(String str, int i10, int i11) {
        this.f30923a = i11;
    }

    private static final /* synthetic */ j[] a() {
        return new j[]{f30919b, f30920c};
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f30921d.clone();
    }

    @Override // f8.f
    public int c() {
        return this.f30923a;
    }
}
