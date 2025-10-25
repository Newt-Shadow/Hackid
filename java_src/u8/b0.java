package u8;

import android.content.Context;
/* loaded from: classes.dex */
public final class b0 implements w8.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f30845a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f30846b;

    public b0(wc.a aVar, wc.a aVar2) {
        this.f30845a = aVar;
        this.f30846b = aVar2;
    }

    public static b0 a(wc.a aVar, wc.a aVar2) {
        return new b0(aVar, aVar2);
    }

    public static a0 c(Context context, y0 y0Var) {
        return new a0(context, y0Var);
    }

    @Override // wc.a
    /* renamed from: b */
    public a0 get() {
        return c((Context) this.f30845a.get(), (y0) this.f30846b.get());
    }
}
