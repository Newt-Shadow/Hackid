package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import u5.a;
/* loaded from: classes.dex */
public final class m extends c6.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int e1() {
        Parcel a10 = a(6, k());
        int readInt = a10.readInt();
        a10.recycle();
        return readInt;
    }

    public final int f1(u5.a aVar, String str, boolean z10) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(z10 ? 1 : 0);
        Parcel a10 = a(3, k10);
        int readInt = a10.readInt();
        a10.recycle();
        return readInt;
    }

    public final int g1(u5.a aVar, String str, boolean z10) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(z10 ? 1 : 0);
        Parcel a10 = a(5, k10);
        int readInt = a10.readInt();
        a10.recycle();
        return readInt;
    }

    public final u5.a h1(u5.a aVar, String str, int i10) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(i10);
        Parcel a10 = a(2, k10);
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }

    public final u5.a i1(u5.a aVar, String str, int i10, u5.a aVar2) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(i10);
        c6.e.d(k10, aVar2);
        Parcel a10 = a(8, k10);
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }

    public final u5.a j1(u5.a aVar, String str, int i10) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(i10);
        Parcel a10 = a(4, k10);
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }

    public final u5.a k1(u5.a aVar, String str, boolean z10, long j10) {
        Parcel k10 = k();
        c6.e.d(k10, aVar);
        k10.writeString(str);
        k10.writeInt(z10 ? 1 : 0);
        k10.writeLong(j10);
        Parcel a10 = a(7, k10);
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }
}
