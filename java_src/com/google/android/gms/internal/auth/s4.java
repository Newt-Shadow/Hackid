package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class s4 extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.data.IGoogleAuthService");
    }

    public final void g1(m5.f fVar, g gVar) {
        Parcel k10 = k();
        j.d(k10, fVar);
        j.c(k10, gVar);
        f1(2, k10);
    }

    public final void h1(r4 r4Var, Account account, String str, Bundle bundle) {
        Parcel k10 = k();
        j.d(k10, r4Var);
        j.c(k10, account);
        k10.writeString(str);
        j.c(k10, bundle);
        f1(1, k10);
    }
}
