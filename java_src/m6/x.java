package m6;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class x implements h, g, e, i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25967a;

    /* renamed from: b  reason: collision with root package name */
    private final c f25968b;

    /* renamed from: c  reason: collision with root package name */
    private final n0 f25969c;

    public x(Executor executor, c cVar, n0 n0Var) {
        this.f25967a = executor;
        this.f25968b = cVar;
        this.f25969c = n0Var;
    }

    @Override // m6.e
    public final void a() {
        this.f25969c.u();
    }

    @Override // m6.i0
    public final void b(Task task) {
        this.f25967a.execute(new w(this, task));
    }

    @Override // m6.g
    public final void c(Exception exc) {
        this.f25969c.s(exc);
    }

    @Override // m6.h
    public final void onSuccess(Object obj) {
        this.f25969c.t(obj);
    }
}
