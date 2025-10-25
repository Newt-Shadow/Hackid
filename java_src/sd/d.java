package sd;

import java.util.concurrent.TimeUnit;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final d f29588b = new d("NANOSECONDS", 0, TimeUnit.NANOSECONDS);

    /* renamed from: c  reason: collision with root package name */
    public static final d f29589c = new d("MICROSECONDS", 1, TimeUnit.MICROSECONDS);

    /* renamed from: d  reason: collision with root package name */
    public static final d f29590d = new d("MILLISECONDS", 2, TimeUnit.MILLISECONDS);

    /* renamed from: e  reason: collision with root package name */
    public static final d f29591e = new d("SECONDS", 3, TimeUnit.SECONDS);

    /* renamed from: f  reason: collision with root package name */
    public static final d f29592f = new d("MINUTES", 4, TimeUnit.MINUTES);

    /* renamed from: g  reason: collision with root package name */
    public static final d f29593g = new d("HOURS", 5, TimeUnit.HOURS);

    /* renamed from: h  reason: collision with root package name */
    public static final d f29594h = new d("DAYS", 6, TimeUnit.DAYS);

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ d[] f29595i;

    /* renamed from: j  reason: collision with root package name */
    private static final /* synthetic */ cd.a f29596j;

    /* renamed from: a  reason: collision with root package name */
    private final TimeUnit f29597a;

    static {
        d[] a10 = a();
        f29595i = a10;
        f29596j = cd.b.a(a10);
    }

    private d(String str, int i10, TimeUnit timeUnit) {
        this.f29597a = timeUnit;
    }

    private static final /* synthetic */ d[] a() {
        return new d[]{f29588b, f29589c, f29590d, f29591e, f29592f, f29593g, f29594h};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f29595i.clone();
    }

    public final TimeUnit b() {
        return this.f29597a;
    }
}
