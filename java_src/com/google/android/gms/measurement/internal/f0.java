package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class f0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            if (o5.b.k(q10) != 2) {
                o5.b.w(parcel, q10);
            } else {
                bundle = o5.b.a(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new e0(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new e0[i10];
    }
}
