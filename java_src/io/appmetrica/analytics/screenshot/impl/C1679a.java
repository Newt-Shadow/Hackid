package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import io.appmetrica.analytics.screenshot.impl.C1679a;
import io.appmetrica.analytics.screenshot.impl.C1682d;
/* renamed from: io.appmetrica.analytics.screenshot.impl.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1679a extends kotlin.jvm.internal.n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1682d f21408a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1679a(C1682d c1682d) {
        super(0);
        this.f21408a = c1682d;
    }

    public static final void a(C1682d c1682d) {
        ((C1699v) c1682d.f21415b).a("AndroidApiScreenshotCaptor");
    }

    @Override // id.a
    /* renamed from: a */
    public final Activity.ScreenCaptureCallback invoke() {
        final C1682d c1682d = this.f21408a;
        return new Activity.ScreenCaptureCallback() { // from class: tc.a
            public final void onScreenCaptured() {
                C1679a.a(C1682d.this);
            }
        };
    }
}
