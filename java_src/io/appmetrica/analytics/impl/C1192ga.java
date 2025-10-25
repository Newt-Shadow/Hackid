package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
/* renamed from: io.appmetrica.analytics.impl.ga  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1192ga implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        Boolean bool;
        Object readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
        if (readValue instanceof Boolean) {
            bool = (Boolean) readValue;
        } else {
            bool = null;
        }
        return new C1217ha(bool, IdentifierStatus.Companion.from(parcel.readString()), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C1217ha[i10];
    }
}
