package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider;
/* loaded from: classes2.dex */
public final class M7 implements AskForPermissionStrategyModuleProvider {

    /* renamed from: a  reason: collision with root package name */
    public final Vd f18576a = new Vd();

    @Override // io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider
    public final PermissionStrategy getAskForPermissionStrategy() {
        return this.f18576a;
    }
}
