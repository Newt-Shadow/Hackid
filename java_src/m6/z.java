package m6;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class z implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25971a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f25972b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private e f25973c;

    public z(Executor executor, e eVar) {
        this.f25971a = executor;
        this.f25973c = eVar;
    }

    @Override // m6.i0
    public final void b(Task task) {
        if (task.n()) {
            synchronized (this.f25972b) {
                if (this.f25973c == null) {
                    return;
                }
                this.f25971a.execute(new y(this));
            }
        }
    }
}
