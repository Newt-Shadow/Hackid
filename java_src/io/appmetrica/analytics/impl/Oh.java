package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;
/* loaded from: classes2.dex */
public final class Oh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UserProfile f18707a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18708b;

    public Oh(C1225hi c1225hi, UserProfile userProfile) {
        this.f18708b = c1225hi;
        this.f18707a = userProfile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18708b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportUserProfile(this.f18707a);
    }
}
