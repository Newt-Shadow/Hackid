package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientActivator;
/* renamed from: io.appmetrica.analytics.impl.a4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1036a4 implements ModuleClientActivator {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientActivator
    public final void activate(Context context) {
        C1509t4.j().b().a(context, AppMetricaLibraryAdapterConfig.newConfigBuilder().build());
    }
}
