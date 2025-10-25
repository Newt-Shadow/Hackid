package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
/* renamed from: io.appmetrica.analytics.impl.cc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1094cc extends kotlin.jvm.internal.n implements id.l {

    /* renamed from: a  reason: collision with root package name */
    public static final C1094cc f19474a = new C1094cc();

    public C1094cc() {
        super(1);
    }

    @Override // id.l
    public final Object invoke(Object obj) {
        ((LocationControllerObserver) obj).stopLocationTracking();
        return xc.t.f32733a;
    }
}
