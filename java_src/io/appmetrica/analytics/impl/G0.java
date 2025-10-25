package io.appmetrica.analytics.impl;

import android.location.Location;
/* loaded from: classes2.dex */
public final class G0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Location f18241a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18242b;

    public G0(C1282k1 c1282k1, Location location) {
        this.f18242b = c1282k1;
        this.f18241a = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1406p0 c1406p0 = this.f18242b.f19881a;
        Location location = this.f18241a;
        c1406p0.getClass();
        C1381o0.c().a(location);
    }
}
