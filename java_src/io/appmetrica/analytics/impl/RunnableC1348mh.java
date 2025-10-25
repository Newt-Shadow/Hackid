package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
/* renamed from: io.appmetrica.analytics.impl.mh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1348mh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20130a;

    /* renamed from: b  reason: collision with root package name */
    public final C1138e6 f20131b;

    /* renamed from: c  reason: collision with root package name */
    public final Bundle f20132c;

    /* renamed from: d  reason: collision with root package name */
    public final C1484s4 f20133d;

    public RunnableC1348mh(Context context, C1138e6 c1138e6, Bundle bundle, C1484s4 c1484s4) {
        this.f20130a = context;
        this.f20131b = c1138e6;
        this.f20132c = bundle;
        this.f20133d = c1484s4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Z3 a10 = Z3.a(this.f20130a, this.f20132c);
            if (a10 == null) {
                return;
            }
            C1211h4 a11 = C1211h4.a(a10);
            C1126dj u10 = C1665za.E.u();
            u10.a(a10.f19320b.getAppVersion(), a10.f19320b.getAppBuildNumber());
            u10.a(a10.f19320b.getDeviceType());
            G4 g42 = new G4(a10);
            this.f20133d.a(a11, g42).a(this.f20131b, g42);
        } catch (Throwable th) {
            Oj oj = AbstractC1375nj.f20222a;
            oj.getClass();
            oj.a(new C1400oj("Exception during processing event with type: " + this.f20131b.f19574d + " (" + this.f20131b.f19575e + "): " + th.getMessage(), th));
        }
    }
}
