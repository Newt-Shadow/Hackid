package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;
/* loaded from: classes.dex */
final class p4 extends n5.h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p4(Context context, Looper looper, n5.e eVar, m5.d dVar, m5.m mVar) {
        super(context, looper, 224, eVar, dVar, mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.auth.account.authapi.START";
    }

    @Override // n5.c
    protected final boolean I() {
        return true;
    }

    @Override // n5.c
    public final boolean S() {
        return true;
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final void c(String str) {
        Log.w("GoogleAuthSvcClientImpl", "GoogleAuthServiceClientImpl disconnected with reason: ".concat(String.valueOf(str)));
        super.c(str);
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return 17895000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.data.IGoogleAuthService");
        if (queryLocalInterface instanceof s4) {
            return (s4) queryLocalInterface;
        }
        return new s4(iBinder);
    }

    @Override // n5.c
    public final l5.d[] v() {
        return new l5.d[]{d5.e.f15001l, d5.e.f15000k, d5.e.f14990a};
    }
}
