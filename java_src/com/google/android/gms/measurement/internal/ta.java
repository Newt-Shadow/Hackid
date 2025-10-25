package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ta implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f8055a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ vb f8056b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ta(vb vbVar, ae aeVar, boolean z10) {
        this.f8055a = aeVar;
        Objects.requireNonNull(vbVar);
        this.f8056b = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f8056b;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            ae aeVar = this.f8055a;
            n5.q.k(aeVar);
            w6 w6Var = vbVar.f8322a;
            m w10 = w6Var.w();
            b5 b5Var = c5.f7332c1;
            if (w10.H(null, b5Var)) {
                vbVar.b0(N, null, aeVar);
            }
            N.G0(aeVar);
            vbVar.f8322a.E().v();
            w6Var.w().H(null, b5Var);
            vbVar.b0(N, null, aeVar);
            vbVar.J();
        } catch (RemoteException e10) {
            this.f8056b.f8322a.a().o().b("Failed to send app launch to the service", e10);
        }
    }
}
