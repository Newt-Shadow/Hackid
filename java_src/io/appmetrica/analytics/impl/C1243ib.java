package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: io.appmetrica.analytics.impl.ib  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1243ib implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C1267jb(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C1267jb[i10];
    }
}
