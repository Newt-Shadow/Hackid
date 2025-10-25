package com.google.android.gms.internal.auth;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public abstract class q4 extends c implements r4 {
    public q4() {
        super("com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback");
    }

    @Override // com.google.android.gms.internal.auth.c
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 2) {
            j.b(parcel);
            Q0((Status) j.a(parcel, Status.CREATOR), (Bundle) j.a(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
