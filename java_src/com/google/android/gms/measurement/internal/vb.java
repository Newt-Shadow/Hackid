package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class vb extends e5 {

    /* renamed from: c  reason: collision with root package name */
    private final pb f8141c;

    /* renamed from: d  reason: collision with root package name */
    private i6.e f8142d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Boolean f8143e;

    /* renamed from: f  reason: collision with root package name */
    private final x f8144f;

    /* renamed from: g  reason: collision with root package name */
    private ScheduledExecutorService f8145g;

    /* renamed from: h  reason: collision with root package name */
    private final qc f8146h;

    /* renamed from: i  reason: collision with root package name */
    private final List f8147i;

    /* renamed from: j  reason: collision with root package name */
    private final x f8148j;

    /* JADX INFO: Access modifiers changed from: protected */
    public vb(w6 w6Var) {
        super(w6Var);
        this.f8147i = new ArrayList();
        this.f8146h = new qc(w6Var.f());
        this.f8141c = new pb(this);
        this.f8144f = new va(this, w6Var);
        this.f8148j = new za(this, w6Var);
    }

    private final boolean R() {
        this.f8322a.c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public final void J() {
        h();
        this.f8146h.a();
        this.f8322a.w();
        this.f8144f.b(((Long) c5.Z.b(null)).longValue());
    }

    private final void T(Runnable runnable) {
        h();
        if (W()) {
            runnable.run();
            return;
        }
        List list = this.f8147i;
        w6 w6Var = this.f8322a;
        w6Var.w();
        if (list.size() >= 1000) {
            w6Var.a().o().a("Discarding data. Max runnable queue size reached");
            return;
        }
        list.add(runnable);
        this.f8148j.b(60000L);
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public final void L() {
        h();
        n5 w10 = this.f8322a.a().w();
        List<Runnable> list = this.f8147i;
        w10.b("Processing queued up service tasks", Integer.valueOf(list.size()));
        for (Runnable runnable : list) {
            try {
                runnable.run();
            } catch (RuntimeException e10) {
                this.f8322a.a().o().b("Task exception while flushing queue", e10);
            }
        }
        this.f8147i.clear();
        this.f8148j.d();
    }

    private final ae V(boolean z10) {
        Pair b10;
        w6 w6Var = this.f8322a;
        w6Var.c();
        f5 L = this.f8322a.L();
        String str = null;
        if (z10) {
            w6 w6Var2 = w6Var.a().f8322a;
            if (w6Var2.x().f7416e != null && (b10 = w6Var2.x().f7416e.b()) != null && b10 != d6.A) {
                String valueOf = String.valueOf(b10.second);
                String str2 = (String) b10.first;
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length());
                sb2.append(valueOf);
                sb2.append(":");
                sb2.append(str2);
                str = sb2.toString();
            }
        }
        return L.o(str);
    }

    public final void A() {
        h();
        j();
        pb pbVar = this.f8141c;
        pbVar.c();
        try {
            r5.b.b().c(this.f8322a.e(), pbVar);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f8142d = null;
    }

    public final void B(com.google.android.gms.internal.measurement.w1 w1Var, g0 g0Var, String str) {
        h();
        j();
        w6 w6Var = this.f8322a;
        if (w6Var.C().X(l5.k.f25303a) != 0) {
            w6Var.a().r().a("Not bundling data. Service unavailable or out of date");
            w6Var.C().d0(w1Var, new byte[0]);
            return;
        }
        T(new ya(this, g0Var, str, w1Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean C() {
        h();
        j();
        if (!y() || this.f8322a.C().W() >= ((Integer) c5.K0.b(null)).intValue()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean D() {
        h();
        j();
        if (!y() || this.f8322a.C().W() >= 241200) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void E() {
        i6.e eVar = this.f8142d;
        if (eVar == null) {
            this.f8322a.a().o().a("Failed to send storage consent settings to service");
            return;
        }
        try {
            ae V = V(false);
            n5.q.k(V);
            eVar.T(V);
            J();
        } catch (RemoteException e10) {
            this.f8322a.a().o().b("Failed to send storage consent settings to the service", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void F() {
        i6.e eVar = this.f8142d;
        if (eVar == null) {
            this.f8322a.a().o().a("Failed to send Dma consent settings to service");
            return;
        }
        try {
            ae V = V(false);
            n5.q.k(V);
            eVar.g0(V);
            J();
        } catch (RemoteException e10) {
            this.f8322a.a().o().b("Failed to send Dma consent settings to the service", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void G(AtomicReference atomicReference, ae aeVar, Bundle bundle) {
        i6.e eVar;
        synchronized (atomicReference) {
            try {
                eVar = this.f8142d;
            } catch (RemoteException e10) {
                this.f8322a.a().o().b("Failed to request trigger URIs; remote exception", e10);
                atomicReference.notifyAll();
            }
            if (eVar == null) {
                this.f8322a.a().o().a("Failed to request trigger URIs; not connected to service");
                return;
            }
            n5.q.k(aeVar);
            eVar.t(aeVar, bundle, new na(this, atomicReference));
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void H(AtomicReference atomicReference, ae aeVar, i6.g0 g0Var) {
        i6.e eVar;
        synchronized (atomicReference) {
            try {
                eVar = this.f8142d;
            } catch (RemoteException e10) {
                this.f8322a.a().o().b("[sgtm] Failed to get upload batches; remote exception", e10);
                atomicReference.notifyAll();
            }
            if (eVar == null) {
                this.f8322a.a().o().a("[sgtm] Failed to get upload batches; not connected to service");
                return;
            }
            n5.q.k(aeVar);
            eVar.O(aeVar, g0Var, new oa(this, atomicReference));
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void I(ae aeVar, g gVar) {
        i6.e eVar = this.f8142d;
        if (eVar == null) {
            this.f8322a.a().o().a("[sgtm] Discarding data. Failed to update batch upload status.");
            return;
        }
        try {
            eVar.k0(aeVar, gVar);
            J();
        } catch (RemoteException e10) {
            this.f8322a.a().o().c("[sgtm] Failed to update batch upload status, rowId, exception", Long.valueOf(gVar.f7548a), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void K(ComponentName componentName) {
        h();
        if (this.f8142d != null) {
            this.f8142d = null;
            this.f8322a.a().w().b("Disconnected from device MeasurementService", componentName);
            h();
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ pb M() {
        return this.f8141c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ i6.e N() {
        return this.f8142d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void O(i6.e eVar) {
        this.f8142d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ ScheduledExecutorService P() {
        return this.f8145g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Q(ScheduledExecutorService scheduledExecutorService) {
        this.f8145g = scheduledExecutorService;
    }

    public final boolean W() {
        h();
        j();
        if (this.f8142d != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void X() {
        h();
        j();
        T(new ab(this, V(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Y(boolean z10) {
        h();
        j();
        if (C()) {
            T(new bb(this, V(false)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Z(boolean z10) {
        h();
        j();
        T(new Runnable() { // from class: com.google.android.gms.measurement.internal.ub
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                vb.this.E();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a0() {
        h();
        j();
        T(new Runnable() { // from class: com.google.android.gms.measurement.internal.qb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                vb.this.F();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b0(i6.e r58, o5.a r59, com.google.android.gms.measurement.internal.ae r60) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.vb.b0(i6.e, o5.a, com.google.android.gms.measurement.internal.ae):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c0(g0 g0Var, String str) {
        n5.q.k(g0Var);
        h();
        j();
        R();
        T(new cb(this, true, V(true), this.f8322a.E().p(g0Var), g0Var, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d0(i iVar) {
        n5.q.k(iVar);
        h();
        j();
        this.f8322a.c();
        T(new db(this, true, V(true), this.f8322a.E().r(iVar), new i(iVar), iVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e0(AtomicReference atomicReference, String str, String str2, String str3) {
        h();
        j();
        T(new eb(this, atomicReference, null, str2, str3, V(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f0(com.google.android.gms.internal.measurement.w1 w1Var, String str, String str2) {
        h();
        j();
        T(new fb(this, str, str2, V(false), w1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g0(AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        h();
        j();
        T(new gb(this, atomicReference, null, str2, str3, V(false), z10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h0(com.google.android.gms.internal.measurement.w1 w1Var, String str, String str2, boolean z10) {
        h();
        j();
        T(new ma(this, str, str2, V(false), z10, w1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i0(final AtomicReference atomicReference, final Bundle bundle) {
        h();
        j();
        final ae V = V(false);
        T(new Runnable() { // from class: com.google.android.gms.measurement.internal.rb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                vb.this.G(atomicReference, V, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j0(final AtomicReference atomicReference, final i6.g0 g0Var) {
        h();
        j();
        final ae V = V(false);
        T(new Runnable() { // from class: com.google.android.gms.measurement.internal.sb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                vb.this.H(atomicReference, V, g0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k0(final g gVar) {
        h();
        j();
        final ae V = V(true);
        n5.q.k(V);
        T(new Runnable() { // from class: com.google.android.gms.measurement.internal.tb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                vb.this.I(V, gVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final i6.a l0() {
        h();
        j();
        i6.e eVar = this.f8142d;
        if (eVar == null) {
            w();
            this.f8322a.a().v().a("Failed to get consents; not connected to service yet.");
            return null;
        }
        ae V = V(false);
        n5.q.k(V);
        try {
            i6.a t02 = eVar.t0(V);
            J();
            return t02;
        } catch (RemoteException e10) {
            this.f8322a.a().o().b("Failed to get consents; remote exception", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void o(ud udVar) {
        h();
        j();
        R();
        T(new pa(this, V(true), this.f8322a.E().q(udVar), udVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void p() {
        h();
        j();
        ae V = V(false);
        R();
        this.f8322a.E().o();
        T(new qa(this, V));
    }

    public final void q(AtomicReference atomicReference) {
        h();
        j();
        T(new ra(this, atomicReference, V(false)));
    }

    public final void r(com.google.android.gms.internal.measurement.w1 w1Var) {
        h();
        j();
        T(new sa(this, V(false), w1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s() {
        h();
        j();
        ae V = V(true);
        R();
        this.f8322a.w().H(null, c5.f7332c1);
        this.f8322a.E().u();
        T(new ta(this, V, true));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t() {
        h();
        j();
        T(new ua(this, V(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(da daVar) {
        h();
        j();
        T(new wa(this, daVar));
    }

    public final void v(Bundle bundle) {
        boolean z10;
        h();
        j();
        e0 e0Var = new e0(bundle);
        R();
        if (this.f8322a.w().H(null, c5.f7332c1) && this.f8322a.E().s(e0Var)) {
            z10 = true;
        } else {
            z10 = false;
        }
        T(new xa(this, true, V(false), z10, e0Var, bundle));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void w() {
        h();
        j();
        if (!W()) {
            if (!y()) {
                w6 w6Var = this.f8322a;
                if (!w6Var.w().m()) {
                    w6Var.c();
                    List<ResolveInfo> queryIntentServices = w6Var.e().getPackageManager().queryIntentServices(new Intent().setClassName(w6Var.e(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
                    if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                        Intent intent = new Intent("com.google.android.gms.measurement.START");
                        Context e10 = w6Var.e();
                        w6Var.c();
                        intent.setComponent(new ComponentName(e10, "com.google.android.gms.measurement.AppMeasurementService"));
                        this.f8141c.b(intent);
                        return;
                    }
                    w6Var.a().o().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                    return;
                }
                return;
            }
            this.f8141c.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean x() {
        return this.f8143e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean y() {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.vb.y():boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void z(i6.e eVar) {
        h();
        n5.q.k(eVar);
        this.f8142d = eVar;
        J();
        L();
    }
}
