package l5;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class i0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        boolean z10 = false;
        String str = null;
        IBinder iBinder = null;
        boolean z11 = false;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            o5.b.w(parcel, q10);
                        } else {
                            z11 = o5.b.l(parcel, q10);
                        }
                    } else {
                        z10 = o5.b.l(parcel, q10);
                    }
                } else {
                    iBinder = o5.b.r(parcel, q10);
                }
            } else {
                str = o5.b.f(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new h0(str, iBinder, z10, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new h0[i10];
    }
}
