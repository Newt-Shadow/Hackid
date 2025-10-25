package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceConfiguration;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;
/* loaded from: classes2.dex */
public final class Pn implements Vl {

    /* renamed from: a  reason: collision with root package name */
    public final UtilityServiceProvider f18794a;

    public Pn(UtilityServiceProvider utilityServiceProvider) {
        this.f18794a = utilityServiceProvider;
    }

    @Override // io.appmetrica.analytics.impl.Vl
    public final void a(Ql ql) {
        this.f18794a.updateConfiguration(new UtilityServiceConfiguration(ql.f18849v, ql.f18848u));
    }
}
