package io.appmetrica.analytics.impl;

import android.app.Activity;
/* loaded from: classes2.dex */
public final class X0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f19204a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19205b;

    public X0(C1282k1 c1282k1, Activity activity) {
        this.f19205b = c1282k1;
        this.f19204a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1 c1282k1 = this.f19205b;
        Jk jk = c1282k1.f19888h;
        Activity activity = this.f19204a;
        Ua ua2 = c1282k1.d().f20803a;
        if (activity != null) {
            jk.f18452f.a(activity);
        }
        if (jk.f18451e.a(activity, EnumC1380o.RESUMED)) {
            ua2.a(activity);
        }
    }
}
