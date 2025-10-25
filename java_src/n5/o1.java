package n5;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
final class o1 implements ServiceConnection, s1 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f26362a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private int f26363b = 2;

    /* renamed from: c  reason: collision with root package name */
    private boolean f26364c;

    /* renamed from: d  reason: collision with root package name */
    private IBinder f26365d;

    /* renamed from: e  reason: collision with root package name */
    private final n1 f26366e;

    /* renamed from: f  reason: collision with root package name */
    private ComponentName f26367f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ r1 f26368g;

    public o1(r1 r1Var, n1 n1Var) {
        this.f26368g = r1Var;
        this.f26366e = n1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ l5.b d(o1 o1Var, String str, Executor executor) {
        l5.b bVar;
        try {
            Intent b10 = o1Var.f26366e.b(r1.i(o1Var.f26368g));
            o1Var.f26363b = 3;
            StrictMode.VmPolicy a10 = com.google.android.gms.common.util.u.a();
            try {
                r1 r1Var = o1Var.f26368g;
                boolean d10 = r1.k(r1Var).d(r1.i(r1Var), str, b10, o1Var, 4225, executor);
                o1Var.f26364c = d10;
                if (d10) {
                    r1.j(o1Var.f26368g).sendMessageDelayed(r1.j(o1Var.f26368g).obtainMessage(1, o1Var.f26366e), r1.h(o1Var.f26368g));
                    bVar = l5.b.f25260e;
                } else {
                    o1Var.f26363b = 2;
                    try {
                        r1 r1Var2 = o1Var.f26368g;
                        r1.k(r1Var2).c(r1.i(r1Var2), o1Var);
                    } catch (IllegalArgumentException unused) {
                    }
                    bVar = new l5.b(16);
                }
                return bVar;
            } finally {
                StrictMode.setVmPolicy(a10);
            }
        } catch (b1 e10) {
            return e10.f26236a;
        }
    }

    public final int a() {
        return this.f26363b;
    }

    public final ComponentName b() {
        return this.f26367f;
    }

    public final IBinder c() {
        return this.f26365d;
    }

    public final void e(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f26362a.put(serviceConnection, serviceConnection2);
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.f26362a.remove(serviceConnection);
    }

    public final void g(String str) {
        r1.j(this.f26368g).removeMessages(1, this.f26366e);
        r1 r1Var = this.f26368g;
        r1.k(r1Var).c(r1.i(r1Var), this);
        this.f26364c = false;
        this.f26363b = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.f26362a.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.f26362a.isEmpty();
    }

    public final boolean j() {
        return this.f26364c;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (r1.l(this.f26368g)) {
            r1.j(this.f26368g).removeMessages(1, this.f26366e);
            this.f26365d = iBinder;
            this.f26367f = componentName;
            for (ServiceConnection serviceConnection : this.f26362a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f26363b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (r1.l(this.f26368g)) {
            r1.j(this.f26368g).removeMessages(1, this.f26366e);
            this.f26365d = null;
            this.f26367f = componentName;
            for (ServiceConnection serviceConnection : this.f26362a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f26363b = 2;
        }
    }
}
