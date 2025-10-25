package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import java.util.Objects;
import n5.c;
/* loaded from: classes.dex */
public final class pb implements ServiceConnection, c.a, c.b {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f7877a;

    /* renamed from: b  reason: collision with root package name */
    private volatile j5 f7878b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ vb f7879c;

    /* JADX INFO: Access modifiers changed from: protected */
    public pb(vb vbVar) {
        Objects.requireNonNull(vbVar);
        this.f7879c = vbVar;
    }

    @Override // n5.c.b
    public final void a(l5.b bVar) {
        vb vbVar = this.f7879c;
        vbVar.f8322a.b().o();
        p5 y10 = vbVar.f8322a.y();
        if (y10 != null) {
            y10.w().b("Service connection failed", bVar);
        }
        synchronized (this) {
            this.f7877a = false;
            this.f7878b = null;
        }
        this.f7879c.f8322a.b().t(new ob(this, bVar));
    }

    public final void b(Intent intent) {
        vb vbVar = this.f7879c;
        vbVar.h();
        Context e10 = vbVar.f8322a.e();
        r5.b b10 = r5.b.b();
        synchronized (this) {
            if (this.f7877a) {
                this.f7879c.f8322a.a().w().a("Connection attempt already in progress");
                return;
            }
            vb vbVar2 = this.f7879c;
            vbVar2.f8322a.a().w().a("Using local app measurement service");
            this.f7877a = true;
            b10.a(e10, intent, vbVar2.M(), 129);
        }
    }

    public final void c() {
        if (this.f7878b != null && (this.f7878b.a() || this.f7878b.e())) {
            this.f7878b.g();
        }
        this.f7878b = null;
    }

    @Override // n5.c.a
    public final void d(int i10) {
        w6 w6Var = this.f7879c.f8322a;
        w6Var.b().o();
        w6Var.a().v().a("Service connection suspended");
        w6Var.b().t(new lb(this));
    }

    public final void e() {
        vb vbVar = this.f7879c;
        vbVar.h();
        Context e10 = vbVar.f8322a.e();
        synchronized (this) {
            if (this.f7877a) {
                this.f7879c.f8322a.a().w().a("Connection attempt already in progress");
            } else if (this.f7878b != null && (this.f7878b.e() || this.f7878b.a())) {
                this.f7879c.f8322a.a().w().a("Already awaiting connection attempt");
            } else {
                this.f7878b = new j5(e10, Looper.getMainLooper(), this, this);
                this.f7879c.f8322a.a().w().a("Connecting to remote service");
                this.f7877a = true;
                n5.q.k(this.f7878b);
                this.f7878b.q();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void f(boolean z10) {
        this.f7877a = false;
    }

    @Override // n5.c.a
    public final void k(Bundle bundle) {
        this.f7879c.f8322a.b().o();
        synchronized (this) {
            try {
                n5.q.k(this.f7878b);
                this.f7879c.f8322a.b().t(new kb(this, (i6.e) this.f7878b.D()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f7878b = null;
                this.f7877a = false;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        i6.e d5Var;
        this.f7879c.f8322a.b().o();
        synchronized (this) {
            if (iBinder == null) {
                this.f7877a = false;
                this.f7879c.f8322a.a().o().a("Service connected with null binder");
                return;
            }
            i6.e eVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    if (queryLocalInterface instanceof i6.e) {
                        d5Var = (i6.e) queryLocalInterface;
                    } else {
                        d5Var = new d5(iBinder);
                    }
                    eVar = d5Var;
                    this.f7879c.f8322a.a().w().a("Bound to IMeasurementService interface");
                } else {
                    this.f7879c.f8322a.a().o().b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f7879c.f8322a.a().o().a("Service connect failed to get IMeasurementService");
            }
            if (eVar == null) {
                this.f7877a = false;
                try {
                    r5.b b10 = r5.b.b();
                    vb vbVar = this.f7879c;
                    b10.c(vbVar.f8322a.e(), vbVar.M());
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f7879c.f8322a.b().t(new hb(this, eVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        w6 w6Var = this.f7879c.f8322a;
        w6Var.b().o();
        w6Var.a().v().a("Service disconnected");
        w6Var.b().t(new ib(this, componentName));
    }
}
