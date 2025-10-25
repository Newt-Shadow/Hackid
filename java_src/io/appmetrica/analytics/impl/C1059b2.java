package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.appsetid.internal.AppSetIdListener;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetId;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;
/* renamed from: io.appmetrica.analytics.impl.b2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1059b2 implements AppSetIdListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1084c2 f19419a;

    public C1059b2(C1084c2 c1084c2) {
        this.f19419a = c1084c2;
    }

    @Override // io.appmetrica.analytics.appsetid.internal.AppSetIdListener
    public final void onAppSetIdRetrieved(String str, AppSetIdScope appSetIdScope) {
        this.f19419a.f19456c = new AppSetId(str, appSetIdScope);
        this.f19419a.f19457d.countDown();
    }

    @Override // io.appmetrica.analytics.appsetid.internal.AppSetIdListener
    public final void onFailure(Throwable th) {
        this.f19419a.f19457d.countDown();
    }
}
