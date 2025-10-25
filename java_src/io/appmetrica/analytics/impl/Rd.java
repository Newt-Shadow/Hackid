package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;
import io.appmetrica.analytics.coreapi.internal.io.SslSocketFactoryProvider;
import io.appmetrica.analytics.modulesapi.internal.network.SimpleNetworkApi;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext;
/* loaded from: classes2.dex */
public final class Rd implements ServiceNetworkContext {

    /* renamed from: a  reason: collision with root package name */
    public final J9 f18886a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18887b = new In().a();

    /* renamed from: c  reason: collision with root package name */
    public final C1128dl f18888c = new C1128dl();

    public Rd(Context context) {
        this.f18886a = new J9(context);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext
    public final IExecutionPolicy getExecutionPolicy() {
        return this.f18886a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext
    public final SimpleNetworkApi getNetworkApi() {
        return this.f18888c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext
    public final SslSocketFactoryProvider getSslSocketFactoryProvider() {
        return C1665za.E.y();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext
    public final String getUserAgent() {
        return this.f18887b;
    }
}
