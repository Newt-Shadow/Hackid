package u8;
/* loaded from: classes.dex */
public final class m0 implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f30954a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f30955b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f30956c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f30957d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f30958e;

    public m0(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        this.f30954a = aVar;
        this.f30955b = aVar2;
        this.f30956c = aVar3;
        this.f30957d = aVar4;
        this.f30958e = aVar5;
    }

    public static m0 a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        return new m0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static l0 c(h7.f fVar, l8.e eVar, x8.j jVar, h hVar, ad.i iVar) {
        return new l0(fVar, eVar, jVar, hVar, iVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public l0 get() {
        return c((h7.f) this.f30954a.get(), (l8.e) this.f30955b.get(), (x8.j) this.f30956c.get(), (h) this.f30957d.get(), (ad.i) this.f30958e.get());
    }
}
