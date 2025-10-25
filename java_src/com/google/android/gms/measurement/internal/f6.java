package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Objects;
/* loaded from: classes.dex */
public final class f6 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final String f7518a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g6 f7519b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f6(g6 g6Var, String str) {
        Objects.requireNonNull(g6Var);
        this.f7519b = g6Var;
        this.f7518a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a() {
        return this.f7518a;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                com.google.android.gms.internal.measurement.s0 d10 = com.google.android.gms.internal.measurement.r0.d(iBinder);
                if (d10 == null) {
                    this.f7519b.f7560a.a().r().a("Install Referrer Service implementation was not found");
                    return;
                }
                w6 w6Var = this.f7519b.f7560a;
                w6Var.a().w().a("Install Referrer Service connected");
                w6Var.b().t(new e6(this, d10, this));
                return;
            } catch (RuntimeException e10) {
                this.f7519b.f7560a.a().r().b("Exception occurred while calling Install Referrer API", e10);
                return;
            }
        }
        this.f7519b.f7560a.a().r().a("Install Referrer connection returned with null binder");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f7519b.f7560a.a().w().a("Install Referrer Service disconnected");
    }
}
