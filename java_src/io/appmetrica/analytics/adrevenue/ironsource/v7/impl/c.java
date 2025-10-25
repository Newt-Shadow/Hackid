package io.appmetrica.analytics.adrevenue.ironsource.v7.impl;

import com.ironsource.mediationsdk.impressionData.ImpressionData;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import java.math.BigDecimal;
import java.util.Currency;
/* loaded from: classes2.dex */
public final class c implements ImpressionDataListener {

    /* renamed from: a  reason: collision with root package name */
    public final ClientContext f17560a;

    /* renamed from: b  reason: collision with root package name */
    public final b f17561b = new b();

    public c(ClientContext clientContext) {
        this.f17560a = clientContext;
    }

    public final void onImpressionSuccess(ImpressionData impressionData) {
        ModuleAdType moduleAdType;
        if (impressionData != null) {
            InternalClientModuleFacade internalClientModuleFacade = this.f17560a.getInternalClientModuleFacade();
            this.f17561b.getClass();
            String adUnit = impressionData.getAdUnit();
            BigDecimal valueOf = BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(impressionData.getRevenue().doubleValue(), 0.0d));
            Currency currency = Currency.getInstance("USD");
            if (adUnit == null) {
                moduleAdType = null;
            } else {
                char c10 = 65535;
                switch (adUnit.hashCode()) {
                    case 95784425:
                        if (adUnit.equals("Rewarded Video")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 769047372:
                        if (adUnit.equals("Interstitial")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1982491468:
                        if (adUnit.equals("Banner")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        moduleAdType = ModuleAdType.REWARDED;
                        break;
                    case 1:
                        moduleAdType = ModuleAdType.INTERSTITIAL;
                        break;
                    case 2:
                        moduleAdType = ModuleAdType.BANNER;
                        break;
                    default:
                        moduleAdType = ModuleAdType.OTHER;
                        break;
                }
            }
            internalClientModuleFacade.reportAdRevenue(new ModuleAdRevenue(valueOf, currency, moduleAdType, impressionData.getAdNetwork(), null, null, null, impressionData.getPlacement(), impressionData.getPrecision(), new a(adUnit), true));
        }
    }
}
