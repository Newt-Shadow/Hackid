package n5;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class r0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        IBinder iBinder = null;
        l5.b bVar = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            if (k10 != 5) {
                                o5.b.w(parcel, q10);
                            } else {
                                z11 = o5.b.l(parcel, q10);
                            }
                        } else {
                            z10 = o5.b.l(parcel, q10);
                        }
                    } else {
                        bVar = (l5.b) o5.b.e(parcel, q10, l5.b.CREATOR);
                    }
                } else {
                    iBinder = o5.b.r(parcel, q10);
                }
            } else {
                i10 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new q0(i10, iBinder, bVar, z10, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new q0[i10];
    }
}
