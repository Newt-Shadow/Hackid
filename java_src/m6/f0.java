package m6;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25925a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f25926b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private h f25927c;

    public f0(Executor executor, h hVar) {
        this.f25925a = executor;
        this.f25927c = hVar;
    }

    @Override // m6.i0
    public final void b(Task task) {
        if (task.p()) {
            synchronized (this.f25926b) {
                if (this.f25927c == null) {
                    return;
                }
                this.f25925a.execute(new e0(this, task));
            }
        }
    }
}
