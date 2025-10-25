package x2;
/* loaded from: classes.dex */
public final class n0 implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32219a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f32220b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f32221c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f32222d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f32223e;

    public n0(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        this.f32219a = aVar;
        this.f32220b = aVar2;
        this.f32221c = aVar3;
        this.f32222d = aVar4;
        this.f32223e = aVar5;
    }

    public static n0 a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        return new n0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 c(z2.a aVar, z2.a aVar2, Object obj, Object obj2, wc.a aVar3) {
        return new m0(aVar, aVar2, (e) obj, (v0) obj2, aVar3);
    }

    @Override // wc.a
    /* renamed from: b */
    public m0 get() {
        return c((z2.a) this.f32219a.get(), (z2.a) this.f32220b.get(), this.f32221c.get(), this.f32222d.get(), this.f32223e);
    }
}
