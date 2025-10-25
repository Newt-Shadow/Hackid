package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import g6.t;
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        int i10 = 1000;
        int i11 = 1;
        int i12 = 1;
        long j10 = 0;
        t[] tVarArr = null;
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
                                tVarArr = (t[]) o5.b.h(parcel, q10, t.CREATOR);
                            }
                        } else {
                            i10 = o5.b.s(parcel, q10);
                        }
                    } else {
                        j10 = o5.b.t(parcel, q10);
                    }
                } else {
                    i12 = o5.b.s(parcel, q10);
                }
            } else {
                i11 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new LocationAvailability(i10, i11, i12, j10, tVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new LocationAvailability[i10];
    }
}
