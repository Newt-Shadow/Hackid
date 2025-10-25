package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class ja implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f7667a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7668b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7669c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f7670d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ja(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.w1 w1Var, String str, String str2) {
        this.f7667a = w1Var;
        this.f7668b = str;
        this.f7669c = str2;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f7670d = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7670d.f7206a.J().f0(this.f7667a, this.f7668b, this.f7669c);
    }
}
