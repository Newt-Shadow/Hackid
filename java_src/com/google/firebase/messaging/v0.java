package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class v0 implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(u0 u0Var, Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.e(parcel, 2, u0Var.f8977a, false);
        o5.c.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public u0 createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            if (o5.b.k(q10) != 2) {
                o5.b.w(parcel, q10);
            } else {
                bundle = o5.b.a(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new u0(bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: b */
    public u0[] newArray(int i10) {
        return new u0[i10];
    }
}
