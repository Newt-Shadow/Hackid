package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        int i10 = 102;
        long j10 = 3600000;
        long j11 = 600000;
        boolean z10 = false;
        boolean z11 = false;
        long j12 = Long.MAX_VALUE;
        int i11 = Integer.MAX_VALUE;
        float f10 = 0.0f;
        long j13 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 2:
                    j10 = o5.b.t(parcel, q10);
                    break;
                case 3:
                    j11 = o5.b.t(parcel, q10);
                    break;
                case 4:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 5:
                    j12 = o5.b.t(parcel, q10);
                    break;
                case 6:
                    i11 = o5.b.s(parcel, q10);
                    break;
                case 7:
                    f10 = o5.b.o(parcel, q10);
                    break;
                case 8:
                    j13 = o5.b.t(parcel, q10);
                    break;
                case 9:
                    z11 = o5.b.l(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new LocationRequest(i10, j10, j11, z10, j12, i11, f10, j13, z11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new LocationRequest[i10];
    }
}
