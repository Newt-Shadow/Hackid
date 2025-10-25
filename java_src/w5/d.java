package w5;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class d extends a implements f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // w5.f
    public final boolean D(boolean z10) {
        Parcel k10 = k();
        int i10 = c.f31935a;
        k10.writeInt(1);
        Parcel e12 = e1(2, k10);
        boolean a10 = c.a(e12);
        e12.recycle();
        return a10;
    }

    @Override // w5.f
    public final String f() {
        Parcel e12 = e1(1, k());
        String readString = e12.readString();
        e12.recycle();
        return readString;
    }

    @Override // w5.f
    public final boolean g() {
        Parcel e12 = e1(6, k());
        boolean a10 = c.a(e12);
        e12.recycle();
        return a10;
    }
}
