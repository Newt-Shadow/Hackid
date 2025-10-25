package bd;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4733a = new a("COROUTINE_SUSPENDED", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final a f4734b = new a("UNDECIDED", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final a f4735c = new a("RESUMED", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ a[] f4736d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f4737e;

    static {
        a[] a10 = a();
        f4736d = a10;
        f4737e = cd.b.a(a10);
    }

    private a(String str, int i10) {
    }

    private static final /* synthetic */ a[] a() {
        return new a[]{f4733a, f4734b, f4735c};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f4736d.clone();
    }
}
