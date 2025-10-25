package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: io.appmetrica.analytics.screenshot.impl.w  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1700w implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean z10;
        if (parcel.readByte() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new C1701x(z10);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C1701x[i10];
    }
}
