package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import m6.l;
/* loaded from: classes.dex */
final class zzh extends zzg {
    final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzi zziVar, l lVar, String str) {
        super(zziVar, new com.google.android.play.core.review.internal.zzi("OnRequestInstallCallback"), lVar);
        this.zzd = str;
    }

    @Override // com.google.android.play.core.review.zzg, com.google.android.play.core.review.internal.zzh
    public final void zzb(Bundle bundle) {
        super.zzb(bundle);
        this.zzb.e(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
