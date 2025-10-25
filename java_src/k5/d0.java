package k5;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import m6.Task;
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: e */
    private static d0 f24725e;

    /* renamed from: a */
    private final Context f24726a;

    /* renamed from: b */
    private final ScheduledExecutorService f24727b;

    /* renamed from: c */
    private x f24728c = new x(this, null);

    /* renamed from: d */
    private int f24729d = 1;

    d0(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f24727b = scheduledExecutorService;
        this.f24726a = context.getApplicationContext();
    }

    public static /* bridge */ /* synthetic */ Context a(d0 d0Var) {
        return d0Var.f24726a;
    }

    public static synchronized d0 b(Context context) {
        d0 d0Var;
        synchronized (d0.class) {
            if (f24725e == null) {
                b6.e.a();
                f24725e = new d0(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new s5.b("MessengerIpcClient"))));
            }
            d0Var = f24725e;
        }
        return d0Var;
    }

    public static /* bridge */ /* synthetic */ ScheduledExecutorService e(d0 d0Var) {
        return d0Var.f24727b;
    }

    private final synchronized int f() {
        int i10;
        i10 = this.f24729d;
        this.f24729d = i10 + 1;
        return i10;
    }

    private final synchronized Task g(a0 a0Var) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", "Queueing ".concat(a0Var.toString()));
        }
        if (!this.f24728c.g(a0Var)) {
            x xVar = new x(this, null);
            this.f24728c = xVar;
            xVar.g(a0Var);
        }
        return a0Var.f24709b.a();
    }

    public final Task c(int i10, Bundle bundle) {
        return g(new z(f(), i10, bundle));
    }

    public final Task d(int i10, Bundle bundle) {
        return g(new c0(f(), i10, bundle));
    }
}
