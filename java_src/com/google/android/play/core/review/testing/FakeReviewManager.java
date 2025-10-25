package com.google.android.play.core.review.testing;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.review.ReviewException;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import m6.Task;
import m6.n;
/* loaded from: classes.dex */
public class FakeReviewManager implements ReviewManager {
    private final Context zza;
    private ReviewInfo zzb;

    public FakeReviewManager(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public Task launchReviewFlow(Activity activity, ReviewInfo reviewInfo) {
        if (reviewInfo != this.zzb) {
            return n.d(new ReviewException(-2));
        }
        return n.e(null);
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public Task requestReviewFlow() {
        ReviewInfo zzc = ReviewInfo.zzc(PendingIntent.getBroadcast(this.zza, 0, new Intent(), 67108864), false);
        this.zzb = zzc;
        return n.e(zzc);
    }
}
