package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
/* renamed from: io.appmetrica.analytics.screenshot.impl.d  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1682d implements P {

    /* renamed from: a  reason: collision with root package name */
    public final ClientContext f21414a;

    /* renamed from: b  reason: collision with root package name */
    public final Q f21415b;

    /* renamed from: c  reason: collision with root package name */
    public volatile C1687i f21416c;

    /* renamed from: d  reason: collision with root package name */
    public final xc.d f21417d;

    public C1682d(ClientContext clientContext, Q q10) {
        xc.d a10;
        this.f21414a = clientContext;
        this.f21415b = q10;
        a10 = xc.f.a(new C1679a(this));
        this.f21417d = a10;
    }

    public static final Activity.ScreenCaptureCallback d(C1682d c1682d) {
        return (Activity.ScreenCaptureCallback) c1682d.f21417d.getValue();
    }

    @Override // io.appmetrica.analytics.screenshot.impl.P
    public final void a(C1690l c1690l) {
        this.f21416c = c1690l != null ? c1690l.f21442a : null;
    }

    public final String b() {
        return "AndroidApiScreenshotCaptor";
    }

    @Override // io.appmetrica.analytics.screenshot.impl.P
    public final void a() {
        if (AndroidUtils.isApiAchieved(34)) {
            this.f21414a.getActivityLifecycleRegistry().registerListener(new C1681c(this), ActivityEvent.STARTED, ActivityEvent.STOPPED);
        }
    }
}
