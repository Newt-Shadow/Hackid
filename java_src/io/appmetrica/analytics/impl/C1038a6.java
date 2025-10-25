package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
/* renamed from: io.appmetrica.analytics.impl.a6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1038a6 extends BaseRequestConfig.DataSource {

    /* renamed from: a  reason: collision with root package name */
    public final Ql f19374a;

    /* renamed from: b  reason: collision with root package name */
    public final SdkEnvironmentProvider f19375b;

    public C1038a6(Ql ql, SdkEnvironmentProvider sdkEnvironmentProvider, PlatformIdentifiers platformIdentifiers, Object obj) {
        super(new SdkIdentifiers(ql.e(), ql.a(), ql.b()), sdkEnvironmentProvider, platformIdentifiers, obj);
        this.f19374a = ql;
        this.f19375b = sdkEnvironmentProvider;
    }
}
