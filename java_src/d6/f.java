package d6;

import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class f extends o implements g {
    public f() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // d6.o
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            f();
        } else {
            i0((b) w.b(parcel, b.CREATOR));
        }
        return true;
    }
}
