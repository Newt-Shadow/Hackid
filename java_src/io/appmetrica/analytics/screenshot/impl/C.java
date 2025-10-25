package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class C implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new D((C1701x) parcel.readParcelable(C1701x.class.getClassLoader()), (F) parcel.readParcelable(F.class.getClassLoader()), (C1703z) parcel.readParcelable(C1703z.class.getClassLoader()));
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new D[i10];
    }
}
