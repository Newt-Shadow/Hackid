package d6;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class h extends a implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // d6.i
    public final Location b(String str) {
        Parcel k10 = k();
        k10.writeString(str);
        Parcel e12 = e1(80, k10);
        Location location = (Location) w.b(e12, Location.CREATOR);
        e12.recycle();
        return location;
    }

    @Override // d6.i
    public final void c1(boolean z10) {
        Parcel k10 = k();
        w.a(k10, z10);
        f1(12, k10);
    }

    @Override // d6.i
    public final Location n() {
        Parcel e12 = e1(7, k());
        Location location = (Location) w.b(e12, Location.CREATOR);
        e12.recycle();
        return location;
    }

    @Override // d6.i
    public final void v0(r rVar) {
        Parcel k10 = k();
        w.c(k10, rVar);
        f1(59, k10);
    }
}
