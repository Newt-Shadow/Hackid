package d3;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final /* synthetic */ class o0 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Handler f14557a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f14557a.post(runnable);
    }
}
