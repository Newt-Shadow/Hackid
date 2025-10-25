package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f8189a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f8190b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w8(w9 w9Var, Bundle bundle) {
        this.f8189a = bundle;
        Objects.requireNonNull(w9Var);
        this.f8190b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w9 w9Var = this.f8190b;
        w9Var.h();
        w9Var.j();
        Bundle bundle = this.f8189a;
        n5.q.k(bundle);
        String e10 = n5.q.e(bundle.getString(Constants.NAME));
        if (!w9Var.f8322a.g()) {
            w9Var.f8322a.a().w().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            w9Var.f8322a.J().d0(new i(bundle.getString(CommonUrlParts.APP_ID), "", new ud(e10, 0L, null, ""), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), w9Var.f8322a.C().R(bundle.getString(CommonUrlParts.APP_ID), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
