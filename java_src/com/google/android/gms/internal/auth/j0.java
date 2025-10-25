package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class j0 extends a implements e2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override // com.google.android.gms.internal.auth.e2
    public final Bundle F0(String str, Bundle bundle) {
        Parcel k10 = k();
        k10.writeString(str);
        j.c(k10, bundle);
        Parcel e12 = e1(2, k10);
        Bundle bundle2 = (Bundle) j.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.e2
    public final Bundle y(Account account, String str, Bundle bundle) {
        Parcel k10 = k();
        j.c(k10, account);
        k10.writeString(str);
        j.c(k10, bundle);
        Parcel e12 = e1(5, k10);
        Bundle bundle2 = (Bundle) j.a(e12, Bundle.CREATOR);
        e12.recycle();
        return bundle2;
    }
}
