package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class q0 extends n0 implements s0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final Bundle Q(Bundle bundle) {
        Parcel k10 = k();
        p0.c(k10, bundle);
        Parcel a10 = a(1, k10);
        Bundle bundle2 = (Bundle) p0.b(a10, Bundle.CREATOR);
        a10.recycle();
        return bundle2;
    }
}
