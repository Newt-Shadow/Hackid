package com.google.android.play.core.review.internal;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class zzg extends zzb implements zzh {
    public zzg() {
        super("com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
    }

    @Override // com.google.android.play.core.review.internal.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 == 2) {
            zzc.zzb(parcel);
            zzb((Bundle) zzc.zza(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
