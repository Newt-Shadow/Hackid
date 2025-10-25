package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class b2 extends o0 implements d2 {
    public b2() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            int i12 = i();
            parcel2.writeNoException();
            parcel2.writeInt(i12);
        } else {
            long readLong = parcel.readLong();
            p0.f(parcel);
            m(parcel.readString(), parcel.readString(), (Bundle) p0.b(parcel, Bundle.CREATOR), readLong);
            parcel2.writeNoException();
        }
        return true;
    }
}
