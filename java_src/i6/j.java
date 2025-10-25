package i6;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.o0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.measurement.internal.yc;
/* loaded from: classes.dex */
public abstract class j extends o0 implements k {
    public j() {
        super("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 2) {
            p0.f(parcel);
            J0((yc) p0.b(parcel, yc.CREATOR));
            return true;
        }
        return false;
    }
}
