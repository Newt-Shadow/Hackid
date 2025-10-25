package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.AdView;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
/* loaded from: classes2.dex */
public final class f extends g {
    public f(d dVar, ClientContext clientContext) {
        super(dVar, clientContext);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, AdValue.class, AdView.class)) {
            return false;
        }
        AdView adView = (AdView) objArr[1];
        this.f17552a.getClass();
        a(d.a((AdValue) objArr[0], ModuleAdType.BANNER, "bannerAd", adView.getResponseInfo(), adView.getAdUnitId()));
        return true;
    }
}
