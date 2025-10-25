package td;
/* loaded from: classes2.dex */
public final class o2 {

    /* renamed from: a  reason: collision with root package name */
    public static final o2 f30679a = new o2();

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal f30680b = yd.n0.a(new yd.f0("ThreadLocalEventLoop"));

    private o2() {
    }

    public final d1 a() {
        return (d1) f30680b.get();
    }

    public final d1 b() {
        ThreadLocal threadLocal = f30680b;
        d1 d1Var = (d1) threadLocal.get();
        if (d1Var == null) {
            d1 a10 = g1.a();
            threadLocal.set(a10);
            return a10;
        }
        return d1Var;
    }

    public final void c() {
        f30680b.set(null);
    }

    public final void d(d1 d1Var) {
        f30680b.set(d1Var);
    }
}
