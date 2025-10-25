package x8;
/* loaded from: classes.dex */
public final class f implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f32564a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f32565b;

    public f(wc.a aVar, wc.a aVar2) {
        this.f32564a = aVar;
        this.f32565b = aVar2;
    }

    public static f a(wc.a aVar, wc.a aVar2) {
        return new f(aVar, aVar2);
    }

    public static e c(u8.b bVar, ad.i iVar) {
        return new e(bVar, iVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public e get() {
        return c((u8.b) this.f32564a.get(), (ad.i) this.f32565b.get());
    }
}
