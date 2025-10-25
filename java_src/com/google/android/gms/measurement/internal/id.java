package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes.dex */
final class id implements i6.w {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.d2 f7645a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f7646b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public id(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.d2 d2Var) {
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f7646b = appMeasurementDynamiteService;
        this.f7645a = d2Var;
    }

    @Override // i6.w
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f7645a.m(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            w6 w6Var = this.f7646b.f7206a;
            if (w6Var != null) {
                w6Var.a().r().b("Event interceptor threw exception", e10);
            }
        }
    }
}
