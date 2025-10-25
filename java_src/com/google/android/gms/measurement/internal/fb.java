package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7538a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f7539b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ae f7540c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f7541d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ vb f7542e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(vb vbVar, String str, String str2, ae aeVar, com.google.android.gms.internal.measurement.w1 w1Var) {
        this.f7538a = str;
        this.f7539b = str2;
        this.f7540c = aeVar;
        this.f7541d = w1Var;
        Objects.requireNonNull(vbVar);
        this.f7542e = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.w1 w1Var;
        yd C;
        vb vbVar;
        i6.e N;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                vbVar = this.f7542e;
                N = vbVar.N();
            } catch (RemoteException e10) {
                this.f7542e.f8322a.a().o().d("Failed to get conditional properties; remote exception", this.f7538a, this.f7539b, e10);
            }
            if (N == null) {
                w6 w6Var = vbVar.f8322a;
                w6Var.a().o().c("Failed to get conditional properties; not connected to service", this.f7538a, this.f7539b);
                C = w6Var.C();
                w1Var = this.f7541d;
                C.g0(w1Var, arrayList);
            }
            ae aeVar = this.f7540c;
            n5.q.k(aeVar);
            arrayList = yd.h0(N.V0(this.f7538a, this.f7539b, aeVar));
            vbVar.J();
            vb vbVar2 = this.f7542e;
            w1Var = this.f7541d;
            C = vbVar2.f8322a.C();
            C.g0(w1Var, arrayList);
        } catch (Throwable th) {
            vb vbVar3 = this.f7542e;
            vbVar3.f8322a.C().g0(this.f7541d, arrayList);
            throw th;
        }
    }
}
