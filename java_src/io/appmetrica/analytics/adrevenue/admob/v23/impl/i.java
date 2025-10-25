package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.nativead.NativeAd;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
/* loaded from: classes2.dex */
public final class i extends g {
    public i(d dVar, ClientContext clientContext) {
        super(dVar, clientContext);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, AdValue.class, NativeAd.class)) {
            return false;
        }
        this.f17552a.getClass();
        a(d.a((AdValue) objArr[0], ModuleAdType.NATIVE, "nativeAd", ((NativeAd) objArr[1]).getResponseInfo(), null));
        return true;
    }
}
