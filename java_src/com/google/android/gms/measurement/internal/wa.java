package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class wa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ da f8212a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ vb f8213b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wa(vb vbVar, da daVar) {
        this.f8212a = daVar;
        Objects.requireNonNull(vbVar);
        this.f8213b = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f8213b;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Failed to send current screen to service");
            return;
        }
        try {
            da daVar = this.f8212a;
            if (daVar == null) {
                N.F(0L, null, null, vbVar.f8322a.e().getPackageName());
            } else {
                N.F(daVar.f7449c, daVar.f7447a, daVar.f7448b, vbVar.f8322a.e().getPackageName());
            }
            vbVar.J();
        } catch (RemoteException e10) {
            this.f8213b.f8322a.a().o().b("Failed to send current screen to the service", e10);
        }
    }
}
