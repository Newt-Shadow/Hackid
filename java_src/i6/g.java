package i6;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.o0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.measurement.internal.rc;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class g extends o0 implements h {
    public g() {
        super("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 2) {
            ArrayList createTypedArrayList = parcel.createTypedArrayList(rc.CREATOR);
            p0.f(parcel);
            M0(createTypedArrayList);
            return true;
        }
        return false;
    }
}
