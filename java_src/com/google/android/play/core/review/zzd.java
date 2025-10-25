package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import m6.Task;
import m6.l;
import m6.n;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class zzd implements ReviewManager {
    private final zzi zza;
    private final Handler zzb = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzi zziVar) {
        this.zza = zziVar;
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public final Task launchReviewFlow(Activity activity, ReviewInfo reviewInfo) {
        if (reviewInfo.zzb()) {
            return n.e(null);
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.zza());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        l lVar = new l();
        intent.putExtra("result_receiver", new zzc(this, this.zzb, lVar));
        activity.startActivity(intent);
        return lVar.a();
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public final Task requestReviewFlow() {
        return this.zza.zza();
    }
}
