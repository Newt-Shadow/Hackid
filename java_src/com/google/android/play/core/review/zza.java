package com.google.android.play.core.review;

import android.app.PendingIntent;
/* loaded from: classes.dex */
final class zza extends ReviewInfo {
    private final PendingIntent zza;
    private final boolean zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(PendingIntent pendingIntent, boolean z10) {
        if (pendingIntent != null) {
            this.zza = pendingIntent;
            this.zzb = z10;
            return;
        }
        throw new NullPointerException("Null pendingIntent");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReviewInfo) {
            ReviewInfo reviewInfo = (ReviewInfo) obj;
            if (this.zza.equals(reviewInfo.zza()) && this.zzb == reviewInfo.zzb()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        if (true != this.zzb) {
            i10 = 1237;
        } else {
            i10 = 1231;
        }
        return hashCode ^ i10;
    }

    public final String toString() {
        String obj = this.zza.toString();
        boolean z10 = this.zzb;
        return "ReviewInfo{pendingIntent=" + obj + ", isNoOp=" + z10 + "}";
    }

    @Override // com.google.android.play.core.review.ReviewInfo
    final PendingIntent zza() {
        return this.zza;
    }

    @Override // com.google.android.play.core.review.ReviewInfo
    final boolean zzb() {
        return this.zzb;
    }
}
