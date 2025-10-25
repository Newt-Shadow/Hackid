package io.appmetrica.analytics.impl;

import android.app.Activity;
/* renamed from: io.appmetrica.analytics.impl.j  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1255j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f19818a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1305l f19819b;

    public RunnableC1255j(C1305l c1305l, Activity activity) {
        this.f19819b = c1305l;
        this.f19818a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19819b.a(this.f19818a);
    }
}
