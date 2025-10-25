package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class e6 extends k6 implements f6 {
    public e6() {
        super("com.android.vending.billing.IInAppBillingIsAlternativeBillingOnlyAvailableCallback");
    }

    @Override // com.google.android.gms.internal.play_billing.k6
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 1) {
            l6.b(parcel);
            c((Bundle) l6.a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
