package q7;

import android.os.Process;
/* loaded from: classes.dex */
public abstract class e implements Runnable {
    protected abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        a();
    }
}
