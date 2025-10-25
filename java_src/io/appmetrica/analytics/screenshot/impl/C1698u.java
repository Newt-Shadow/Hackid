package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
/* renamed from: io.appmetrica.analytics.screenshot.impl.u  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1698u implements P {

    /* renamed from: a  reason: collision with root package name */
    public final ClientContext f21455a;

    /* renamed from: b  reason: collision with root package name */
    public final Q f21456b;

    /* renamed from: c  reason: collision with root package name */
    public volatile C1688j f21457c;

    /* renamed from: d  reason: collision with root package name */
    public final W f21458d;

    public C1698u(ClientContext clientContext, Q q10) {
        this.f21455a = clientContext;
        this.f21456b = q10;
        this.f21458d = new W(clientContext, new r(this));
    }

    @Override // io.appmetrica.analytics.screenshot.impl.P
    public final void a(C1690l c1690l) {
        this.f21457c = c1690l != null ? c1690l.f21444c : null;
        this.f21458d.f21405c = this.f21457c;
    }

    public final String b() {
        return "ContentObserverScreenshotCaptor";
    }

    @Override // io.appmetrica.analytics.screenshot.impl.P
    public final void a() {
        this.f21455a.getActivityLifecycleRegistry().registerListener(new C1697t(this), ActivityEvent.RESUMED, ActivityEvent.PAUSED);
    }
}
