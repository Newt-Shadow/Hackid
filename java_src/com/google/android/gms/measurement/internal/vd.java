package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class vd implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ud udVar, Parcel parcel, int i10) {
        int i11 = udVar.f8094a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.q(parcel, 2, udVar.f8095b, false);
        o5.c.n(parcel, 3, udVar.f8096c);
        o5.c.o(parcel, 4, udVar.f8097d, false);
        o5.c.i(parcel, 5, null, false);
        o5.c.q(parcel, 6, udVar.f8098e, false);
        o5.c.q(parcel, 7, udVar.f8099f, false);
        o5.c.g(parcel, 8, udVar.f8100g, false);
        o5.c.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        String str = null;
        Long l10 = null;
        Float f10 = null;
        String str2 = null;
        String str3 = null;
        Double d10 = null;
        long j10 = 0;
        int i10 = 0;
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
                    j10 = o5.b.t(parcel, q10);
                    break;
                case 4:
                    l10 = o5.b.u(parcel, q10);
                    break;
                case 5:
                    f10 = o5.b.p(parcel, q10);
                    break;
                case 6:
                    str2 = o5.b.f(parcel, q10);
                    break;
                case 7:
                    str3 = o5.b.f(parcel, q10);
                    break;
                case 8:
                    d10 = o5.b.n(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new ud(i10, str, j10, l10, f10, str2, str3, d10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ud[i10];
    }
}
