package k5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x implements ServiceConnection {

    /* renamed from: c  reason: collision with root package name */
    y f24765c;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d0 f24768f;

    /* renamed from: a  reason: collision with root package name */
    int f24763a = 0;

    /* renamed from: b  reason: collision with root package name */
    final Messenger f24764b = new Messenger(new b6.f(Looper.getMainLooper(), new Handler.Callback() { // from class: k5.u
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i10 = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Received response to request: " + i10);
            }
            x xVar = x.this;
            synchronized (xVar) {
                a0 a0Var = (a0) xVar.f24767e.get(i10);
                if (a0Var == null) {
                    Log.w("MessengerIpcClient", "Received response for unknown request: " + i10);
                    return true;
                }
                xVar.f24767e.remove(i10);
                xVar.f();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    a0Var.c(new b0(4, "Not supported by GmsCore", null));
                    return true;
                }
                a0Var.a(data);
                return true;
            }
        }
    }));

    /* renamed from: d  reason: collision with root package name */
    final Queue f24766d = new ArrayDeque();

    /* renamed from: e  reason: collision with root package name */
    final SparseArray f24767e = new SparseArray();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x(d0 d0Var, w wVar) {
        this.f24768f = d0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(int i10, String str) {
        b(i10, str, null);
    }

    final synchronized void b(int i10, String str, Throwable th) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", "Disconnected: ".concat(String.valueOf(str)));
        }
        int i11 = this.f24763a;
        if (i11 != 0) {
            if (i11 != 1 && i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                this.f24763a = 4;
                return;
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.f24763a = 4;
            r5.b.b().c(d0.a(this.f24768f), this);
            b0 b0Var = new b0(i10, str, th);
            for (a0 a0Var : this.f24766d) {
                a0Var.c(b0Var);
            }
            this.f24766d.clear();
            for (int i12 = 0; i12 < this.f24767e.size(); i12++) {
                ((a0) this.f24767e.valueAt(i12)).c(b0Var);
            }
            this.f24767e.clear();
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        d0.e(this.f24768f).execute(new Runnable() { // from class: k5.r
            @Override // java.lang.Runnable
            public final void run() {
                final a0 a0Var;
                while (true) {
                    final x xVar = x.this;
                    synchronized (xVar) {
                        if (xVar.f24763a != 2) {
                            return;
                        }
                        if (xVar.f24766d.isEmpty()) {
                            xVar.f();
                            return;
                        }
                        a0Var = (a0) xVar.f24766d.poll();
                        xVar.f24767e.put(a0Var.f24708a, a0Var);
                        d0.e(xVar.f24768f).schedule(new Runnable() { // from class: k5.v
                            @Override // java.lang.Runnable
                            public final void run() {
                                x.this.e(a0Var.f24708a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        Log.d("MessengerIpcClient", "Sending ".concat(String.valueOf(a0Var)));
                    }
                    d0 d0Var = xVar.f24768f;
                    Messenger messenger = xVar.f24764b;
                    int i10 = a0Var.f24710c;
                    Context a10 = d0.a(d0Var);
                    Message obtain = Message.obtain();
                    obtain.what = i10;
                    obtain.arg1 = a0Var.f24708a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", a0Var.b());
                    bundle.putString("pkg", a10.getPackageName());
                    bundle.putBundle("data", a0Var.f24711d);
                    obtain.setData(bundle);
                    try {
                        xVar.f24765c.a(obtain);
                    } catch (RemoteException e10) {
                        xVar.a(2, e10.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void d() {
        if (this.f24763a == 1) {
            a(1, "Timed out while binding");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void e(int i10) {
        a0 a0Var = (a0) this.f24767e.get(i10);
        if (a0Var != null) {
            Log.w("MessengerIpcClient", "Timing out request: " + i10);
            this.f24767e.remove(i10);
            a0Var.c(new b0(3, "Timed out waiting for response", null));
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void f() {
        if (this.f24763a == 2 && this.f24766d.isEmpty() && this.f24767e.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.f24763a = 3;
            r5.b.b().c(d0.a(this.f24768f), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean g(a0 a0Var) {
        boolean z10;
        int i10 = this.f24763a;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return false;
                }
                this.f24766d.add(a0Var);
                c();
                return true;
            }
            this.f24766d.add(a0Var);
            return true;
        }
        this.f24766d.add(a0Var);
        if (this.f24763a == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.n(z10);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.f24763a = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (!r5.b.b().a(d0.a(this.f24768f), intent, this, 1)) {
                a(0, "Unable to bind to service");
            } else {
                d0.e(this.f24768f).schedule(new Runnable() { // from class: k5.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.this.d();
                    }
                }, 30L, TimeUnit.SECONDS);
            }
        } catch (SecurityException e10) {
            b(0, "Unable to bind to service", e10);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        d0.e(this.f24768f).execute(new Runnable() { // from class: k5.q
            @Override // java.lang.Runnable
            public final void run() {
                x xVar = x.this;
                IBinder iBinder2 = iBinder;
                synchronized (xVar) {
                    try {
                        if (iBinder2 == null) {
                            xVar.a(0, "Null service connection");
                            return;
                        }
                        try {
                            xVar.f24765c = new y(iBinder2);
                            xVar.f24763a = 2;
                            xVar.c();
                        } catch (RemoteException e10) {
                            xVar.a(0, e10.getMessage());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        d0.e(this.f24768f).execute(new Runnable() { // from class: k5.t
            @Override // java.lang.Runnable
            public final void run() {
                x.this.a(2, "Service disconnected");
            }
        });
    }
}
