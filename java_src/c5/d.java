package c5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    o5.b.w(parcel, q10);
                } else {
                    str2 = o5.b.f(parcel, q10);
                }
            } else {
                str = o5.b.f(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new c(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new c[i10];
    }
}
