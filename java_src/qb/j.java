package qb;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f28696a = new j("GRANTED", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final j f28697b = new j("DENIED", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final j f28698c = new j("PERMANENTLY_DENIED", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ j[] f28699d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f28700e;

    static {
        j[] a10 = a();
        f28699d = a10;
        f28700e = cd.b.a(a10);
    }

    private j(String str, int i10) {
    }

    private static final /* synthetic */ j[] a() {
        return new j[]{f28696a, f28697b, f28698c};
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f28699d.clone();
    }
}
