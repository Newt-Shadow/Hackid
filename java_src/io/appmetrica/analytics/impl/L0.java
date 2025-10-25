package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;
/* loaded from: classes2.dex */
public final class L0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UserProfile f18507a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18508b;

    public L0(C1282k1 c1282k1, UserProfile userProfile) {
        this.f18508b = c1282k1;
        this.f18507a = userProfile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f18508b).reportUserProfile(this.f18507a);
    }
}
