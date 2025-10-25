package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class sa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f8018a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.w1 f8019b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ vb f8020c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sa(vb vbVar, ae aeVar, com.google.android.gms.internal.measurement.w1 w1Var) {
        this.f8018a = aeVar;
        this.f8019b = w1Var;
        Objects.requireNonNull(vbVar);
        this.f8020c = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.w1 w1Var;
        yd C;
        vb vbVar;
        w6 w6Var;
        String str = null;
        try {
            try {
                vbVar = this.f8020c;
                w6Var = vbVar.f8322a;
            } catch (RemoteException e10) {
                this.f8020c.f8322a.a().o().b("Failed to get app instance id", e10);
            }
            if (!w6Var.x().w().o(i6.s.ANALYTICS_STORAGE)) {
                w6Var.a().t().a("Analytics storage consent denied; will not get app instance id");
                vbVar.f8322a.B().E(null);
                w6Var.x().f7419h.b(null);
            } else {
                i6.e N = vbVar.N();
                if (N == null) {
                    w6Var.a().o().a("Failed to get app instance id");
                } else {
                    ae aeVar = this.f8018a;
                    n5.q.k(aeVar);
                    str = N.U0(aeVar);
                    if (str != null) {
                        vbVar.f8322a.B().E(str);
                        w6Var.x().f7419h.b(str);
                    }
                    vbVar.J();
                    vb vbVar2 = this.f8020c;
                    w1Var = this.f8019b;
                    C = vbVar2.f8322a.C();
                    C.a0(w1Var, str);
                }
            }
            C = w6Var.C();
            w1Var = this.f8019b;
            C.a0(w1Var, str);
        } catch (Throwable th) {
            vb vbVar3 = this.f8020c;
            vbVar3.f8322a.C().a0(this.f8019b, null);
            throw th;
        }
    }
}
