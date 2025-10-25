package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;
/* renamed from: io.appmetrica.analytics.impl.uj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1549uj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UserProfile f20747a;

    public C1549uj(UserProfile userProfile) {
        this.f20747a = userProfile;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportUserProfile(this.f20747a);
    }
}
