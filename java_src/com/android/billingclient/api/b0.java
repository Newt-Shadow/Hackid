package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.b6;
import com.google.android.gms.internal.play_billing.h6;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b0 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Object f5239a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private boolean f5240b = false;

    /* renamed from: c  reason: collision with root package name */
    private c2.g f5241c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ e f5242d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b0(e eVar, c2.g gVar, c2.u uVar) {
        this.f5242d = eVar;
        this.f5241c = gVar;
    }

    private final void d(h hVar) {
        synchronized (this.f5239a) {
            c2.g gVar = this.f5241c;
            if (gVar != null) {
                gVar.onBillingSetupFinished(hVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x022b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object a() {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.b0.a():java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b() {
        i0 i0Var;
        this.f5242d.f5271a = 0;
        this.f5242d.f5277g = null;
        i0Var = this.f5242d.f5276f;
        h hVar = j0.f5411n;
        i0Var.e(h0.b(24, 6, hVar));
        d(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        synchronized (this.f5239a) {
            this.f5241c = null;
            this.f5240b = true;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Handler Y;
        Future c02;
        h a02;
        i0 i0Var;
        com.google.android.gms.internal.play_billing.b0.j("BillingClient", "Billing service connected.");
        this.f5242d.f5277g = h6.d(iBinder);
        Callable callable = new Callable() { // from class: com.android.billingclient.api.z
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b0.this.a();
                return null;
            }
        };
        Runnable runnable = new Runnable() { // from class: com.android.billingclient.api.a0
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.b();
            }
        };
        e eVar = this.f5242d;
        Y = eVar.Y();
        c02 = eVar.c0(callable, 30000L, runnable, Y);
        if (c02 == null) {
            e eVar2 = this.f5242d;
            a02 = eVar2.a0();
            i0Var = eVar2.f5276f;
            i0Var.e(h0.b(25, 6, a02));
            d(a02);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        i0 i0Var;
        com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Billing service disconnected.");
        i0Var = this.f5242d.f5276f;
        i0Var.f(b6.B());
        this.f5242d.f5277g = null;
        this.f5242d.f5271a = 0;
        synchronized (this.f5239a) {
            c2.g gVar = this.f5241c;
            if (gVar != null) {
                gVar.onBillingServiceDisconnected();
            }
        }
    }
}
