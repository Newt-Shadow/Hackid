package com.google.android.play.core.review;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import java.util.Locale;
/* loaded from: classes.dex */
public class ReviewException extends b {
    public ReviewException(int i10) {
        super(new Status(i10, String.format(Locale.getDefault(), "Review Error(%d): %s", Integer.valueOf(i10), com.google.android.play.core.review.model.zza.zza(i10))));
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
