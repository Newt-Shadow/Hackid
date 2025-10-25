package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
/* renamed from: io.appmetrica.analytics.impl.xf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1620xf implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        Bundle readBundle = parcel.readBundle(M6.class.getClassLoader());
        return new C1645yf((ContentValues) readBundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT"), (ResultReceiver) readBundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER"));
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new C1645yf[i10];
    }
}
