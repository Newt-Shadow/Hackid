package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class a4 {

    /* renamed from: j  reason: collision with root package name */
    private static volatile a4 f6213j;

    /* renamed from: a  reason: collision with root package name */
    private final String f6214a = "FA";

    /* renamed from: b  reason: collision with root package name */
    protected final com.google.android.gms.common.util.d f6215b = com.google.android.gms.common.util.g.b();

    /* renamed from: c  reason: collision with root package name */
    protected final ExecutorService f6216c;

    /* renamed from: d  reason: collision with root package name */
    private final h6.a f6217d;

    /* renamed from: e  reason: collision with root package name */
    private final List f6218e;

    /* renamed from: f  reason: collision with root package name */
    private int f6219f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6220g;

    /* renamed from: h  reason: collision with root package name */
    private final String f6221h;

    /* renamed from: i  reason: collision with root package name */
    private volatile t1 f6222i;

    protected a4(Context context, Bundle bundle) {
        o1.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new h3(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f6216c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f6217d = new h6.a(this);
        this.f6218e = new ArrayList();
        try {
            if (i6.e0.a(context, "google_app_id", i6.p.a(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, a4.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.f6221h = null;
                    this.f6220g = true;
                    Log.w(this.f6214a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection.");
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        this.f6221h = "fa";
        j(new u2(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f6214a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new z3(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public final void j(p3 p3Var) {
        this.f6216c.execute(p3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public final void k(Exception exc, boolean z10, boolean z11) {
        this.f6220g |= z10;
        if (z10) {
            Log.w(this.f6214a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z11) {
            d(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f6214a, "Error with data collection. Data lost.", exc);
    }

    private final void r(String str, String str2, Bundle bundle, boolean z10, boolean z11, Long l10) {
        j(new o3(this, l10, str, str2, bundle, z10, z11));
    }

    public static a4 s(Context context, Bundle bundle) {
        n5.q.k(context);
        if (f6213j == null) {
            synchronized (a4.class) {
                if (f6213j == null) {
                    f6213j = new a4(context, bundle);
                }
            }
        }
        return f6213j;
    }

    public final void A(String str, String str2, Bundle bundle) {
        j(new m2(this, str, str2, bundle));
    }

    public final List B(String str, String str2) {
        q1 q1Var = new q1();
        j(new n2(this, str, str2, q1Var));
        List list = (List) q1.f1(q1Var.e1(5000L), List.class);
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    public final void C(String str) {
        j(new o2(this, str));
    }

    public final void D(i2 i2Var, String str, String str2) {
        j(new p2(this, i2Var, str, str2));
    }

    public final void E(Boolean bool) {
        j(new q2(this, bool));
    }

    public final void F(Bundle bundle) {
        j(new r2(this, bundle));
    }

    public final void G() {
        j(new s2(this));
    }

    public final void H(long j10) {
        j(new t2(this, j10));
    }

    public final void I(String str) {
        j(new v2(this, str));
    }

    public final void J(String str) {
        j(new w2(this, str));
    }

    public final void K(Runnable runnable) {
        j(new y2(this, runnable));
    }

    public final String L() {
        q1 q1Var = new q1();
        j(new z2(this, q1Var));
        return q1Var.d(500L);
    }

    public final String M() {
        q1 q1Var = new q1();
        j(new a3(this, q1Var));
        return q1Var.d(50L);
    }

    public final long N() {
        q1 q1Var = new q1();
        j(new b3(this, q1Var));
        Long k10 = q1Var.k(500L);
        if (k10 == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f6215b.currentTimeMillis()).nextLong();
            int i10 = this.f6219f + 1;
            this.f6219f = i10;
            return nextLong + i10;
        }
        return k10.longValue();
    }

    public final String a() {
        q1 q1Var = new q1();
        j(new c3(this, q1Var));
        return q1Var.d(500L);
    }

    public final String b() {
        q1 q1Var = new q1();
        j(new e3(this, q1Var));
        return q1Var.d(500L);
    }

    public final Map c(String str, String str2, boolean z10) {
        q1 q1Var = new q1();
        j(new f3(this, str, str2, z10, q1Var));
        Bundle e12 = q1Var.e1(5000L);
        if (e12 != null && e12.size() != 0) {
            HashMap hashMap = new HashMap(e12.size());
            for (String str3 : e12.keySet()) {
                Object obj = e12.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    public final void d(int i10, String str, Object obj, Object obj2, Object obj3) {
        j(new g3(this, false, 5, str, obj, null, null));
    }

    public final int e(String str) {
        q1 q1Var = new q1();
        j(new i3(this, str, q1Var));
        Integer num = (Integer) q1.f1(q1Var.e1(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String f() {
        q1 q1Var = new q1();
        j(new j3(this, q1Var));
        return q1Var.d(120000L);
    }

    public final Long g() {
        q1 q1Var = new q1();
        j(new k3(this, q1Var));
        return q1Var.k(120000L);
    }

    public final void h(boolean z10) {
        j(new l3(this, z10));
    }

    public final void i(Bundle bundle) {
        j(new m3(this, bundle));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String l() {
        return this.f6214a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean m() {
        return this.f6220g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ t1 n() {
        return this.f6222i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void o(t1 t1Var) {
        this.f6222i = t1Var;
    }

    public final h6.a t() {
        return this.f6217d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final t1 u(Context context, boolean z10) {
        DynamiteModule.b bVar;
        try {
            if (z10) {
                bVar = DynamiteModule.f5938e;
            } else {
                bVar = DynamiteModule.f5936c;
            }
            return s1.asInterface(DynamiteModule.d(context, bVar, ModuleDescriptor.MODULE_ID).c("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.a e10) {
            k(e10, true, false);
            return null;
        }
    }

    public final void v(i6.x xVar) {
        n5.q.k(xVar);
        List list = this.f6218e;
        synchronized (list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (xVar.equals(((Pair) list.get(i10)).first)) {
                    Log.w(this.f6214a, "OnEventListener already registered.");
                    return;
                }
            }
            q3 q3Var = new q3(xVar);
            list.add(new Pair(xVar, q3Var));
            if (this.f6222i != null) {
                try {
                    this.f6222i.registerOnMeasurementEventListener(q3Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f6214a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            j(new n3(this, q3Var));
        }
    }

    public final void w(String str, Bundle bundle) {
        r(null, str, bundle, false, true, null);
    }

    public final void x(String str, String str2, Bundle bundle) {
        r(str, str2, bundle, true, true, null);
    }

    public final void y(String str, String str2, Object obj, boolean z10) {
        j(new k2(this, str, str2, obj, z10));
    }

    public final void z(Bundle bundle) {
        j(new l2(this, bundle));
    }
}
