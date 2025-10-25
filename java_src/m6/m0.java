package m6;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class m0 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f25940a = new f6.a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f25940a.post(runnable);
    }
}
