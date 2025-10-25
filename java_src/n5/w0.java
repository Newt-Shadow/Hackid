package n5;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class w0 extends c6.a implements y0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // n5.y0
    public final boolean H0(l5.h0 h0Var, u5.a aVar) {
        Parcel k10 = k();
        c6.e.c(k10, h0Var);
        c6.e.d(k10, aVar);
        Parcel a10 = a(5, k10);
        boolean e10 = c6.e.e(a10);
        a10.recycle();
        return e10;
    }

    @Override // n5.y0
    public final boolean j() {
        Parcel a10 = a(7, k());
        boolean e10 = c6.e.e(a10);
        a10.recycle();
        return e10;
    }

    @Override // n5.y0
    public final l5.f0 j0(l5.d0 d0Var) {
        Parcel k10 = k();
        c6.e.c(k10, d0Var);
        Parcel a10 = a(8, k10);
        l5.f0 f0Var = (l5.f0) c6.e.a(a10, l5.f0.CREATOR);
        a10.recycle();
        return f0Var;
    }

    @Override // n5.y0
    public final l5.f0 q0(l5.d0 d0Var) {
        Parcel k10 = k();
        c6.e.c(k10, d0Var);
        Parcel a10 = a(6, k10);
        l5.f0 f0Var = (l5.f0) c6.e.a(a10, l5.f0.CREATOR);
        a10.recycle();
        return f0Var;
    }
}
