package n5;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class u0 extends c6.d implements l {
    public u0() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // c6.d
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                c6.e.b(parcel);
                B(parcel.readInt(), parcel.readStrongBinder(), (j1) c6.e.a(parcel, j1.CREATOR));
            } else {
                c6.e.b(parcel);
                K(parcel.readInt(), (Bundle) c6.e.a(parcel, Bundle.CREATOR));
            }
        } else {
            c6.e.b(parcel);
            h0(parcel.readInt(), parcel.readStrongBinder(), (Bundle) c6.e.a(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
