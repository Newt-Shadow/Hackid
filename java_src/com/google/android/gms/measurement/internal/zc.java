package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class zc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            if (o5.b.k(q10) != 1) {
                o5.b.w(parcel, q10);
            } else {
                arrayList = o5.b.i(parcel, q10, wc.CREATOR);
            }
        }
        o5.b.j(parcel, x10);
        return new yc(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new yc[i10];
    }
}
