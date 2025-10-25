package n5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class k1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Bundle bundle = null;
        f fVar = null;
        int i10 = 0;
        l5.d[] dVarArr = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            o5.b.w(parcel, q10);
                        } else {
                            fVar = (f) o5.b.e(parcel, q10, f.CREATOR);
                        }
                    } else {
                        i10 = o5.b.s(parcel, q10);
                    }
                } else {
                    dVarArr = (l5.d[]) o5.b.h(parcel, q10, l5.d.CREATOR);
                }
            } else {
                bundle = o5.b.a(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new j1(bundle, dVarArr, i10, fVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new j1[i10];
    }
}
