package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
/* loaded from: classes2.dex */
public final class I implements F {

    /* renamed from: a  reason: collision with root package name */
    public final F f18341a;

    public I(F f10) {
        this.f18341a = f10;
    }

    @Override // io.appmetrica.analytics.impl.F
    public final AdTrackingInfoResult a(Context context) {
        return a(new G(this, context));
    }

    @Override // io.appmetrica.analytics.impl.F
    public final AdTrackingInfoResult a(Context context, Fi fi) {
        return a(new H(this, context, fi));
    }

    public static AdTrackingInfoResult a(Provider provider) {
        AdTrackingInfoResult adTrackingInfoResult = (AdTrackingInfoResult) provider.get();
        AdTrackingInfo adTrackingInfo = adTrackingInfoResult.mAdTrackingInfo;
        return (adTrackingInfo == null || !"00000000-0000-0000-0000-000000000000".equals(adTrackingInfo.advId)) ? adTrackingInfoResult : new AdTrackingInfoResult(null, IdentifierStatus.INVALID_ADV_ID, "AdvId is invalid: 00000000-0000-0000-0000-000000000000");
    }
}
