package m6;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class b0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25915a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f25916b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private f f25917c;

    public b0(Executor executor, f fVar) {
        this.f25915a = executor;
        this.f25917c = fVar;
    }

    @Override // m6.i0
    public final void b(Task task) {
        synchronized (this.f25916b) {
            if (this.f25917c == null) {
                return;
            }
            this.f25915a.execute(new a0(this, task));
        }
    }
}
