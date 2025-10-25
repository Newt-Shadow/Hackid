package n5;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class r1 extends i {

    /* renamed from: g */
    private final HashMap f26379g = new HashMap();

    /* renamed from: h */
    private final Context f26380h;

    /* renamed from: i */
    private volatile Handler f26381i;

    /* renamed from: j */
    private final p1 f26382j;

    /* renamed from: k */
    private final r5.b f26383k;

    /* renamed from: l */
    private final long f26384l;

    /* renamed from: m */
    private final long f26385m;

    /* renamed from: n */
    private volatile Executor f26386n;

    public r1(Context context, Looper looper, Executor executor) {
        p1 p1Var = new p1(this, null);
        this.f26382j = p1Var;
        this.f26380h = context.getApplicationContext();
        this.f26381i = new c6.f(looper, p1Var);
        this.f26383k = r5.b.b();
        this.f26384l = 5000L;
        this.f26385m = 300000L;
        this.f26386n = executor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.i
    public final l5.b e(n1 n1Var, ServiceConnection serviceConnection, String str, Executor executor) {
        l5.b bVar;
        q.l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f26379g) {
            o1 o1Var = (o1) this.f26379g.get(n1Var);
            if (executor == null) {
                executor = this.f26386n;
            }
            if (o1Var == null) {
                o1Var = new o1(this, n1Var);
                o1Var.e(serviceConnection, serviceConnection, str);
                bVar = o1.d(o1Var, str, executor);
                this.f26379g.put(n1Var, o1Var);
            } else {
                this.f26381i.removeMessages(0, n1Var);
                if (!o1Var.h(serviceConnection)) {
                    o1Var.e(serviceConnection, serviceConnection, str);
                    int a10 = o1Var.a();
                    if (a10 != 1) {
                        if (a10 == 2) {
                            bVar = o1.d(o1Var, str, executor);
                        }
                    } else {
                        serviceConnection.onServiceConnected(o1Var.b(), o1Var.c());
                    }
                    bVar = null;
                } else {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + n1Var.toString());
                }
            }
            if (o1Var.j()) {
                return l5.b.f25260e;
            }
            if (bVar == null) {
                bVar = new l5.b(-1);
            }
            return bVar;
        }
    }

    @Override // n5.i
    protected final void f(n1 n1Var, ServiceConnection serviceConnection, String str) {
        q.l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f26379g) {
            o1 o1Var = (o1) this.f26379g.get(n1Var);
            if (o1Var != null) {
                if (o1Var.h(serviceConnection)) {
                    o1Var.f(serviceConnection, str);
                    if (o1Var.i()) {
                        this.f26381i.sendMessageDelayed(this.f26381i.obtainMessage(0, n1Var), this.f26384l);
                    }
                } else {
                    String obj = n1Var.toString();
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + obj);
                }
            } else {
                String obj2 = n1Var.toString();
                throw new IllegalStateException("Nonexistent connection status for service config: " + obj2);
            }
        }
    }
}
