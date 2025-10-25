package com.google.android.play.core.review.internal;

import m6.l;
/* loaded from: classes.dex */
public abstract class zzj implements Runnable {
    private final l zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj() {
        this.zza = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zza();
        } catch (Exception e10) {
            zzc(e10);
        }
    }

    protected abstract void zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final l zzb() {
        return this.zza;
    }

    public final void zzc(Exception exc) {
        l lVar = this.zza;
        if (lVar != null) {
            lVar.d(exc);
        }
    }

    public zzj(l lVar) {
        this.zza = lVar;
    }
}
