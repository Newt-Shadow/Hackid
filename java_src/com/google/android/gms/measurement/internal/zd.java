package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes.dex */
final class zd implements i6.x {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.d2 f8335a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f8336b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zd(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.d2 d2Var) {
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f8336b = appMeasurementDynamiteService;
        this.f8335a = d2Var;
    }

    @Override // i6.x
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f8335a.m(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            w6 w6Var = this.f8336b.f7206a;
            if (w6Var != null) {
                w6Var.a().r().b("Event listener threw exception", e10);
            }
        }
    }
}
