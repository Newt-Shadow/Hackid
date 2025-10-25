package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.network.NetworkClientWithCacheControl;
import io.appmetrica.analytics.modulesapi.internal.network.SimpleNetworkApi;
import io.appmetrica.analytics.networktasks.internal.CacheControlHttpsConnectionPerformer;
/* renamed from: io.appmetrica.analytics.impl.dl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1128dl implements SimpleNetworkApi {

    /* renamed from: a  reason: collision with root package name */
    public final CacheControlHttpsConnectionPerformer f19537a = new CacheControlHttpsConnectionPerformer(((C1327ll) C1665za.j().y()).getSslSocketFactory());

    @Override // io.appmetrica.analytics.modulesapi.internal.network.SimpleNetworkApi
    public final void performRequestWithCacheControl(String str, NetworkClientWithCacheControl networkClientWithCacheControl) {
        this.f19537a.performConnection(str, new C1583w3(networkClientWithCacheControl));
    }
}
