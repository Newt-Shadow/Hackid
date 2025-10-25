package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
/* loaded from: classes.dex */
public final class uc extends ad {

    /* renamed from: d  reason: collision with root package name */
    private final AlarmManager f8091d;

    /* renamed from: e  reason: collision with root package name */
    private x f8092e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f8093f;

    /* JADX INFO: Access modifiers changed from: protected */
    public uc(pd pdVar) {
        super(pdVar);
        this.f8091d = (AlarmManager) this.f8322a.e().getSystemService("alarm");
    }

    private final x o() {
        if (this.f8092e == null) {
            this.f8092e = new tc(this, this.f8149b.g0());
        }
        return this.f8092e;
    }

    private final void p() {
        JobScheduler jobScheduler = (JobScheduler) this.f8322a.e().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(q());
        }
    }

    private final int q() {
        if (this.f8093f == null) {
            this.f8093f = Integer.valueOf("measurement".concat(String.valueOf(this.f8322a.e().getPackageName())).hashCode());
        }
        return this.f8093f.intValue();
    }

    private final PendingIntent r() {
        Context e10 = this.f8322a.e();
        return PendingIntent.getBroadcast(e10, 0, new Intent().setClassName(e10, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.j1.f6445a);
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        AlarmManager alarmManager = this.f8091d;
        if (alarmManager != null) {
            alarmManager.cancel(r());
        }
        p();
        return false;
    }

    public final void m(long j10) {
        j();
        w6 w6Var = this.f8322a;
        w6Var.c();
        Context e10 = w6Var.e();
        if (!yd.j0(e10)) {
            w6Var.a().v().a("Receiver not registered/enabled");
        }
        if (!yd.E(e10, false)) {
            w6Var.a().v().a("Service not registered/enabled");
        }
        n();
        w6Var.a().w().b("Scheduling upload, millis", Long.valueOf(j10));
        w6Var.f().elapsedRealtime();
        w6Var.w();
        if (j10 < Math.max(0L, ((Long) c5.M.b(null)).longValue()) && !o().c()) {
            o().b(j10);
        }
        w6Var.c();
        Context e11 = w6Var.e();
        ComponentName componentName = new ComponentName(e11, "com.google.android.gms.measurement.AppMeasurementJobService");
        int q10 = q();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.k1.a(e11, new JobInfo.Builder(q10, componentName).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }

    public final void n() {
        j();
        this.f8322a.a().w().a("Unscheduling upload");
        AlarmManager alarmManager = this.f8091d;
        if (alarmManager != null) {
            alarmManager.cancel(r());
        }
        o().d();
        p();
    }
}
