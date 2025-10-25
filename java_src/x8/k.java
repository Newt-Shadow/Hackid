package x8;
/* loaded from: classes.dex */
public final class k implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32586a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f32587b;

    public k(wc.a aVar, wc.a aVar2) {
        this.f32586a = aVar;
        this.f32587b = aVar2;
    }

    public static k a(wc.a aVar, wc.a aVar2) {
        return new k(aVar, aVar2);
    }

    public static j c(o oVar, o oVar2) {
        return new j(oVar, oVar2);
    }

    @Override // wc.a
    /* renamed from: b */
    public j get() {
        return c((o) this.f32586a.get(), (o) this.f32587b.get());
    }
}
