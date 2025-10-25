package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class v1 extends o0 implements w1 {
    public v1() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 1) {
            p0.f(parcel);
            zzb((Bundle) p0.b(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
