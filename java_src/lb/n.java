package lb;
/* loaded from: classes.dex */
public final class n implements i {

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25462a;

    public n(eb.d config) {
        kotlin.jvm.internal.m.e(config, "config");
        this.f25462a = config;
    }

    @Override // lb.i
    public void a(String message) {
        kotlin.jvm.internal.m.e(message, "message");
        if (b()) {
            System.out.println((Object) message);
        }
    }

    public boolean b() {
        return this.f25462a.g();
    }
}
