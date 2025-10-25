package k6;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        ArrayList arrayList = null;
        String str = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    o5.b.w(parcel, q10);
                } else {
                    str = o5.b.f(parcel, q10);
                }
            } else {
                arrayList = o5.b.g(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new h(arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new h[i10];
    }
}
