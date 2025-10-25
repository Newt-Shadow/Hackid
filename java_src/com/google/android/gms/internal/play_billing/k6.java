package com.google.android.gms.internal.play_billing;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class k6 extends Binder implements IInterface {
    /* JADX INFO: Access modifiers changed from: protected */
    public k6(String str) {
        attachInterface(this, str);
    }

    protected abstract boolean a(int i10, Parcel parcel, Parcel parcel2, int i11);

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 > 16777215) {
            if (super.onTransact(i10, parcel, parcel2, i11)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return a(i10, parcel, parcel2, i11);
    }
}
