package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class u7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f8081a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g0 f8082b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f8083c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f8084d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u7(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.w1 w1Var, g0 g0Var, String str) {
        this.f8081a = w1Var;
        this.f8082b = g0Var;
        this.f8083c = str;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f8084d = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8084d.f7206a.J().B(this.f8081a, this.f8082b, this.f8083c);
    }
}
