package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class j implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        String str = null;
        String str2 = null;
        ud udVar = null;
        String str3 = null;
        g0 g0Var = null;
        g0 g0Var2 = null;
        g0 g0Var3 = null;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        boolean z10 = false;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 2:
                    str = o5.b.f(parcel, q10);
                    break;
                case 3:
                    str2 = o5.b.f(parcel, q10);
                    break;
                case 4:
                    udVar = (ud) o5.b.e(parcel, q10, ud.CREATOR);
                    break;
                case 5:
                    j10 = o5.b.t(parcel, q10);
                    break;
                case 6:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 7:
                    str3 = o5.b.f(parcel, q10);
                    break;
                case 8:
                    g0Var = (g0) o5.b.e(parcel, q10, g0.CREATOR);
                    break;
                case 9:
                    j11 = o5.b.t(parcel, q10);
                    break;
                case 10:
                    g0Var2 = (g0) o5.b.e(parcel, q10, g0.CREATOR);
                    break;
                case 11:
                    j12 = o5.b.t(parcel, q10);
                    break;
                case 12:
                    g0Var3 = (g0) o5.b.e(parcel, q10, g0.CREATOR);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new i(str, str2, udVar, j10, z10, str3, g0Var, j11, g0Var2, j12, g0Var3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new i[i10];
    }
}
