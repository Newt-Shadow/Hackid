package io.appmetrica.analytics.coreutils.impl;

import io.appmetrica.analytics.coreutils.internal.services.FirstExecutionConditionServiceImpl;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class l extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ UtilityServiceProvider f17709a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(UtilityServiceProvider utilityServiceProvider) {
        super(0);
        this.f17709a = utilityServiceProvider;
    }

    @Override // id.a
    public final Object invoke() {
        return new FirstExecutionConditionServiceImpl(this.f17709a);
    }
}
