package n5;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: b  reason: collision with root package name */
    private static r f26376b;

    /* renamed from: c  reason: collision with root package name */
    private static final s f26377c = new s(0, false, false, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    private s f26378a;

    private r() {
    }

    public static synchronized r b() {
        r rVar;
        synchronized (r.class) {
            if (f26376b == null) {
                f26376b = new r();
            }
            rVar = f26376b;
        }
        return rVar;
    }

    public s a() {
        return this.f26378a;
    }

    public final synchronized void c(s sVar) {
        if (sVar == null) {
            this.f26378a = f26377c;
            return;
        }
        s sVar2 = this.f26378a;
        if (sVar2 != null && sVar2.n() >= sVar.n()) {
            return;
        }
        this.f26378a = sVar;
    }
}
