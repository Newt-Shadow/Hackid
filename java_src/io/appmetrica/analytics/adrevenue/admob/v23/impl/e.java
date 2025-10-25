package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.appopen.AppOpenAd;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
/* loaded from: classes2.dex */
public final class e extends g {
    public e(d dVar, ClientContext clientContext) {
        super(dVar, clientContext);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, AdValue.class, AppOpenAd.class)) {
            return false;
        }
        AppOpenAd appOpenAd = (AppOpenAd) objArr[1];
        this.f17552a.getClass();
        a(d.a((AdValue) objArr[0], ModuleAdType.APP_OPEN, "appOpenAd", appOpenAd.getResponseInfo(), appOpenAd.getAdUnitId()));
        return true;
    }
}
