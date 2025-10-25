package vd;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f31354a = new a("SUSPEND", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final a f31355b = new a("DROP_OLDEST", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final a f31356c = new a("DROP_LATEST", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ a[] f31357d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f31358e;

    static {
        a[] a10 = a();
        f31357d = a10;
        f31358e = cd.b.a(a10);
    }

    private a(String str, int i10) {
    }

    private static final /* synthetic */ a[] a() {
        return new a[]{f31354a, f31355b, f31356c};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f31357d.clone();
    }
}
