package l5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class g0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        boolean z10 = false;
        int i10 = 0;
        String str = null;
        int i11 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            o5.b.w(parcel, q10);
                        } else {
                            i10 = o5.b.s(parcel, q10);
                        }
                    } else {
                        i11 = o5.b.s(parcel, q10);
                    }
                } else {
                    str = o5.b.f(parcel, q10);
                }
            } else {
                z10 = o5.b.l(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new f0(z10, str, i11, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new f0[i10];
    }
}
