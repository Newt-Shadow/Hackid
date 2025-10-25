package w2;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class s implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f31706a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f31707b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f31708c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f31709d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f31710e;

    /* renamed from: f  reason: collision with root package name */
    private final wc.a f31711f;

    /* renamed from: g  reason: collision with root package name */
    private final wc.a f31712g;

    /* renamed from: h  reason: collision with root package name */
    private final wc.a f31713h;

    /* renamed from: i  reason: collision with root package name */
    private final wc.a f31714i;

    public s(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5, wc.a aVar6, wc.a aVar7, wc.a aVar8, wc.a aVar9) {
        this.f31706a = aVar;
        this.f31707b = aVar2;
        this.f31708c = aVar3;
        this.f31709d = aVar4;
        this.f31710e = aVar5;
        this.f31711f = aVar6;
        this.f31712g = aVar7;
        this.f31713h = aVar8;
        this.f31714i = aVar9;
    }

    public static s a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5, wc.a aVar6, wc.a aVar7, wc.a aVar8, wc.a aVar9) {
        return new s(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static r c(Context context, q2.e eVar, x2.d dVar, x xVar, Executor executor, y2.b bVar, z2.a aVar, z2.a aVar2, x2.c cVar) {
        return new r(context, eVar, dVar, xVar, executor, bVar, aVar, aVar2, cVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public r get() {
        return c((Context) this.f31706a.get(), (q2.e) this.f31707b.get(), (x2.d) this.f31708c.get(), (x) this.f31709d.get(), (Executor) this.f31710e.get(), (y2.b) this.f31711f.get(), (z2.a) this.f31712g.get(), (z2.a) this.f31713h.get(), (x2.c) this.f31714i.get());
    }
}
