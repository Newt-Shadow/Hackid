package v2;

import android.content.Context;
import w2.x;
/* loaded from: classes.dex */
public final class i implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f31191a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f31192b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f31193c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f31194d;

    public i(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4) {
        this.f31191a = aVar;
        this.f31192b = aVar2;
        this.f31193c = aVar3;
        this.f31194d = aVar4;
    }

    public static i a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static x c(Context context, x2.d dVar, w2.f fVar, z2.a aVar) {
        return (x) r2.d.d(h.a(context, dVar, fVar, aVar));
    }

    @Override // wc.a
    /* renamed from: b */
    public x get() {
        return c((Context) this.f31191a.get(), (x2.d) this.f31192b.get(), (w2.f) this.f31193c.get(), (z2.a) this.f31194d.get());
    }
}
