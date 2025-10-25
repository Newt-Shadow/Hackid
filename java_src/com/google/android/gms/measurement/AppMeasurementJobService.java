package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.cc;
import i6.f0;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_24)
/* loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements f0 {

    /* renamed from: a  reason: collision with root package name */
    private cc f7200a;

    private final cc d() {
        if (this.f7200a == null) {
            this.f7200a = new cc(this);
        }
        return this.f7200a;
    }

    @Override // i6.f0
    public final boolean a(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // i6.f0
    public final void b(Intent intent) {
    }

    @Override // i6.f0
    public final void c(JobParameters jobParameters, boolean z10) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        d().a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        d().b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        d();
        cc.i(intent);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        d().e(jobParameters);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        d();
        cc.j(intent);
        return true;
    }
}
