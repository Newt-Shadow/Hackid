package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7231a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ vb f7232b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(vb vbVar, ae aeVar) {
        this.f7231a = aeVar;
        Objects.requireNonNull(vbVar);
        this.f7232b = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f7232b;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            ae aeVar = this.f7231a;
            n5.q.k(aeVar);
            N.e0(aeVar);
            vbVar.J();
        } catch (RemoteException e10) {
            this.f7232b.f8322a.a().o().b("Failed to send measurementEnabled to the service", e10);
        }
    }
}
