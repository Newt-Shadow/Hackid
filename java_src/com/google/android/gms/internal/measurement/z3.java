package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z3 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a4 f6908a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z3(a4 a4Var) {
        Objects.requireNonNull(a4Var);
        this.f6908a = a4Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f6908a.j(new r3(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f6908a.j(new x3(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f6908a.j(new u3(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f6908a.j(new t3(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        q1 q1Var = new q1();
        this.f6908a.j(new w3(this, activity, q1Var));
        Bundle e12 = q1Var.e1(50L);
        if (e12 != null) {
            bundle.putAll(e12);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f6908a.j(new s3(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f6908a.j(new v3(this, activity));
    }
}
