package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.AdapterResponseInfo;
import com.google.android.gms.ads.ResponseInfo;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import java.math.BigDecimal;
import java.util.Currency;
/* loaded from: classes2.dex */
public final class d {
    public static ModuleAdRevenue a(AdValue adValue, ModuleAdType moduleAdType, String str, ResponseInfo responseInfo, String str2) {
        String str3;
        AdapterResponseInfo loadedAdapterResponseInfo;
        String str4;
        double finiteDoubleOrDefault = WrapUtils.getFiniteDoubleOrDefault(adValue.getValueMicros() / 1000000.0d, 0.0d);
        if (responseInfo != null && (loadedAdapterResponseInfo = responseInfo.getLoadedAdapterResponseInfo()) != null) {
            BigDecimal valueOf = BigDecimal.valueOf(finiteDoubleOrDefault);
            Currency currency = Currency.getInstance(adValue.getCurrencyCode());
            String adapterClassName = loadedAdapterResponseInfo.getAdapterClassName();
            String adSourceInstanceId = loadedAdapterResponseInfo.getAdSourceInstanceId();
            String adSourceInstanceName = loadedAdapterResponseInfo.getAdSourceInstanceName();
            int precisionType = adValue.getPrecisionType();
            if (precisionType == 0) {
                str4 = "UNKNOWN";
            } else if (precisionType == 1) {
                str4 = "ESTIMATED";
            } else if (precisionType == 2) {
                str4 = "PUBLISHER_PROVIDED";
            } else if (precisionType == 3) {
                str4 = "PRECISE";
            } else {
                str4 = "";
            }
            return new ModuleAdRevenue(valueOf, currency, moduleAdType, adapterClassName, str2, null, adSourceInstanceId, adSourceInstanceName, str4, new b(str), true);
        }
        BigDecimal valueOf2 = BigDecimal.valueOf(finiteDoubleOrDefault);
        Currency currency2 = Currency.getInstance(adValue.getCurrencyCode());
        int precisionType2 = adValue.getPrecisionType();
        if (precisionType2 == 0) {
            str3 = "UNKNOWN";
        } else if (precisionType2 == 1) {
            str3 = "ESTIMATED";
        } else if (precisionType2 == 2) {
            str3 = "PUBLISHER_PROVIDED";
        } else if (precisionType2 == 3) {
            str3 = "PRECISE";
        } else {
            str3 = "";
        }
        return new ModuleAdRevenue(valueOf2, currency2, moduleAdType, null, str2, null, null, null, str3, new c(str), true);
    }
}
