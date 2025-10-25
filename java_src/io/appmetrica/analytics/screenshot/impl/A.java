package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class A implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean z10;
        if (parcel.readByte() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new B(z10, (D) parcel.readParcelable(D.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new B[i10];
    }
}
