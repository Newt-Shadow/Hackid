package qf;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f28793a = new g("MEDIA_PLAYER", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final g f28794b = new g("LOW_LATENCY", 1);

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ g[] f28795c;

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ cd.a f28796d;

    static {
        g[] a10 = a();
        f28795c = a10;
        f28796d = cd.b.a(a10);
    }

    private g(String str, int i10) {
    }

    private static final /* synthetic */ g[] a() {
        return new g[]{f28793a, f28794b};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f28795c.clone();
    }
}
