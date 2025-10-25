package io.appmetrica.analytics.adrevenue.fyber.v3.impl;

import com.fyber.fairbid.ads.PlacementType;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class a extends HashMap {
    public a(PlacementType placementType) {
        String name;
        put(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-fyber-v3");
        if (placementType == null) {
            name = "null";
        } else {
            name = placementType.name();
        }
        put(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, name);
    }
}
