package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.AdType;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ModulesFacade;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent;
/* renamed from: io.appmetrica.analytics.impl.mb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1342mb implements InternalClientModuleFacade {

    /* renamed from: a  reason: collision with root package name */
    public final C1045ad f20113a = new C1045ad();

    @Override // io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade
    public final void reportAdRevenue(ModuleAdRevenue moduleAdRevenue) {
        int i10;
        AdType adType;
        this.f20113a.getClass();
        AdRevenue.Builder newBuilder = AdRevenue.newBuilder(moduleAdRevenue.getAdRevenue(), moduleAdRevenue.getCurrency());
        ModuleAdType adType2 = moduleAdRevenue.getAdType();
        ModuleAdType.values();
        if (adType2 == null) {
            i10 = -1;
        } else {
            i10 = Zc.f19346a[adType2.ordinal()];
        }
        switch (i10) {
            case -1:
                adType = null;
                break;
            case 0:
            default:
                throw new xc.i();
            case 1:
                adType = AdType.NATIVE;
                break;
            case 2:
                adType = AdType.BANNER;
                break;
            case 3:
                adType = AdType.REWARDED;
                break;
            case 4:
                adType = AdType.INTERSTITIAL;
                break;
            case 5:
                adType = AdType.MREC;
                break;
            case 6:
                adType = AdType.APP_OPEN;
                break;
            case 7:
                adType = AdType.OTHER;
                break;
        }
        ModulesFacade.reportAdRevenue(newBuilder.withAdType(adType).withAdNetwork(moduleAdRevenue.getAdNetwork()).withAdUnitId(moduleAdRevenue.getAdUnitId()).withAdUnitName(moduleAdRevenue.getAdUnitName()).withAdPlacementId(moduleAdRevenue.getAdPlacementId()).withAdPlacementName(moduleAdRevenue.getAdPlacementName()).withPrecision(moduleAdRevenue.getPrecision()).withPayload(moduleAdRevenue.getPayload()).build(), Boolean.valueOf(moduleAdRevenue.getAutoCollected()));
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade
    public final void reportEvent(InternalModuleEvent internalModuleEvent) {
        ModuleEvent.Category category;
        ModuleEvent.Builder withValue = ModuleEvent.newBuilder(internalModuleEvent.getType()).withName(internalModuleEvent.getName()).withValue(internalModuleEvent.getValue());
        Integer serviceDataReporterType = internalModuleEvent.getServiceDataReporterType();
        if (serviceDataReporterType != null) {
            withValue.withServiceDataReporterType(serviceDataReporterType.intValue());
        }
        InternalModuleEvent.Category category2 = internalModuleEvent.getCategory();
        if (category2 != null) {
            int i10 = AbstractC1317lb.f20020a[category2.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    category = null;
                } else {
                    category = ModuleEvent.Category.GENERAL;
                }
            } else {
                category = ModuleEvent.Category.SYSTEM;
            }
            if (category != null) {
                withValue.withCategory(category);
            }
        }
        ModulesFacade.reportEvent(withValue.withExtras(internalModuleEvent.getExtras()).withAttributes(internalModuleEvent.getAttributes()).withEnvironment(internalModuleEvent.getEnvironment()).build());
    }
}
