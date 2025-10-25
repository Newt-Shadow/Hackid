package v1;

import android.content.Context;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.m;
import t1.j;
import yc.o;
/* loaded from: classes.dex */
public final class c implements u1.a {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(c0.a callback) {
        List h10;
        m.e(callback, "$callback");
        h10 = o.h();
        callback.accept(new j(h10));
    }

    @Override // u1.a
    public void a(c0.a callback) {
        m.e(callback, "callback");
    }

    @Override // u1.a
    public void b(Context context, Executor executor, final c0.a callback) {
        m.e(context, "context");
        m.e(executor, "executor");
        m.e(callback, "callback");
        executor.execute(new Runnable() { // from class: v1.b
            @Override // java.lang.Runnable
            public final void run() {
                c.d(c0.a.this);
            }
        });
    }
}
