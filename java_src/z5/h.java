package z5;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public abstract class h extends e implements i {
    public h() {
        super("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback");
    }

    @Override // z5.e
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 1) {
            f.b(parcel);
            K0((Status) f.a(parcel, Status.CREATOR));
            return true;
        }
        return false;
    }
}
