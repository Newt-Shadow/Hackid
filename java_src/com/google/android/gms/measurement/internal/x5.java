package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x5 extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final pd f8238a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8239b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8240c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x5(pd pdVar) {
        n5.q.k(pdVar);
        this.f8238a = pdVar;
    }

    public final void a() {
        pd pdVar = this.f8238a;
        pdVar.O0();
        pdVar.b().h();
        if (this.f8239b) {
            return;
        }
        pdVar.e().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f8240c = pdVar.E0().m();
        pdVar.a().w().b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f8240c));
        this.f8239b = true;
    }

    public final void b() {
        pd pdVar = this.f8238a;
        pdVar.O0();
        pdVar.b().h();
        pdVar.b().h();
        if (!this.f8239b) {
            return;
        }
        pdVar.a().w().a("Unregistering connectivity change receiver");
        this.f8239b = false;
        this.f8240c = false;
        try {
            pdVar.e().unregisterReceiver(this);
        } catch (IllegalArgumentException e10) {
            this.f8238a.a().o().b("Failed to unregister the network broadcast receiver", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ pd c() {
        return this.f8238a;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        pd pdVar = this.f8238a;
        pdVar.O0();
        String action = intent.getAction();
        pdVar.a().w().b("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean m10 = pdVar.E0().m();
            if (this.f8240c != m10) {
                this.f8240c = m10;
                pdVar.b().t(new w5(this, m10));
                return;
            }
            return;
        }
        pdVar.a().r().b("NetworkBroadcastReceiver received unknown action", action);
    }
}
