package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class xa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f8249a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f8250b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ e0 f8251c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f8252d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ vb f8253e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xa(vb vbVar, boolean z10, ae aeVar, boolean z11, e0 e0Var, Bundle bundle) {
        this.f8249a = aeVar;
        this.f8250b = z11;
        this.f8251c = e0Var;
        this.f8252d = bundle;
        Objects.requireNonNull(vbVar);
        this.f8253e = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vb vbVar = this.f8253e;
        i6.e N = vbVar.N();
        if (N == null) {
            vbVar.f8322a.a().o().a("Failed to send default event parameters to service");
            return;
        }
        e0 e0Var = null;
        if (vbVar.f8322a.w().H(null, c5.f7332c1)) {
            ae aeVar = this.f8249a;
            n5.q.k(aeVar);
            vb vbVar2 = this.f8253e;
            if (!this.f8250b) {
                e0Var = this.f8251c;
            }
            vbVar2.b0(N, e0Var, aeVar);
            return;
        }
        try {
            ae aeVar2 = this.f8249a;
            n5.q.k(aeVar2);
            N.w0(this.f8252d, aeVar2);
            vbVar.J();
        } catch (RemoteException e10) {
            this.f8253e.f8322a.a().o().b("Failed to send default event parameters to service", e10);
        }
    }
}
