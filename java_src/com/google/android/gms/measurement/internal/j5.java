package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import n5.c;
/* loaded from: classes.dex */
public final class j5 extends n5.c {
    public j5(Context context, Looper looper, c.a aVar, c.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return l5.k.f25303a;
    }

    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (queryLocalInterface instanceof i6.e) {
            return (i6.e) queryLocalInterface;
        }
        return new d5(iBinder);
    }
}
