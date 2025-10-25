package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class h2 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Bundle bundle = null;
        String str = null;
        boolean z10 = false;
        long j10 = 0;
        long j11 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 7) {
                            if (k10 != 8) {
                                o5.b.w(parcel, q10);
                            } else {
                                str = o5.b.f(parcel, q10);
                            }
                        } else {
                            bundle = o5.b.a(parcel, q10);
                        }
                    } else {
                        z10 = o5.b.l(parcel, q10);
                    }
                } else {
                    j11 = o5.b.t(parcel, q10);
                }
            } else {
                j10 = o5.b.t(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new g2(j10, j11, z10, bundle, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new g2[i10];
    }
}
