package m6;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class h0 implements h, g, e, i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25930a;

    /* renamed from: b  reason: collision with root package name */
    private final k f25931b;

    /* renamed from: c  reason: collision with root package name */
    private final n0 f25932c;

    public h0(Executor executor, k kVar, n0 n0Var) {
        this.f25930a = executor;
        this.f25931b = kVar;
        this.f25932c = n0Var;
    }

    @Override // m6.e
    public final void a() {
        this.f25932c.u();
    }

    @Override // m6.i0
    public final void b(Task task) {
        this.f25930a.execute(new g0(this, task));
    }

    @Override // m6.g
    public final void c(Exception exc) {
        this.f25932c.s(exc);
    }

    @Override // m6.h
    public final void onSuccess(Object obj) {
        this.f25932c.t(obj);
    }
}
