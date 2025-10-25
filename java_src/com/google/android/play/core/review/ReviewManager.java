package com.google.android.play.core.review;

import android.app.Activity;
import m6.Task;
/* loaded from: classes.dex */
public interface ReviewManager {
    Task launchReviewFlow(Activity activity, ReviewInfo reviewInfo);

    Task requestReviewFlow();
}
