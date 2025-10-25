package k6;

import android.os.Parcel;
import android.os.Parcelable;
import n5.q0;
/* loaded from: classes.dex */
public final class m implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        l5.b bVar = null;
        int i10 = 0;
        q0 q0Var = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        o5.b.w(parcel, q10);
                    } else {
                        q0Var = (q0) o5.b.e(parcel, q10, q0.CREATOR);
                    }
                } else {
                    bVar = (l5.b) o5.b.e(parcel, q10, l5.b.CREATOR);
                }
            } else {
                i10 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new l(i10, bVar, q0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new l[i10];
    }
}
