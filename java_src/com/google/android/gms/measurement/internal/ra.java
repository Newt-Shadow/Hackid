package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ra implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7967a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ae f7968b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ vb f7969c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ra(vb vbVar, AtomicReference atomicReference, ae aeVar) {
        this.f7967a = atomicReference;
        this.f7968b = aeVar;
        Objects.requireNonNull(vbVar);
        this.f7969c = vbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        vb vbVar;
        w6 w6Var;
        AtomicReference atomicReference2 = this.f7967a;
        synchronized (atomicReference2) {
            try {
                vbVar = this.f7969c;
                w6Var = vbVar.f8322a;
            } catch (RemoteException e10) {
                this.f7969c.f8322a.a().o().b("Failed to get app instance id", e10);
                atomicReference = this.f7967a;
            }
            if (!w6Var.x().w().o(i6.s.ANALYTICS_STORAGE)) {
                w6Var.a().t().a("Analytics storage consent denied; will not get app instance id");
                vbVar.f8322a.B().E(null);
                w6Var.x().f7419h.b(null);
                atomicReference2.set(null);
                atomicReference2.notify();
                return;
            }
            i6.e N = vbVar.N();
            if (N == null) {
                w6Var.a().o().a("Failed to get app instance id");
                atomicReference2.notify();
                return;
            }
            ae aeVar = this.f7968b;
            n5.q.k(aeVar);
            atomicReference2.set(N.U0(aeVar));
            String str = (String) atomicReference2.get();
            if (str != null) {
                vbVar.f8322a.B().E(str);
                w6Var.x().f7419h.b(str);
            }
            vbVar.J();
            atomicReference = this.f7967a;
            atomicReference.notify();
        }
    }
}
