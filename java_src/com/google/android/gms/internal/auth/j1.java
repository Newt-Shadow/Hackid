package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public abstract class j1 extends c implements e2 {
    public static e2 d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        if (queryLocalInterface instanceof e2) {
            return (e2) queryLocalInterface;
        }
        return new j0(iBinder);
    }
}
