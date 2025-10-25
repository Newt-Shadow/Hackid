package x5;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
/* loaded from: classes.dex */
public final class d extends n5.h {
    /* JADX INFO: Access modifiers changed from: protected */
    public d(Context context, Looper looper, n5.e eVar, m5.d dVar, m5.m mVar) {
        super(context, looper, 300, eVar, dVar, mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.appset.internal.IAppSetService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.appset.service.START";
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
    public final int j() {
        return 212800000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appset.internal.IAppSetService");
        if (queryLocalInterface instanceof g) {
            return (g) queryLocalInterface;
        }
        return new g(iBinder);
    }

    @Override // n5.c
    public final l5.d[] v() {
        return c5.g.f5042b;
    }
}
