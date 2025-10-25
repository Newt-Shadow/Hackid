package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.toggle.SimpleThreadSafeToggle;
/* loaded from: classes2.dex */
public final class W3 extends SimpleThreadSafeToggle {

    /* renamed from: a  reason: collision with root package name */
    public final Xe f19143a;

    public W3(Xe xe2) {
        super(xe2.e(), "[ClientApiTrackingStatusToggle]");
        this.f19143a = xe2;
    }

    public final void a(boolean z10) {
        updateState(z10);
        this.f19143a.f(z10);
    }
}
