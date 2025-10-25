package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f8136a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f8137b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v8(w9 w9Var, Bundle bundle) {
        this.f8136a = bundle;
        Objects.requireNonNull(w9Var);
        this.f8137b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f8137b;
        w9Var.h();
        w9Var.j();
        Bundle bundle = this.f8136a;
        n5.q.k(bundle);
        String string = bundle.getString(Constants.NAME);
        String string2 = bundle.getString("origin");
        n5.q.e(string);
        n5.q.e(string2);
        n5.q.k(bundle.get("value"));
        if (!w9Var.f8322a.g()) {
            w9Var.f8322a.a().w().a("Conditional property not set since app measurement is disabled");
            return;
        }
        ud udVar = new ud(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            w6 w6Var = w9Var.f8322a;
            g0 R = w6Var.C().R(bundle.getString(CommonUrlParts.APP_ID), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            w9Var.f8322a.J().d0(new i(bundle.getString(CommonUrlParts.APP_ID), string2, udVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), w6Var.C().R(bundle.getString(CommonUrlParts.APP_ID), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), R, bundle.getLong("time_to_live"), w6Var.C().R(bundle.getString(CommonUrlParts.APP_ID), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
