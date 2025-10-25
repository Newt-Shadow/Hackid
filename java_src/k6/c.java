package k6;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Intent intent = null;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        o5.b.w(parcel, q10);
                    } else {
                        intent = (Intent) o5.b.e(parcel, q10, Intent.CREATOR);
                    }
                } else {
                    i11 = o5.b.s(parcel, q10);
                }
            } else {
                i10 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new b(i10, i11, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new b[i10];
    }
}
