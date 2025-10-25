package x5;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public abstract class e extends b implements f {
    public e() {
        super("com.google.android.gms.appset.internal.IAppSetIdCallback");
    }

    @Override // x5.b
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 1) {
            L((Status) c.a(parcel, Status.CREATOR), (c5.e) c.a(parcel, c5.e.CREATOR));
            return true;
        }
        return false;
    }
}
