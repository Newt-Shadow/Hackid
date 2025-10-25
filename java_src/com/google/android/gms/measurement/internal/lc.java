package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class lc {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ mc f7730a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lc(mc mcVar) {
        Objects.requireNonNull(mcVar);
        this.f7730a = mcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        mc mcVar = this.f7730a;
        mcVar.h();
        w6 w6Var = mcVar.f8322a;
        if (w6Var.x().A(w6Var.f().currentTimeMillis())) {
            w6Var.x().f7424m.b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                w6Var.a().w().a("Detected application was in foreground");
                c(w6Var.f().currentTimeMillis(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(long j10, boolean z10) {
        mc mcVar = this.f7730a;
        mcVar.h();
        mcVar.q();
        w6 w6Var = mcVar.f8322a;
        if (w6Var.x().A(j10)) {
            w6Var.x().f7424m.b(true);
            mcVar.f8322a.L().p();
        }
        w6Var.x().f7428q.b(j10);
        if (w6Var.x().f7424m.a()) {
            c(j10, z10);
        }
    }

    final void c(long j10, boolean z10) {
        mc mcVar = this.f7730a;
        mcVar.h();
        if (mcVar.f8322a.g()) {
            w6 w6Var = mcVar.f8322a;
            w6Var.x().f7428q.b(j10);
            w6Var.a().w().b("Session started, time", Long.valueOf(w6Var.f().elapsedRealtime()));
            w6 w6Var2 = mcVar.f8322a;
            Long valueOf = Long.valueOf(j10 / 1000);
            w6Var2.B().B("auto", "_sid", valueOf, j10);
            w6Var.x().f7429r.b(valueOf.longValue());
            w6Var.x().f7424m.b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            w6Var2.B().u("auto", "_s", j10, bundle);
            String a10 = w6Var.x().f7434w.a();
            if (!TextUtils.isEmpty(a10)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", a10);
                w6Var2.B().u("auto", "_ssr", j10, bundle2);
            }
        }
    }
}
