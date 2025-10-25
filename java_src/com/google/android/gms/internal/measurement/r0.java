package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public abstract class r0 extends o0 implements s0 {
    public static s0 d(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        if (queryLocalInterface instanceof s0) {
            return (s0) queryLocalInterface;
        }
        return new q0(iBinder);
    }
}
