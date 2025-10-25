package v2;

import java.util.concurrent.Executor;
import w2.x;
/* loaded from: classes.dex */
public final class d implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f31185a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f31186b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f31187c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f31188d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f31189e;

    public d(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        this.f31185a = aVar;
        this.f31186b = aVar2;
        this.f31187c = aVar3;
        this.f31188d = aVar4;
        this.f31189e = aVar5;
    }

    public static d a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4, wc.a aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, q2.e eVar, x xVar, x2.d dVar, y2.b bVar) {
        return new c(executor, eVar, xVar, dVar, bVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public c get() {
        return c((Executor) this.f31185a.get(), (q2.e) this.f31186b.get(), (x) this.f31187c.get(), (x2.d) this.f31188d.get(), (y2.b) this.f31189e.get());
    }
}
