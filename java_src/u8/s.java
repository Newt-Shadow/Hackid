package u8;
/* loaded from: classes.dex */
public final class s implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f30975a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f30976b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f30977c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f30978d;

    public s(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4) {
        this.f30975a = aVar;
        this.f30976b = aVar2;
        this.f30977c = aVar3;
        this.f30978d = aVar4;
    }

    public static s a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4) {
        return new s(aVar, aVar2, aVar3, aVar4);
    }

    public static l c(h7.f fVar, x8.j jVar, ad.i iVar, q0 q0Var) {
        return new l(fVar, jVar, iVar, q0Var);
    }

    @Override // wc.a
    /* renamed from: b */
    public l get() {
        return c((h7.f) this.f30975a.get(), (x8.j) this.f30976b.get(), (ad.i) this.f30977c.get(), (q0) this.f30978d.get());
    }
}
