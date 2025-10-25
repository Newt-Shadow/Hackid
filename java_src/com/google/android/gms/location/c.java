package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        List list = LocationResult.f7196b;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            if (o5.b.k(q10) != 1) {
                o5.b.w(parcel, q10);
            } else {
                list = o5.b.i(parcel, q10, Location.CREATOR);
            }
        }
        o5.b.j(parcel, x10);
        return new LocationResult(list);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new LocationResult[i10];
    }
}
