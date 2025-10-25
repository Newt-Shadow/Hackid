package p2;
/* loaded from: classes.dex */
public final class w implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f27788a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f27789b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f27790c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f27791d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f27792e;

    public w(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        this.f27788a = aVar;
        this.f27789b = aVar2;
        this.f27790c = aVar3;
        this.f27791d = aVar4;
        this.f27792e = aVar5;
    }

    public static w a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        return new w(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static u c(z2.a aVar, z2.a aVar2, v2.e eVar, w2.r rVar, w2.v vVar) {
        return new u(aVar, aVar2, eVar, rVar, vVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public u get() {
        return c((z2.a) this.f27788a.get(), (z2.a) this.f27789b.get(), (v2.e) this.f27790c.get(), (w2.r) this.f27791d.get(), (w2.v) this.f27792e.get());
    }
}
