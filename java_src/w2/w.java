package w2;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class w implements r2.b {

    /* renamed from: a  reason: collision with root package name */
    private final wc.a f31721a;

    /* renamed from: b  reason: collision with root package name */
    private final wc.a f31722b;

    /* renamed from: c  reason: collision with root package name */
    private final wc.a f31723c;

    /* renamed from: d  reason: collision with root package name */
    private final wc.a f31724d;

    public w(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4) {
        this.f31721a = aVar;
        this.f31722b = aVar2;
        this.f31723c = aVar3;
        this.f31724d = aVar4;
    }

    public static w a(wc.a aVar, wc.a aVar2, wc.a aVar3, wc.a aVar4) {
        return new w(aVar, aVar2, aVar3, aVar4);
    }

    public static v c(Executor executor, x2.d dVar, x xVar, y2.b bVar) {
        return new v(executor, dVar, xVar, bVar);
    }

    @Override // wc.a
    /* renamed from: b */
    public v get() {
        return c((Executor) this.f31721a.get(), (x2.d) this.f31722b.get(), (x) this.f31723c.get(), (y2.b) this.f31724d.get());
    }
}
