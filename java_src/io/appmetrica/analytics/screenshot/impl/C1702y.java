package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* renamed from: io.appmetrica.analytics.screenshot.impl.y  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1702y implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean z10;
        if (parcel.readByte() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        List createStringArrayList = parcel.createStringArrayList();
        if (createStringArrayList == null) {
            createStringArrayList = yc.o.h();
        }
        return new C1703z(z10, createStringArrayList, parcel.readLong());
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C1703z[i10];
    }
}
