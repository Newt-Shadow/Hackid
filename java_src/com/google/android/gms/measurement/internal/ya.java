package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ya implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g0 f8292a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8293b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f8294c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ vb f8295d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ya(vb vbVar, g0 g0Var, String str, com.google.android.gms.internal.measurement.w1 w1Var) {
        this.f8292a = g0Var;
        this.f8293b = str;
        this.f8294c = w1Var;
        Objects.requireNonNull(vbVar);
        this.f8295d = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.w1 w1Var;
        yd C;
        vb vbVar;
        i6.e N;
        byte[] bArr = null;
        try {
            try {
                vbVar = this.f8295d;
                N = vbVar.N();
            } catch (RemoteException e10) {
                this.f8295d.f8322a.a().o().b("Failed to send event to the service to bundle", e10);
            }
            if (N == null) {
                w6 w6Var = vbVar.f8322a;
                w6Var.a().o().a("Discarding data. Failed to send event to service to bundle");
                C = w6Var.C();
                w1Var = this.f8294c;
                C.d0(w1Var, bArr);
            }
            bArr = N.m0(this.f8292a, this.f8293b);
            vbVar.J();
            vb vbVar2 = this.f8295d;
            w1Var = this.f8294c;
            C = vbVar2.f8322a.C();
            C.d0(w1Var, bArr);
        } catch (Throwable th) {
            vb vbVar3 = this.f8295d;
            vbVar3.f8322a.C().d0(this.f8294c, null);
            throw th;
        }
    }
}
