package io.appmetrica.analytics.adrevenue.fyber.v3.impl;

import com.fyber.fairbid.ads.ImpressionData;
import com.fyber.fairbid.ads.PlacementType;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import java.math.BigDecimal;
import java.util.Currency;
/* loaded from: classes2.dex */
public final class d implements ModuleAdRevenueProcessor {

    /* renamed from: a  reason: collision with root package name */
    public final c f17558a;

    /* renamed from: b  reason: collision with root package name */
    public final ClientContext f17559b;

    public d(c cVar, ClientContext clientContext) {
        this.f17558a = cVar;
        this.f17559b = clientContext;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final String getDescription() {
        return "Fyber";
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        ModuleAdType moduleAdType;
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, ImpressionData.class)) {
            return false;
        }
        ImpressionData impressionData = (ImpressionData) objArr[0];
        InternalClientModuleFacade internalClientModuleFacade = this.f17559b.getInternalClientModuleFacade();
        this.f17558a.getClass();
        PlacementType placementType = impressionData.getPlacementType();
        BigDecimal valueOf = BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(impressionData.getNetPayout(), 0.0d));
        Currency currency = Currency.getInstance(impressionData.getCurrency());
        if (placementType == null) {
            moduleAdType = null;
        } else {
            int i10 = b.f17557a[placementType.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        moduleAdType = ModuleAdType.OTHER;
                    } else {
                        moduleAdType = ModuleAdType.INTERSTITIAL;
                    }
                } else {
                    moduleAdType = ModuleAdType.REWARDED;
                }
            } else {
                moduleAdType = ModuleAdType.BANNER;
            }
        }
        internalClientModuleFacade.reportAdRevenue(new ModuleAdRevenue(valueOf, currency, moduleAdType, impressionData.getDemandSource(), impressionData.getCreativeId(), null, null, null, impressionData.getPriceAccuracy().toString(), new a(placementType), true));
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue from Fyber was reported", new Object[0]);
        return true;
    }
}
