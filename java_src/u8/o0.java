package u8;
/* loaded from: classes.dex */
public final class o0 implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f30962a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f30963b;

    public o0(wc.a aVar, wc.a aVar2) {
        this.f30962a = aVar;
        this.f30963b = aVar2;
    }

    public static o0 a(wc.a aVar, wc.a aVar2) {
        return new o0(aVar, aVar2);
    }

    public static n0 c(w0 w0Var, y0 y0Var) {
        return new n0(w0Var, y0Var);
    }

    @Override // wc.a
    /* renamed from: b */
    public n0 get() {
        return c((w0) this.f30962a.get(), (y0) this.f30963b.get());
    }
}
