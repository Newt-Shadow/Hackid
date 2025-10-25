package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import m6.l;
/* loaded from: classes.dex */
final class zzc extends ResultReceiver {
    final /* synthetic */ l zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(zzd zzdVar, Handler handler, l lVar) {
        super(handler);
        this.zza = lVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        this.zza.e(null);
    }
}
