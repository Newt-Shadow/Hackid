package io.appmetrica.analytics.adrevenue.applovin.v12.impl;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Currency;
import java.util.Map;
import kotlin.jvm.internal.m;
import xc.q;
import yc.h0;
import yc.k;
/* loaded from: classes2.dex */
public final class b implements ModuleAdRevenueProcessor {

    /* renamed from: a  reason: collision with root package name */
    public final a f17554a;

    /* renamed from: b  reason: collision with root package name */
    public final ClientContext f17555b;

    public b(a aVar, ClientContext clientContext) {
        this.f17554a = aVar;
        this.f17555b = clientContext;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final String getDescription() {
        return "AppLovin";
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        Object A;
        Object A2;
        ModuleAdType moduleAdType;
        Map h10;
        if (ReflectionUtils.isArgumentsOfClasses(objArr, MaxAd.class, AppLovinSdk.class)) {
            A = k.A(objArr, 0);
            if (A != null) {
                MaxAd maxAd = (MaxAd) A;
                A2 = k.A(objArr, 1);
                if (A2 != null) {
                    AppLovinSdk appLovinSdk = (AppLovinSdk) A2;
                    this.f17554a.getClass();
                    MaxAdFormat format = maxAd.getFormat();
                    if (format == null) {
                        moduleAdType = null;
                    } else if (m.a(format, MaxAdFormat.NATIVE)) {
                        moduleAdType = ModuleAdType.NATIVE;
                    } else if (m.a(format, MaxAdFormat.BANNER)) {
                        moduleAdType = ModuleAdType.BANNER;
                    } else if (m.a(format, MaxAdFormat.REWARDED)) {
                        moduleAdType = ModuleAdType.REWARDED;
                    } else if (m.a(format, MaxAdFormat.INTERSTITIAL)) {
                        moduleAdType = ModuleAdType.INTERSTITIAL;
                    } else if (m.a(format, MaxAdFormat.MREC)) {
                        moduleAdType = ModuleAdType.MREC;
                    } else {
                        moduleAdType = ModuleAdType.OTHER;
                    }
                    ModuleAdType moduleAdType2 = moduleAdType;
                    xc.k[] kVarArr = new xc.k[3];
                    kVarArr[0] = q.a("countryCode", appLovinSdk.getConfiguration().getCountryCode());
                    kVarArr[1] = q.a(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-applovin-v12");
                    MaxAdFormat format2 = maxAd.getFormat();
                    kVarArr[2] = q.a(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, (format2 == null || (r5 = format2.getLabel()) == null) ? "null" : "null");
                    h10 = h0.h(kVarArr);
                    this.f17555b.getInternalClientModuleFacade().reportAdRevenue(new ModuleAdRevenue(BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(maxAd.getRevenue(), 0.0d)), Currency.getInstance("USD"), moduleAdType2, maxAd.getNetworkName(), maxAd.getAdUnitId(), null, maxAd.getNetworkPlacement(), maxAd.getPlacement(), maxAd.getRevenuePrecision(), h10, true, 32, null));
                    PublicLogger mainPublicOrAnonymousLogger = LoggerStorage.getMainPublicOrAnonymousLogger();
                    mainPublicOrAnonymousLogger.info("Ad Revenue from AppLovin with values " + Arrays.toString(objArr) + " was reported", new Object[0]);
                    return true;
                }
                throw new NullPointerException("null cannot be cast to non-null type com.applovin.sdk.AppLovinSdk");
            }
            throw new NullPointerException("null cannot be cast to non-null type com.applovin.mediation.MaxAd");
        }
        return false;
    }
}
