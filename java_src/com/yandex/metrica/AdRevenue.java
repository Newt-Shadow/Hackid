package com.yandex.metrica;

import com.yandex.metrica.impl.ob.A2;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class AdRevenue {
    public final String adNetwork;
    public final String adPlacementId;
    public final String adPlacementName;
    public final BigDecimal adRevenue;
    public final AdType adType;
    public final String adUnitId;
    public final String adUnitName;
    public final Currency currency;
    public final Map<String, String> payload;
    public final String precision;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final BigDecimal f9516a;

        /* renamed from: b  reason: collision with root package name */
        private final Currency f9517b;

        /* renamed from: c  reason: collision with root package name */
        private AdType f9518c;

        /* renamed from: d  reason: collision with root package name */
        private String f9519d;

        /* renamed from: e  reason: collision with root package name */
        private String f9520e;

        /* renamed from: f  reason: collision with root package name */
        private String f9521f;

        /* renamed from: g  reason: collision with root package name */
        private String f9522g;

        /* renamed from: h  reason: collision with root package name */
        private String f9523h;

        /* renamed from: i  reason: collision with root package name */
        private String f9524i;

        /* renamed from: j  reason: collision with root package name */
        private Map f9525j;

        public AdRevenue build() {
            return new AdRevenue(this.f9516a, this.f9517b, this.f9518c, this.f9519d, this.f9520e, this.f9521f, this.f9522g, this.f9523h, this.f9524i, this.f9525j);
        }

        public Builder withAdNetwork(String str) {
            this.f9519d = str;
            return this;
        }

        public Builder withAdPlacementId(String str) {
            this.f9522g = str;
            return this;
        }

        public Builder withAdPlacementName(String str) {
            this.f9523h = str;
            return this;
        }

        public Builder withAdType(AdType adType) {
            this.f9518c = adType;
            return this;
        }

        public Builder withAdUnitId(String str) {
            this.f9520e = str;
            return this;
        }

        public Builder withAdUnitName(String str) {
            this.f9521f = str;
            return this;
        }

        public Builder withPayload(Map<String, String> map) {
            HashMap hashMap;
            if (map == null || A2.b(map)) {
                hashMap = null;
            } else {
                hashMap = new HashMap(map);
            }
            this.f9525j = hashMap;
            return this;
        }

        public Builder withPrecision(String str) {
            this.f9524i = str;
            return this;
        }

        private Builder(BigDecimal bigDecimal, Currency currency) {
            this.f9516a = bigDecimal;
            this.f9517b = currency;
        }
    }

    public static Builder newBuilder(BigDecimal bigDecimal, Currency currency) {
        return new Builder(bigDecimal, currency);
    }

    private AdRevenue(BigDecimal bigDecimal, Currency currency, AdType adType, String str, String str2, String str3, String str4, String str5, String str6, Map map) {
        this.adRevenue = bigDecimal;
        this.currency = currency;
        this.adType = adType;
        this.adNetwork = str;
        this.adUnitId = str2;
        this.adUnitName = str3;
        this.adPlacementId = str4;
        this.adPlacementName = str5;
        this.precision = str6;
        this.payload = map == null ? null : A2.d(map);
    }

    public static Builder newBuilder(long j10, Currency currency) {
        return new Builder(A2.a(j10), currency);
    }

    public static Builder newBuilder(double d10, Currency currency) {
        return new Builder(new BigDecimal(A2.a(d10, 0.0d)), currency);
    }
}
