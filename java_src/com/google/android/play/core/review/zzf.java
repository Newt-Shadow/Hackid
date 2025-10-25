package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import m6.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzf extends com.google.android.play.core.review.internal.zzj {
    final /* synthetic */ l zza;
    final /* synthetic */ zzi zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(zzi zziVar, l lVar, l lVar2) {
        super(lVar);
        this.zzb = zziVar;
        this.zza = lVar2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.IInterface, com.google.android.play.core.review.internal.zzf] */
    @Override // com.google.android.play.core.review.internal.zzj
    protected final void zza() {
        com.google.android.play.core.review.internal.zzi zziVar;
        String str;
        String str2;
        String str3;
        try {
            ?? zze = this.zzb.zza.zze();
            str2 = this.zzb.zzc;
            Bundle zza = zzj.zza();
            zzi zziVar2 = this.zzb;
            l lVar = this.zza;
            str3 = zziVar2.zzc;
            zze.zzc(str2, zza, new zzh(zziVar2, lVar, str3));
        } catch (RemoteException e10) {
            zziVar = zzi.zzb;
            str = this.zzb.zzc;
            zziVar.zzc(e10, "error requesting in-app review for %s", str);
            this.zza.d(new RuntimeException(e10));
        }
    }
}
