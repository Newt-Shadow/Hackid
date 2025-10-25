package g6;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
/* loaded from: classes.dex */
public abstract class n extends d6.o implements o {
    public n() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    public static o d(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        if (queryLocalInterface instanceof o) {
            return (o) queryLocalInterface;
        }
        return new m(iBinder);
    }

    @Override // d6.o
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            N((LocationAvailability) d6.w.b(parcel, LocationAvailability.CREATOR));
        } else {
            v((LocationResult) d6.w.b(parcel, LocationResult.CREATOR));
        }
        return true;
    }
}
