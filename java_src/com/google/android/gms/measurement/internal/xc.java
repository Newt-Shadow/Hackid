package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class xc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        byte[] bArr = null;
        String str = null;
        Bundle bundle = null;
        String str2 = null;
        long j10 = 0;
        long j11 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    j10 = o5.b.t(parcel, q10);
                    break;
                case 2:
                    bArr = o5.b.b(parcel, q10);
                    break;
                case 3:
                    str = o5.b.f(parcel, q10);
                    break;
                case 4:
                    bundle = o5.b.a(parcel, q10);
                    break;
                case 5:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 6:
                    j11 = o5.b.t(parcel, q10);
                    break;
                case 7:
                    str2 = o5.b.f(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new wc(j10, bArr, str, bundle, i10, j11, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new wc[i10];
    }
}
