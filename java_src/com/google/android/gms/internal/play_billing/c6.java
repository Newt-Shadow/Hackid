package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class c6 extends k6 implements d6 {
    public c6() {
        super("com.android.vending.billing.IInAppBillingGetBillingConfigCallback");
    }

    @Override // com.google.android.gms.internal.play_billing.k6
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 1) {
            l6.b(parcel);
            c((Bundle) l6.a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
