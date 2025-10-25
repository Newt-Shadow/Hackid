package m6;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25920a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f25921b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private g f25922c;

    public d0(Executor executor, g gVar) {
        this.f25920a = executor;
        this.f25922c = gVar;
    }

    @Override // m6.i0
    public final void b(Task task) {
        if (!task.p() && !task.n()) {
            synchronized (this.f25921b) {
                if (this.f25922c == null) {
                    return;
                }
                this.f25920a.execute(new c0(this, task));
            }
        }
    }
}
