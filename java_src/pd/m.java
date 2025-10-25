package pd;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f27918a = new m("PUBLIC", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final m f27919b = new m("PROTECTED", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final m f27920c = new m("INTERNAL", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final m f27921d = new m("PRIVATE", 3);

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ m[] f27922e;

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ cd.a f27923f;

    static {
        m[] a10 = a();
        f27922e = a10;
        f27923f = cd.b.a(a10);
    }

    private m(String str, int i10) {
    }

    private static final /* synthetic */ m[] a() {
        return new m[]{f27918a, f27919b, f27920c, f27921d};
    }

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) f27922e.clone();
    }
}
