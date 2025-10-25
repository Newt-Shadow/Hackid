package g6;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class u implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        int i10 = 1;
        int i11 = 1;
        long j10 = -1;
        long j11 = -1;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            o5.b.w(parcel, q10);
                        } else {
                            j11 = o5.b.t(parcel, q10);
                        }
                    } else {
                        j10 = o5.b.t(parcel, q10);
                    }
                } else {
                    i11 = o5.b.s(parcel, q10);
                }
            } else {
                i10 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new t(i10, i11, j10, j11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new t[i10];
    }
}
