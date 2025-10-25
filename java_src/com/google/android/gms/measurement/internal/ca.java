package com.google.android.gms.measurement.internal;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.os.PersistableBundle;
/* loaded from: classes.dex */
public final class ca extends e5 {

    /* renamed from: c  reason: collision with root package name */
    private JobScheduler f7400c;

    public ca(w6 w6Var) {
        super(w6Var);
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final void n() {
        this.f7400c = (JobScheduler) this.f8322a.e().getSystemService("jobscheduler");
    }

    public final void o(long j10) {
        String str;
        j();
        h();
        JobScheduler jobScheduler = this.f7400c;
        if (jobScheduler != null && jobScheduler.getPendingJob(p()) != null) {
            this.f8322a.a().w().a("[sgtm] There's an existing pending job, skip this schedule.");
            return;
        }
        com.google.android.gms.internal.measurement.p7 q10 = q();
        if (q10 == com.google.android.gms.internal.measurement.p7.CLIENT_UPLOAD_ELIGIBLE) {
            w6 w6Var = this.f8322a;
            w6Var.a().w().b("[sgtm] Scheduling Scion upload, millis", Long.valueOf(j10));
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.SCION_UPLOAD");
            int schedule = ((JobScheduler) n5.q.k(this.f7400c)).schedule(new JobInfo.Builder(p(), new ComponentName(w6Var.e(), "com.google.android.gms.measurement.AppMeasurementJobService")).setRequiredNetworkType(1).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build());
            n5 w10 = w6Var.a().w();
            if (schedule == 1) {
                str = "SUCCESS";
            } else {
                str = "FAILURE";
            }
            w10.b("[sgtm] Scion upload job scheduled with result", str);
            return;
        }
        this.f8322a.a().w().b("[sgtm] Not eligible for Scion upload", q10.name());
    }

    final int p() {
        return "measurement-client".concat(String.valueOf(this.f8322a.e().getPackageName())).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.internal.measurement.p7 q() {
        j();
        h();
        if (this.f7400c != null) {
            w6 w6Var = this.f8322a;
            if (w6Var.w().P()) {
                w6 w6Var2 = this.f8322a;
                if (w6Var2.L().u() >= 119000) {
                    if (!yd.F(w6Var.e(), "com.google.android.gms.measurement.AppMeasurementJobService")) {
                        return com.google.android.gms.internal.measurement.p7.MEASUREMENT_SERVICE_NOT_ENABLED;
                    }
                    if (!w6Var2.J().y()) {
                        return com.google.android.gms.internal.measurement.p7.NON_PLAY_MODE;
                    }
                    return com.google.android.gms.internal.measurement.p7.CLIENT_UPLOAD_ELIGIBLE;
                }
                return com.google.android.gms.internal.measurement.p7.SDK_TOO_OLD;
            }
            return com.google.android.gms.internal.measurement.p7.NOT_ENABLED_IN_MANIFEST;
        }
        return com.google.android.gms.internal.measurement.p7.MISSING_JOB_SCHEDULER;
    }
}
