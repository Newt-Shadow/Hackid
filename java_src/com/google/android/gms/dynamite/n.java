package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import u5.a;
/* loaded from: classes.dex */
public final class n extends c6.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final u5.a e1(u5.a aVar, String str, int i10, u5.a aVar2) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(i10);
        c6.e.d(k10, aVar2);
        Parcel a10 = a(2, k10);
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }

    public final u5.a f1(u5.a aVar, String str, int i10, u5.a aVar2) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(i10);
        c6.e.d(k10, aVar2);
        Parcel a10 = a(3, k10);
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }
}
