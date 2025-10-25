package x8;

import u8.w0;
/* loaded from: classes.dex */
public final class g implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32566a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f32567b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f32568c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f32569d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f32570e;

    public g(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        this.f32566a = aVar;
        this.f32567b = aVar2;
        this.f32568c = aVar3;
        this.f32569d = aVar4;
        this.f32570e = aVar5;
    }

    public static g a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        return new g(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static d c(w0 w0Var, l8.e eVar, u8.b bVar, a aVar, l lVar) {
        return new d(w0Var, eVar, bVar, aVar, lVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public d get() {
        return c((w0) this.f32566a.get(), (l8.e) this.f32567b.get(), (u8.b) this.f32568c.get(), (a) this.f32569d.get(), (l) this.f32570e.get());
    }
}
