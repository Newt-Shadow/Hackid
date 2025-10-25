package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import android.provider.MediaStore;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
/* renamed from: io.appmetrica.analytics.screenshot.impl.t  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1697t implements ActivityLifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1698u f21454a;

    public C1697t(C1698u c1698u) {
        this.f21454a = c1698u;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        int i10 = AbstractC1696s.f21453a[activityEvent.ordinal()];
        try {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f21454a.f21455a.getContext().getContentResolver().unregisterContentObserver(this.f21454a.f21458d);
                }
            }
            C1688j c1688j = this.f21454a.f21457c;
            if (c1688j != null && c1688j.f21437a) {
                this.f21454a.f21455a.getContext().getContentResolver().registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, this.f21454a.f21458d);
            }
        } catch (Throwable unused) {
        }
    }
}
