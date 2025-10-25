package p2;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class n implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f27773a;

    /* loaded from: classes.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f27774a;

        a(Runnable runnable) {
            this.f27774a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f27774a.run();
            } catch (Exception e10) {
                t2.a.d("Executor", "Background execution failure.", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Executor executor) {
        this.f27773a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f27773a.execute(new a(runnable));
    }
}
