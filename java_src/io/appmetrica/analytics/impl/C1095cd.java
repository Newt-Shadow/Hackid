package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientExecutorProvider;
/* renamed from: io.appmetrica.analytics.impl.cd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1095cd implements ModuleClientExecutorProvider {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientExecutorProvider
    public final IHandlerExecutor getDefaultExecutor() {
        return C1509t4.j().f20620c.a();
    }
}
