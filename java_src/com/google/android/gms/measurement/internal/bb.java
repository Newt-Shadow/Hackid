package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7293a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ vb f7294b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(vb vbVar, ae aeVar) {
        this.f7293a = aeVar;
        Objects.requireNonNull(vbVar);
        this.f7294b = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f7294b;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Failed to send consent settings to service");
            return;
        }
        try {
            ae aeVar = this.f7293a;
            n5.q.k(aeVar);
            N.a1(aeVar);
            vbVar.J();
        } catch (RemoteException e10) {
            this.f7294b.f8322a.a().o().b("Failed to send consent settings to the service", e10);
        }
    }
}
