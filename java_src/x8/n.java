package x8;

import u8.w0;
/* loaded from: classes.dex */
public final class n implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32602a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f32603b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f32604c;

    public n(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        this.f32602a = aVar;
        this.f32603b = aVar2;
        this.f32604c = aVar3;
    }

    public static n a(wc.a aVar, wc.a aVar2, wc.a aVar3) {
        return new n(aVar, aVar2, aVar3);
    }

    public static m c(ad.i iVar, w0 w0Var, j0.i iVar2) {
        return new m(iVar, w0Var, iVar2);
    }

    @Override // wc.a
    /* renamed from: b */
    public m get() {
        return c((ad.i) this.f32602a.get(), (w0) this.f32603b.get(), (j0.i) this.f32604c.get());
    }
}
