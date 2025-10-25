package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class jb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f7671a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f7672b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jb(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.w1 w1Var) {
        this.f7671a = w1Var;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f7672b = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppMeasurementDynamiteService appMeasurementDynamiteService = this.f7672b;
        appMeasurementDynamiteService.f7206a.C().e0(this.f7671a, appMeasurementDynamiteService.f7206a.d());
    }
}
