package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.nf;
import java.util.Objects;
/* loaded from: classes.dex */
public final class fe extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final w6 f7547a;

    public fe(w6 w6Var) {
        this.f7547a = w6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a() {
        this.f7547a.N().o(((Long) c5.D.b(null)).longValue());
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        char c10;
        if (intent == null) {
            this.f7547a.a().r().a("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            this.f7547a.a().r().a("App receiver called with null action");
            return;
        }
        int hashCode = action.hashCode();
        if (hashCode != -1928239649) {
            if (hashCode == 1279883384 && action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                c10 = 1;
            }
            c10 = 65535;
        } else {
            if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
                c10 = 0;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                this.f7547a.a().r().a("App receiver called with unknown action");
                return;
            }
            w6 w6Var = this.f7547a;
            w6Var.a().w().a("[sgtm] App Receiver notified batches are available");
            w6Var.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.ce
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    fe.this.a();
                }
            });
            return;
        }
        final w6 w6Var2 = this.f7547a;
        nf.a();
        if (!w6Var2.w().H(null, c5.R0)) {
            return;
        }
        w6Var2.a().w().a("App receiver notified triggers are available");
        w6Var2.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.de
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                w6 w6Var3 = w6.this;
                if (!w6Var3.C().G()) {
                    w6Var3.a().r().a("registerTrigger called but app not eligible");
                    return;
                }
                w6Var3.B().t0();
                final w9 B = w6Var3.B();
                Objects.requireNonNull(B);
                new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.ee
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        w9.this.u0();
                    }
                }).start();
            }
        });
    }
}
