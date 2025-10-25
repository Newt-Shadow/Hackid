package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class h0 implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(g0 g0Var, Parcel parcel, int i10) {
        String str = g0Var.f7551a;
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 2, str, false);
        o5.c.p(parcel, 3, g0Var.f7552b, i10, false);
        o5.c.q(parcel, 4, g0Var.f7553c, false);
        o5.c.n(parcel, 5, g0Var.f7554d);
        o5.c.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        long j10 = 0;
        String str = null;
        e0 e0Var = null;
        String str2 = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 2) {
                if (k10 != 3) {
                    if (k10 != 4) {
                        if (k10 != 5) {
                            o5.b.w(parcel, q10);
                        } else {
                            j10 = o5.b.t(parcel, q10);
                        }
                    } else {
                        str2 = o5.b.f(parcel, q10);
                    }
                } else {
                    e0Var = (e0) o5.b.e(parcel, q10, e0.CREATOR);
                }
            } else {
                str = o5.b.f(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new g0(str, e0Var, str2, j10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new g0[i10];
    }
}
