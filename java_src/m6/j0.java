package m6;

import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f25933a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private Queue f25934b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25935c;

    public final void a(i0 i0Var) {
        synchronized (this.f25933a) {
            if (this.f25934b == null) {
                this.f25934b = new ArrayDeque();
            }
            this.f25934b.add(i0Var);
        }
    }

    public final void b(Task task) {
        i0 i0Var;
        synchronized (this.f25933a) {
            if (this.f25934b != null && !this.f25935c) {
                this.f25935c = true;
                while (true) {
                    synchronized (this.f25933a) {
                        i0Var = (i0) this.f25934b.poll();
                        if (i0Var == null) {
                            this.f25935c = false;
                            return;
                        }
                    }
                    i0Var.b(task);
                }
            }
        }
    }
}
