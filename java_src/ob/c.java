package ob;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f27537a = new c("DEVELOPER", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final c f27538b = new c("SYSTEM", 1);

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ c[] f27539c;

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ cd.a f27540d;

    static {
        c[] a10 = a();
        f27539c = a10;
        f27540d = cd.b.a(a10);
    }

    private c(String str, int i10) {
    }

    private static final /* synthetic */ c[] a() {
        return new c[]{f27537a, f27538b};
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f27539c.clone();
    }
}
