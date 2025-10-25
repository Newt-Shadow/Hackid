package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import java.util.Objects;
/* loaded from: classes.dex */
final class r3 extends p3 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Bundle f6735e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Activity f6736f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ z3 f6737g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(z3 z3Var, Bundle bundle, Activity activity) {
        super(z3Var.f6908a, true);
        this.f6735e = bundle;
        this.f6736f = activity;
        Objects.requireNonNull(z3Var);
        this.f6737g = z3Var;
    }

    @Override // com.google.android.gms.internal.measurement.p3
    final void a() {
        Bundle bundle;
        Bundle bundle2 = this.f6735e;
        if (bundle2 != null) {
            bundle = new Bundle();
            if (bundle2.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = bundle2.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        Activity activity = this.f6736f;
        ((t1) n5.q.k(this.f6737g.f6908a.n())).onActivityCreatedByScionActivityInfo(i2.g(activity), bundle, this.f6637b);
    }
}
