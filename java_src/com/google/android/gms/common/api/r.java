package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class r implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        String str = null;
        l5.b bVar = null;
        int i10 = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            o5.b.w(parcel, q10);
                        } else {
                            bVar = (l5.b) o5.b.e(parcel, q10, l5.b.CREATOR);
                        }
                    } else {
                        pendingIntent = (PendingIntent) o5.b.e(parcel, q10, PendingIntent.CREATOR);
                    }
                } else {
                    str = o5.b.f(parcel, q10);
                }
            } else {
                i10 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new Status(i10, str, pendingIntent, bVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new Status[i10];
    }
}
