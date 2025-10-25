package z5;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
/* loaded from: classes.dex */
public final class j extends n5.h {
    public j(Context context, Looper looper, n5.e eVar, m5.d dVar, m5.m mVar) {
        super(context, looper, 126, eVar, dVar, mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }

    @Override // n5.c
    public final boolean S() {
        return true;
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return l5.k.f25303a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        if (queryLocalInterface instanceof g) {
            return (g) queryLocalInterface;
        }
        return new g(iBinder);
    }

    @Override // n5.c
    public final l5.d[] v() {
        return d.f33550e;
    }
}
