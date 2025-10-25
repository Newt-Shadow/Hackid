package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class n8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f7798a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7799b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f7800c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f7801d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f7802e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n8(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.w1 w1Var, String str, String str2, boolean z10) {
        this.f7798a = w1Var;
        this.f7799b = str;
        this.f7800c = str2;
        this.f7801d = z10;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f7802e = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7802e.f7206a.J().h0(this.f7798a, this.f7799b, this.f7800c, this.f7801d);
    }
}
