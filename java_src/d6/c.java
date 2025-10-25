package d6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Status status = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            if (o5.b.k(q10) != 1) {
                o5.b.w(parcel, q10);
            } else {
                status = (Status) o5.b.e(parcel, q10, Status.CREATOR);
            }
        }
        o5.b.j(parcel, x10);
        return new b(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new b[i10];
    }
}
