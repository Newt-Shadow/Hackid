package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import java.util.Objects;
/* loaded from: classes.dex */
public final class cc {

    /* renamed from: a  reason: collision with root package name */
    private final Context f7405a;

    public cc(Context context) {
        n5.q.k(context);
        this.f7405a = context;
    }

    public static final void i(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onRebind called with null intent");
        } else {
            Log.v("FA", "onRebind called. action: ".concat(String.valueOf(intent.getAction())));
        }
    }

    public static final boolean j(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onUnbind called with null intent");
            return true;
        }
        Log.v("FA", "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction())));
        return true;
    }

    private final void k(pd pdVar, Runnable runnable) {
        pdVar.b().t(new yb(this, pdVar, runnable));
    }

    public final void a() {
        Log.v("FA", this.f7405a.getClass().getSimpleName().concat(" is starting up."));
    }

    public final void b() {
        Log.v("FA", this.f7405a.getClass().getSimpleName().concat(" is shutting down."));
    }

    public final int c(final Intent intent, int i10, final int i11) {
        if (intent == null) {
            Log.w("FA", "AppMeasurementService started with null intent");
            return 2;
        }
        Context context = this.f7405a;
        w6 O = w6.O(context, null, null);
        final p5 a10 = O.a();
        String action = intent.getAction();
        O.c();
        a10.w().c("Local AppMeasurementService called. startId, action", Integer.valueOf(i11), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            k(pd.F(context), new Runnable() { // from class: com.google.android.gms.measurement.internal.bc
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    cc.this.f(i11, a10, intent);
                }
            });
        }
        return 2;
    }

    public final IBinder d(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new y7(pd.F(this.f7405a), null);
        }
        Log.w("FA", "onBind received unknown action: ".concat(String.valueOf(action)));
        return null;
    }

    public final boolean e(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("action");
        Log.v("FA", "onStartJob received action: ".concat(String.valueOf(string)));
        if (Objects.equals(string, "com.google.android.gms.measurement.UPLOAD")) {
            pd F = pd.F(this.f7405a);
            final p5 a10 = F.a();
            F.c();
            a10.w().b("Local AppMeasurementJobService called. action", (String) n5.q.k(string));
            k(F, new Runnable() { // from class: com.google.android.gms.measurement.internal.zb
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    cc.this.g(a10, jobParameters);
                }
            });
        }
        if (Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            String str = (String) n5.q.k(string);
            com.google.android.gms.internal.measurement.a4.s(this.f7405a, null).K(new Runnable() { // from class: com.google.android.gms.measurement.internal.ac
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    cc.this.h(jobParameters);
                }
            });
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void f(int i10, p5 p5Var, Intent intent) {
        Context context = this.f7405a;
        i6.f0 f0Var = (i6.f0) context;
        if (f0Var.a(i10)) {
            p5Var.w().b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i10));
            w6.O(context, null, null).a().w().a("Completed wakeful intent.");
            f0Var.b(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void g(p5 p5Var, JobParameters jobParameters) {
        p5Var.w().a("AppMeasurementJobService processed last upload request.");
        ((i6.f0) this.f7405a).c(jobParameters, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h(JobParameters jobParameters) {
        Log.v("FA", "[sgtm] AppMeasurementJobService processed last Scion upload request.");
        ((i6.f0) this.f7405a).c(jobParameters, false);
    }
}
