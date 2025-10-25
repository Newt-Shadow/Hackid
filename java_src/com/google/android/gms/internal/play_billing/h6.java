package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public abstract class h6 extends k6 implements i6 {
    public static i6 d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        if (queryLocalInterface instanceof i6) {
            return (i6) queryLocalInterface;
        }
        return new g6(iBinder);
    }
}
