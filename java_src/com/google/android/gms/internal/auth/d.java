package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class d extends n5.h {
    private final Bundle I;

    public d(Context context, Looper looper, n5.e eVar, e5.c cVar, m5.d dVar, m5.m mVar) {
        super(context, looper, 16, eVar, dVar, mVar);
        this.I = new Bundle();
    }

    @Override // n5.c
    protected final Bundle A() {
        return this.I;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // n5.c
    public final boolean S() {
        return true;
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return l5.k.f25303a;
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final boolean o() {
        n5.e j02 = j0();
        if (!TextUtils.isEmpty(j02.b()) && !j02.e(e5.b.f15358a).isEmpty()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        if (queryLocalInterface instanceof e) {
            return (e) queryLocalInterface;
        }
        return new e(iBinder);
    }
}
