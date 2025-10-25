package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.review.internal.zzt;
import com.google.android.play.core.review.internal.zzw;
import m6.Task;
import m6.l;
import m6.n;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class zzi {
    private static final com.google.android.play.core.review.internal.zzi zzb = new com.google.android.play.core.review.internal.zzi("ReviewService");
    zzt zza;
    private final String zzc;

    public zzi(Context context) {
        this.zzc = context.getPackageName();
        if (zzw.zza(context)) {
            this.zza = new zzt(context, zzb, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), zze.zza, null, null);
        }
    }

    public final Task zza() {
        com.google.android.play.core.review.internal.zzi zziVar = zzb;
        zziVar.zzd("requestInAppReview (%s)", this.zzc);
        if (this.zza == null) {
            zziVar.zzb("Play Store app is either not installed or not the official version", new Object[0]);
            return n.d(new ReviewException(-1));
        }
        l lVar = new l();
        this.zza.zzp(new zzf(this, lVar, lVar), lVar);
        return lVar.a();
    }
}
