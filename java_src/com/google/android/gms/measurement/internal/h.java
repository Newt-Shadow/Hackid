package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        long j10 = 0;
        long j11 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        o5.b.w(parcel, q10);
                    } else {
                        j11 = o5.b.t(parcel, q10);
                    }
                } else {
                    i10 = o5.b.s(parcel, q10);
                }
            } else {
                j10 = o5.b.t(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new g(j10, i10, j11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new g[i10];
    }
}
