package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
final class e6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.s0 f7473a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ServiceConnection f7474b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ f6 f7475c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e6(f6 f6Var, com.google.android.gms.internal.measurement.s0 s0Var, ServiceConnection serviceConnection) {
        this.f7473a = s0Var;
        this.f7474b = serviceConnection;
        Objects.requireNonNull(f6Var);
        this.f7475c = f6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        f6 f6Var = this.f7475c;
        g6 g6Var = f6Var.f7519b;
        w6 w6Var = g6Var.f7560a;
        w6Var.b().h();
        Bundle bundle2 = new Bundle();
        String a10 = f6Var.a();
        bundle2.putString("package_name", a10);
        try {
            bundle = this.f7473a.Q(bundle2);
        } catch (Exception e10) {
            g6Var.f7560a.a().o().b("Exception occurred while retrieving the Install Referrer", e10.getMessage());
        }
        if (bundle == null) {
            w6Var.a().o().a("Install Referrer Service returned a null response");
            bundle = null;
        }
        w6 w6Var2 = g6Var.f7560a;
        w6Var2.b().h();
        w6.q();
        if (bundle != null) {
            long j10 = bundle.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j10 == 0) {
                w6Var2.a().r().a("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundle.getString("install_referrer");
                if (string != null && !string.isEmpty()) {
                    w6Var2.a().w().b("InstallReferrer API result", string);
                    Bundle s02 = w6Var2.C().s0(Uri.parse("?".concat(string)));
                    if (s02 == null) {
                        w6Var2.a().o().a("No campaign params defined in Install Referrer result");
                    } else {
                        List asList = Arrays.asList(((String) c5.f7347h1.b(null)).split(StringUtils.COMMA));
                        Iterator<String> it = s02.keySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (asList.contains(it.next())) {
                                long j11 = bundle.getLong("referrer_click_timestamp_server_seconds", 0L) * 1000;
                                if (j11 > 0) {
                                    s02.putLong("click_timestamp", j11);
                                }
                            }
                        }
                        if (j10 == w6Var2.x().f7418g.a()) {
                            w6Var2.a().w().a("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (w6Var2.g()) {
                            w6Var2.x().f7418g.b(j10);
                            w6Var2.a().w().b("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            s02.putString("_cis", "referrer API v2");
                            w6Var2.B().w("auto", "_cmp", s02, a10);
                        }
                    }
                } else {
                    w6Var2.a().o().a("No referrer defined in Install Referrer response");
                }
            }
        }
        r5.b.b().c(w6Var2.e(), this.f7474b);
    }
}
