package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class be implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        boolean z10 = false;
        int i10 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i11 = 0;
        int i12 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        String str = "";
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Boolean bool = null;
        ArrayList arrayList = null;
        String str11 = null;
        String str12 = null;
        int i13 = 100;
        boolean z13 = true;
        boolean z14 = true;
        long j17 = -2147483648L;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 2:
                    str5 = o5.b.f(parcel, q10);
                    break;
                case 3:
                    str6 = o5.b.f(parcel, q10);
                    break;
                case 4:
                    str7 = o5.b.f(parcel, q10);
                    break;
                case 5:
                    str8 = o5.b.f(parcel, q10);
                    break;
                case 6:
                    j10 = o5.b.t(parcel, q10);
                    break;
                case 7:
                    j11 = o5.b.t(parcel, q10);
                    break;
                case 8:
                    str9 = o5.b.f(parcel, q10);
                    break;
                case 9:
                    z13 = o5.b.l(parcel, q10);
                    break;
                case 10:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 11:
                    j17 = o5.b.t(parcel, q10);
                    break;
                case 12:
                    str10 = o5.b.f(parcel, q10);
                    break;
                case 13:
                case 17:
                case C1415p9.C /* 19 */:
                case 20:
                case Build.API_LEVELS.API_24 /* 24 */:
                case Build.API_LEVELS.API_33 /* 33 */:
                default:
                    o5.b.w(parcel, q10);
                    break;
                case 14:
                    j12 = o5.b.t(parcel, q10);
                    break;
                case 15:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 16:
                    z14 = o5.b.l(parcel, q10);
                    break;
                case 18:
                    z11 = o5.b.l(parcel, q10);
                    break;
                case 21:
                    bool = o5.b.m(parcel, q10);
                    break;
                case Build.API_LEVELS.API_22 /* 22 */:
                    j13 = o5.b.t(parcel, q10);
                    break;
                case Build.API_LEVELS.API_23 /* 23 */:
                    arrayList = o5.b.g(parcel, q10);
                    break;
                case 25:
                    str = o5.b.f(parcel, q10);
                    break;
                case 26:
                    str2 = o5.b.f(parcel, q10);
                    break;
                case 27:
                    str11 = o5.b.f(parcel, q10);
                    break;
                case Build.API_LEVELS.API_28 /* 28 */:
                    z12 = o5.b.l(parcel, q10);
                    break;
                case 29:
                    j14 = o5.b.t(parcel, q10);
                    break;
                case Build.API_LEVELS.API_30 /* 30 */:
                    i13 = o5.b.s(parcel, q10);
                    break;
                case Build.API_LEVELS.API_31 /* 31 */:
                    str3 = o5.b.f(parcel, q10);
                    break;
                case Build.API_LEVELS.API_32 /* 32 */:
                    i11 = o5.b.s(parcel, q10);
                    break;
                case Build.API_LEVELS.API_34 /* 34 */:
                    j15 = o5.b.t(parcel, q10);
                    break;
                case 35:
                    str12 = o5.b.f(parcel, q10);
                    break;
                case Build.API_LEVELS.API_36 /* 36 */:
                    str4 = o5.b.f(parcel, q10);
                    break;
                case 37:
                    j16 = o5.b.t(parcel, q10);
                    break;
                case C1415p9.K /* 38 */:
                    i12 = o5.b.s(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new ae(str5, str6, str7, str8, j10, j11, str9, z13, z10, j17, str10, j12, i10, z14, z11, bool, j13, arrayList, str, str2, str11, z12, j14, i13, str3, i11, j15, str12, str4, j16, i12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ae[i10];
    }
}
