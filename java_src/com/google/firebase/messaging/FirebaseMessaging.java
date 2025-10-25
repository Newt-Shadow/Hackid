package com.google.firebase.messaging;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.c1;
import com.google.firebase.messaging.x0;
import j8.a;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import m6.Task;
/* loaded from: classes.dex */
public class FirebaseMessaging {

    /* renamed from: m  reason: collision with root package name */
    private static c1 f8805m;

    /* renamed from: o  reason: collision with root package name */
    static ScheduledExecutorService f8807o;

    /* renamed from: a  reason: collision with root package name */
    private final h7.f f8808a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f8809b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f8810c;

    /* renamed from: d  reason: collision with root package name */
    private final x0 f8811d;

    /* renamed from: e  reason: collision with root package name */
    private final a f8812e;

    /* renamed from: f  reason: collision with root package name */
    private final Executor f8813f;

    /* renamed from: g  reason: collision with root package name */
    private final Executor f8814g;

    /* renamed from: h  reason: collision with root package name */
    private final Task f8815h;

    /* renamed from: i  reason: collision with root package name */
    private final l0 f8816i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f8817j;

    /* renamed from: k  reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f8818k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f8804l = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: n  reason: collision with root package name */
    static k8.b f8806n = new k8.b() { // from class: com.google.firebase.messaging.w
        @Override // k8.b
        public final Object get() {
            n2.j K;
            K = FirebaseMessaging.K();
            return K;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private final h8.d f8819a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f8820b;

        /* renamed from: c  reason: collision with root package name */
        private h8.b f8821c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f8822d;

        a(h8.d dVar) {
            this.f8819a = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(h8.a aVar) {
            if (c()) {
                FirebaseMessaging.this.T();
            }
        }

        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context m10 = FirebaseMessaging.this.f8808a.m();
            SharedPreferences sharedPreferences = m10.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = m10.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(m10.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void b() {
            if (this.f8820b) {
                return;
            }
            Boolean e10 = e();
            this.f8822d = e10;
            if (e10 == null) {
                h8.b bVar = new h8.b() { // from class: com.google.firebase.messaging.d0
                    @Override // h8.b
                    public final void a(h8.a aVar) {
                        FirebaseMessaging.a.this.d(aVar);
                    }
                };
                this.f8821c = bVar;
                this.f8819a.b(h7.b.class, bVar);
            }
            this.f8820b = true;
        }

        synchronized boolean c() {
            boolean x10;
            b();
            Boolean bool = this.f8822d;
            if (bool != null) {
                x10 = bool.booleanValue();
            } else {
                x10 = FirebaseMessaging.this.f8808a.x();
            }
            return x10;
        }

        synchronized void f(boolean z10) {
            b();
            h8.b bVar = this.f8821c;
            if (bVar != null) {
                this.f8819a.d(h7.b.class, bVar);
                this.f8821c = null;
            }
            SharedPreferences.Editor edit = FirebaseMessaging.this.f8808a.m().getSharedPreferences("com.google.firebase.messaging", 0).edit();
            edit.putBoolean("auto_init", z10);
            edit.apply();
            if (z10) {
                FirebaseMessaging.this.T();
            }
            this.f8822d = Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseMessaging(h7.f fVar, j8.a aVar, k8.b bVar, k8.b bVar2, l8.e eVar, k8.b bVar3, h8.d dVar) {
        this(fVar, aVar, bVar, bVar2, eVar, bVar3, dVar, new l0(fVar.m()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task C(String str, c1.a aVar, String str2) {
        s(this.f8809b).g(t(), str, str2, this.f8816i.a());
        if (aVar == null || !str2.equals(aVar.f8860a)) {
            z(str2);
        }
        return m6.n.e(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task D(final String str, final c1.a aVar) {
        return this.f8810c.g().q(this.f8814g, new m6.k() { // from class: com.google.firebase.messaging.t
            @Override // m6.k
            public final Task a(Object obj) {
                Task C;
                C = FirebaseMessaging.this.C(str, aVar, (String) obj);
                return C;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(m6.l lVar) {
        try {
            m6.n.a(this.f8810c.c());
            s(this.f8809b).d(t(), l0.c(this.f8808a));
            lVar.c(null);
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(m6.l lVar) {
        try {
            lVar.c(n());
        } catch (Exception e10) {
            lVar.b(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(k5.a aVar) {
        if (aVar != null) {
            k0.y(aVar.g());
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        if (A()) {
            T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(h1 h1Var) {
        if (A()) {
            h1Var.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n2.j K() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task L(String str, h1 h1Var) {
        return h1Var.r(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task M(String str, h1 h1Var) {
        return h1Var.u(str);
    }

    private boolean R() {
        r0.c(this.f8809b);
        if (!r0.d(this.f8809b)) {
            return false;
        }
        if (this.f8808a.k(i7.a.class) != null) {
            return true;
        }
        if (!k0.a() || f8806n == null) {
            return false;
        }
        return true;
    }

    private synchronized void S() {
        if (!this.f8817j) {
            V(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        if (W(v())) {
            S();
        }
    }

    @Keep
    static synchronized FirebaseMessaging getInstance(h7.f fVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = (FirebaseMessaging) fVar.k(FirebaseMessaging.class);
            n5.q.l(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    public static synchronized FirebaseMessaging r() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseMessaging = getInstance(h7.f.o());
        }
        return firebaseMessaging;
    }

    private static synchronized c1 s(Context context) {
        c1 c1Var;
        synchronized (FirebaseMessaging.class) {
            if (f8805m == null) {
                f8805m = new c1(context);
            }
            c1Var = f8805m;
        }
        return c1Var;
    }

    private String t() {
        if ("[DEFAULT]".equals(this.f8808a.q())) {
            return "";
        }
        return this.f8808a.s();
    }

    public static n2.j w() {
        return (n2.j) f8806n.get();
    }

    private void x() {
        this.f8810c.f().f(this.f8813f, new m6.h() { // from class: com.google.firebase.messaging.c0
            @Override // m6.h
            public final void onSuccess(Object obj) {
                FirebaseMessaging.this.G((k5.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void J() {
        r0.c(this.f8809b);
        t0.g(this.f8809b, this.f8810c, R());
        if (R()) {
            x();
        }
    }

    private void z(String str) {
        if ("[DEFAULT]".equals(this.f8808a.q())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.f8808a.q());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new n(this.f8809b).k(intent);
        }
    }

    public boolean A() {
        return this.f8812e.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B() {
        return this.f8816i.g();
    }

    public void N(u0 u0Var) {
        if (!TextUtils.isEmpty(u0Var.t())) {
            Intent intent = new Intent("com.google.android.gcm.intent.SEND");
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            intent.putExtra("app", PendingIntent.getBroadcast(this.f8809b, 0, intent2, 67108864));
            intent.setPackage("com.google.android.gms");
            u0Var.D(intent);
            this.f8809b.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
            return;
        }
        throw new IllegalArgumentException("Missing 'to'");
    }

    public void O(boolean z10) {
        this.f8812e.f(z10);
    }

    public void P(boolean z10) {
        k0.B(z10);
        t0.g(this.f8809b, this.f8810c, R());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void Q(boolean z10) {
        this.f8817j = z10;
    }

    public Task U(final String str) {
        return this.f8815h.r(new m6.k() { // from class: com.google.firebase.messaging.u
            @Override // m6.k
            public final Task a(Object obj) {
                Task L;
                L = FirebaseMessaging.L(str, (h1) obj);
                return L;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void V(long j10) {
        p(new d1(this, Math.min(Math.max(30L, 2 * j10), f8804l)), j10);
        this.f8817j = true;
    }

    boolean W(c1.a aVar) {
        if (aVar != null && !aVar.b(this.f8816i.a())) {
            return false;
        }
        return true;
    }

    public Task X(final String str) {
        return this.f8815h.r(new m6.k() { // from class: com.google.firebase.messaging.r
            @Override // m6.k
            public final Task a(Object obj) {
                Task M;
                M = FirebaseMessaging.M(str, (h1) obj);
                return M;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String n() {
        final c1.a v10 = v();
        if (!W(v10)) {
            return v10.f8860a;
        }
        final String c10 = l0.c(this.f8808a);
        try {
            return (String) m6.n.a(this.f8811d.b(c10, new x0.a() { // from class: com.google.firebase.messaging.s
                @Override // com.google.firebase.messaging.x0.a
                public final Task start() {
                    Task D;
                    D = FirebaseMessaging.this.D(c10, v10);
                    return D;
                }
            }));
        } catch (InterruptedException | ExecutionException e10) {
            throw new IOException(e10);
        }
    }

    public Task o() {
        if (v() == null) {
            return m6.n.e(null);
        }
        final m6.l lVar = new m6.l();
        o.e().execute(new Runnable() { // from class: com.google.firebase.messaging.v
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.E(lVar);
            }
        });
        return lVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(Runnable runnable, long j10) {
        synchronized (FirebaseMessaging.class) {
            if (f8807o == null) {
                f8807o = new ScheduledThreadPoolExecutor(1, new s5.b("TAG"));
            }
            f8807o.schedule(runnable, j10, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context q() {
        return this.f8809b;
    }

    public Task u() {
        final m6.l lVar = new m6.l();
        this.f8813f.execute(new Runnable() { // from class: com.google.firebase.messaging.b0
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.F(lVar);
            }
        });
        return lVar.a();
    }

    c1.a v() {
        return s(this.f8809b).e(t(), l0.c(this.f8808a));
    }

    FirebaseMessaging(h7.f fVar, j8.a aVar, k8.b bVar, k8.b bVar2, l8.e eVar, k8.b bVar3, h8.d dVar, l0 l0Var) {
        this(fVar, aVar, bVar3, dVar, l0Var, new g0(fVar, l0Var, bVar, bVar2, eVar), o.f(), o.c(), o.b());
    }

    FirebaseMessaging(h7.f fVar, j8.a aVar, k8.b bVar, h8.d dVar, l0 l0Var, g0 g0Var, Executor executor, Executor executor2, Executor executor3) {
        this.f8817j = false;
        f8806n = bVar;
        this.f8808a = fVar;
        this.f8812e = new a(dVar);
        Context m10 = fVar.m();
        this.f8809b = m10;
        q qVar = new q();
        this.f8818k = qVar;
        this.f8816i = l0Var;
        this.f8810c = g0Var;
        this.f8811d = new x0(executor);
        this.f8813f = executor2;
        this.f8814g = executor3;
        Context m11 = fVar.m();
        if (m11 instanceof Application) {
            ((Application) m11).registerActivityLifecycleCallbacks(qVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + m11 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (aVar != null) {
            aVar.a(new a.InterfaceC0228a() { // from class: com.google.firebase.messaging.x
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.y
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.H();
            }
        });
        Task f10 = h1.f(this, l0Var, g0Var, m10, o.g());
        this.f8815h = f10;
        f10.f(executor2, new m6.h() { // from class: com.google.firebase.messaging.z
            @Override // m6.h
            public final void onSuccess(Object obj) {
                FirebaseMessaging.this.I((h1) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.a0
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.this.J();
            }
        });
    }
}
