package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        String str = null;
        Long l10 = null;
        ArrayList arrayList = null;
        String str2 = null;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 2:
                    str = o5.b.f(parcel, q10);
                    break;
                case 3:
                    l10 = o5.b.u(parcel, q10);
                    break;
                case 4:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 5:
                    z11 = o5.b.l(parcel, q10);
                    break;
                case 6:
                    arrayList = o5.b.g(parcel, q10);
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
        return new TokenData(i10, str, l10, z10, z11, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new TokenData[i10];
    }
}
