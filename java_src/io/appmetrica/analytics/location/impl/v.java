package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.LocationListener;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
/* loaded from: classes2.dex */
public final class v implements LastKnownLocationExtractorProvider {

    /* renamed from: a  reason: collision with root package name */
    public final String f21149a;

    /* renamed from: b  reason: collision with root package name */
    public final s f21150b;

    /* renamed from: c  reason: collision with root package name */
    public final String f21151c;

    public v(String str, s sVar, String str2) {
        this.f21149a = str;
        this.f21150b = sVar;
        this.f21151c = str2;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider
    /* renamed from: a */
    public final u getExtractor(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, LocationListener locationListener) {
        return new u(context, this.f21150b.a(permissionExtractor), locationListener, this.f21149a);
    }

    @Override // io.appmetrica.analytics.locationapi.internal.Identifiable
    public final String getIdentifier() {
        return this.f21151c;
    }
}
