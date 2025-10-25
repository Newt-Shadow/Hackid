package m6;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class v implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25962a;

    /* renamed from: b  reason: collision with root package name */
    private final c f25963b;

    /* renamed from: c  reason: collision with root package name */
    private final n0 f25964c;

    public v(Executor executor, c cVar, n0 n0Var) {
        this.f25962a = executor;
        this.f25963b = cVar;
        this.f25964c = n0Var;
    }

    @Override // m6.i0
    public final void b(Task task) {
        this.f25962a.execute(new u(this, task));
    }
}
