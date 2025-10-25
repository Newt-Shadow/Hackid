package qf;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f28797a = new h("RELEASE", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final h f28798b = new h("LOOP", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final h f28799c = new h("STOP", 2);

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ h[] f28800d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ cd.a f28801e;

    static {
        h[] a10 = a();
        f28800d = a10;
        f28801e = cd.b.a(a10);
    }

    private h(String str, int i10) {
    }

    private static final /* synthetic */ h[] a() {
        return new h[]{f28797a, f28798b, f28799c};
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f28800d.clone();
    }
}
