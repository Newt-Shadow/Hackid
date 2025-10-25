package com.google.android.play.core.review;

import android.os.Bundle;
import com.google.android.play.core.review.internal.zzt;
import m6.l;
/* loaded from: classes.dex */
class zzg extends com.google.android.play.core.review.internal.zzg {
    final com.google.android.play.core.review.internal.zzi zza;
    final l zzb;
    final /* synthetic */ zzi zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzi zziVar, com.google.android.play.core.review.internal.zzi zziVar2, l lVar) {
        this.zzc = zziVar;
        this.zza = zziVar2;
        this.zzb = lVar;
    }

    @Override // com.google.android.play.core.review.internal.zzh
    public void zzb(Bundle bundle) {
        zzt zztVar = this.zzc.zza;
        if (zztVar != null) {
            zztVar.zzr(this.zzb);
        }
        this.zza.zzd("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
