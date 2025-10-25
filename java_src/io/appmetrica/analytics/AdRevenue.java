package io.appmetrica.analytics;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.impl.Rn;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
/* loaded from: classes2.dex */
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

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final BigDecimal f17460a;

        /* renamed from: b  reason: collision with root package name */
        private final Currency f17461b;

        /* renamed from: c  reason: collision with root package name */
        private AdType f17462c;

        /* renamed from: d  reason: collision with root package name */
        private String f17463d;

        /* renamed from: e  reason: collision with root package name */
        private String f17464e;

        /* renamed from: f  reason: collision with root package name */
        private String f17465f;

        /* renamed from: g  reason: collision with root package name */
        private String f17466g;

        /* renamed from: h  reason: collision with root package name */
        private String f17467h;

        /* renamed from: i  reason: collision with root package name */
        private String f17468i;

        /* renamed from: j  reason: collision with root package name */
        private Map f17469j;

        /* synthetic */ Builder(BigDecimal bigDecimal, Currency currency, int i10) {
            this(bigDecimal, currency);
        }

        public AdRevenue build() {
            return new AdRevenue(this.f17460a, this.f17461b, this.f17462c, this.f17463d, this.f17464e, this.f17465f, this.f17466g, this.f17467h, this.f17468i, this.f17469j, 0);
        }

        public Builder withAdNetwork(String str) {
            this.f17463d = str;
            return this;
        }

        public Builder withAdPlacementId(String str) {
            this.f17466g = str;
            return this;
        }

        public Builder withAdPlacementName(String str) {
            this.f17467h = str;
            return this;
        }

        public Builder withAdType(AdType adType) {
            this.f17462c = adType;
            return this;
        }

        public Builder withAdUnitId(String str) {
            this.f17464e = str;
            return this;
        }

        public Builder withAdUnitName(String str) {
            this.f17465f = str;
            return this;
        }

        public Builder withPayload(Map<String, String> map) {
            Map copyOf;
            if (map == null) {
                copyOf = null;
            } else {
                copyOf = CollectionUtils.copyOf(map);
            }
            this.f17469j = copyOf;
            return this;
        }

        public Builder withPrecision(String str) {
            this.f17468i = str;
            return this;
        }

        private Builder(BigDecimal bigDecimal, Currency currency) {
            this.f17460a = bigDecimal;
            this.f17461b = currency;
        }
    }

    /* synthetic */ AdRevenue(BigDecimal bigDecimal, Currency currency, AdType adType, String str, String str2, String str3, String str4, String str5, String str6, Map map, int i10) {
        this(bigDecimal, currency, adType, str, str2, str3, str4, str5, str6, map);
    }

    public static Builder newBuilder(BigDecimal bigDecimal, Currency currency) {
        return new Builder(bigDecimal, currency, 0);
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
        this.payload = map == null ? null : CollectionUtils.unmodifiableMapCopy(map);
    }

    public static Builder newBuilder(long j10, Currency currency) {
        return new Builder(Rn.a(j10), currency, 0);
    }

    public static Builder newBuilder(double d10, Currency currency) {
        return new Builder(new BigDecimal(Rn.a(d10)), currency, 0);
    }
}
