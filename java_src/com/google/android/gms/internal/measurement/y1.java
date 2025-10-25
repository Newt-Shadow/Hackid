package com.google.android.gms.internal.measurement;

import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class y1 extends o0 implements z1 {
    public y1() {
        super("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 2) {
            h();
            return true;
        }
        return false;
    }
}
