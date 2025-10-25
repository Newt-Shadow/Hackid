package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class t6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f8046a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f8047b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t6(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.w1 w1Var) {
        this.f8046a = w1Var;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f8047b = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8047b.f7206a.J().r(this.f8046a);
    }
}
