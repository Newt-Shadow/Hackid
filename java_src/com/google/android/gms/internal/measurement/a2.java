package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class a2 extends n0 implements d2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.d2
    public final int i() {
        Parcel a10 = a(2, k());
        int readInt = a10.readInt();
        a10.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.d2
    public final void m(String str, String str2, Bundle bundle, long j10) {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        p0.c(k10, bundle);
        k10.writeLong(j10);
        e1(1, k10);
    }
}
