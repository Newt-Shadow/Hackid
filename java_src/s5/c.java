package s5;

import android.os.Process;
/* loaded from: classes.dex */
final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f29412a;

    public c(Runnable runnable, int i10) {
        this.f29412a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f29412a.run();
    }
}
