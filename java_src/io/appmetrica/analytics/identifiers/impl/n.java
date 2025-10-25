package io.appmetrica.analytics.identifiers.impl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2.dex */
public abstract class n extends Binder implements o {
    public n() {
        attachInterface(this, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
    }

    public static o a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
        if (queryLocalInterface != null && (queryLocalInterface instanceof o)) {
            return (o) queryLocalInterface;
        }
        return new m(iBinder);
    }

    public abstract /* synthetic */ String a();

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    public abstract /* synthetic */ boolean b();

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                return true;
            }
            parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            boolean b10 = b();
            parcel2.writeNoException();
            parcel2.writeInt(b10 ? 1 : 0);
            return true;
        }
        parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
        String a10 = a();
        parcel2.writeNoException();
        parcel2.writeString(a10);
        return true;
    }
}
