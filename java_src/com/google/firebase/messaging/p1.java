package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.firebase.messaging.p1;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import m6.Task;
/* loaded from: classes.dex */
class p1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8955a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f8956b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f8957c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue f8958d;

    /* renamed from: e  reason: collision with root package name */
    private m1 f8959e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8960f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f8961a;

        /* renamed from: b  reason: collision with root package name */
        private final m6.l f8962b = new m6.l();

        a(Intent intent) {
            this.f8961a = intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + this.f8961a.getAction() + " finishing.");
            d();
        }

        void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.messaging.n1
                @Override // java.lang.Runnable
                public final void run() {
                    p1.a.this.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().b(scheduledExecutorService, new m6.f() { // from class: com.google.firebase.messaging.o1
                @Override // m6.f
                public final void onComplete(Task task) {
                    schedule.cancel(false);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            this.f8962b.e(null);
        }

        Task e() {
            return this.f8962b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p1(Context context, String str) {
        this(context, str, a());
    }

    private static ScheduledThreadPoolExecutor a() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new s5.b("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        return scheduledThreadPoolExecutor;
    }

    private void b() {
        while (!this.f8958d.isEmpty()) {
            ((a) this.f8958d.poll()).d();
        }
    }

    private synchronized void c() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "flush queue called");
        }
        while (!this.f8958d.isEmpty()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "found intent to be delivered");
            }
            m1 m1Var = this.f8959e;
            if (m1Var != null && m1Var.isBinderAlive()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                }
                this.f8959e.c((a) this.f8958d.poll());
            } else {
                e();
                return;
            }
        }
    }

    private void e() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("binder is dead. start connection? ");
            sb2.append(!this.f8960f);
            Log.d("FirebaseMessaging", sb2.toString());
        }
        if (this.f8960f) {
            return;
        }
        this.f8960f = true;
        try {
        } catch (SecurityException e10) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e10);
        }
        if (r5.b.b().a(this.f8955a, this.f8956b, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f8960f = false;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Task d(Intent intent) {
        a aVar;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
        }
        aVar = new a(intent);
        aVar.c(this.f8957c);
        this.f8958d.add(aVar);
        c();
        return aVar.e();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
        }
        this.f8960f = false;
        if (!(iBinder instanceof m1)) {
            Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
            b();
            return;
        }
        this.f8959e = (m1) iBinder;
        c();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        c();
    }

    p1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f8958d = new ArrayDeque();
        this.f8960f = false;
        Context applicationContext = context.getApplicationContext();
        this.f8955a = applicationContext;
        this.f8956b = new Intent(str).setPackage(applicationContext.getPackageName());
        this.f8957c = scheduledExecutorService;
    }
}
