package io.appmetrica.analytics.impl;

import android.app.Activity;
/* renamed from: io.appmetrica.analytics.impl.d1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1108d1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f19500a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19501b;

    public RunnableC1108d1(C1282k1 c1282k1, Activity activity) {
        this.f19501b = c1282k1;
        this.f19500a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1 c1282k1 = this.f19501b;
        Jk jk = c1282k1.f19888h;
        Activity activity = this.f19500a;
        Ua ua2 = c1282k1.d().f20803a;
        if (activity != null) {
            jk.f18452f.a(activity);
        }
        if (jk.f18451e.a(activity, EnumC1380o.PAUSED)) {
            ua2.b(activity);
        }
    }
}
