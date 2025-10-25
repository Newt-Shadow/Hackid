package io.appmetrica.analytics.screenshot.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
/* loaded from: classes2.dex */
public final class d0 implements P {

    /* renamed from: a  reason: collision with root package name */
    public final ClientContext f21418a;

    /* renamed from: b  reason: collision with root package name */
    public final Q f21419b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f21420c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f21421d;

    /* renamed from: e  reason: collision with root package name */
    public volatile C1691m f21422e;

    /* renamed from: f  reason: collision with root package name */
    public final a0 f21423f = new a0(this);

    public d0(ClientContext clientContext, Q q10) {
        this.f21418a = clientContext;
        this.f21419b = q10;
        this.f21420c = clientContext.getClientExecutorProvider().getDefaultExecutor().getHandler();
    }

    @Override // io.appmetrica.analytics.screenshot.impl.P
    public final void a(C1690l c1690l) {
        this.f21422e = c1690l != null ? c1690l.f21443b : null;
    }

    public final String b() {
        return "ServiceScreenshotCaptor";
    }

    @Override // io.appmetrica.analytics.screenshot.impl.P
    public final void a() {
        this.f21418a.getActivityLifecycleRegistry().registerListener(new c0(this), ActivityEvent.RESUMED, ActivityEvent.PAUSED);
    }
}
