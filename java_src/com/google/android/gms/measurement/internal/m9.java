package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
final class m9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ id f7757a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f7758b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m9(AppMeasurementDynamiteService appMeasurementDynamiteService, id idVar) {
        this.f7757a = idVar;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f7758b = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7758b.f7206a.B().I(this.f7757a);
    }
}
