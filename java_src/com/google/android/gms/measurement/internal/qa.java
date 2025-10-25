package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class qa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7940a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ vb f7941b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qa(vb vbVar, ae aeVar) {
        this.f7940a = aeVar;
        Objects.requireNonNull(vbVar);
        this.f7941b = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f7941b;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            ae aeVar = this.f7940a;
            n5.q.k(aeVar);
            N.H(aeVar);
        } catch (RemoteException e10) {
            this.f7941b.f8322a.a().o().b("Failed to reset data on the service: remote exception", e10);
        }
        this.f7941b.J();
    }
}
