package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class u1 extends n0 implements w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.w1
    public final void zzb(Bundle bundle) {
        Parcel k10 = k();
        p0.c(k10, bundle);
        e1(1, k10);
    }
}
