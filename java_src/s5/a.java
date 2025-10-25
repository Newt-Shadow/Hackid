package s5;

import android.os.Handler;
import android.os.Looper;
import c6.f;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f29409a;

    public a(Looper looper) {
        this.f29409a = new f(looper);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f29409a.post(runnable);
    }
}
