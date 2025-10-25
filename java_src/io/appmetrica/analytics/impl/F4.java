package io.appmetrica.analytics.impl;

import android.location.Location;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.networktasks.internal.ArgumentsMerger;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class F4 implements ArgumentsMerger {

    /* renamed from: a  reason: collision with root package name */
    public final String f18199a;

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f18200b;

    /* renamed from: c  reason: collision with root package name */
    public final Location f18201c;

    /* renamed from: d  reason: collision with root package name */
    public final Boolean f18202d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f18203e;

    /* renamed from: f  reason: collision with root package name */
    public final Integer f18204f;

    /* renamed from: g  reason: collision with root package name */
    public final Integer f18205g;

    /* renamed from: h  reason: collision with root package name */
    public final Boolean f18206h;

    /* renamed from: i  reason: collision with root package name */
    public final Boolean f18207i;

    /* renamed from: j  reason: collision with root package name */
    public final Map<String, String> f18208j;

    /* renamed from: k  reason: collision with root package name */
    public final Integer f18209k;

    /* renamed from: l  reason: collision with root package name */
    public final Boolean f18210l;

    /* renamed from: m  reason: collision with root package name */
    public final Boolean f18211m;

    /* renamed from: n  reason: collision with root package name */
    public final Boolean f18212n;

    public F4(String str, Boolean bool, Location location, Boolean bool2, Integer num, Integer num2, Integer num3, Boolean bool3, Boolean bool4, Map map, Integer num4, Boolean bool5, Boolean bool6, Boolean bool7) {
        this.f18199a = str;
        this.f18200b = bool;
        this.f18201c = location;
        this.f18202d = bool2;
        this.f18203e = num;
        this.f18204f = num2;
        this.f18205g = num3;
        this.f18206h = bool3;
        this.f18207i = bool4;
        this.f18208j = map;
        this.f18209k = num4;
        this.f18210l = bool5;
        this.f18211m = bool6;
        this.f18212n = bool7;
    }

    public final boolean a(F4 f42) {
        return equals(f42);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    /* renamed from: b */
    public final F4 mergeFrom(F4 f42) {
        return new F4((String) WrapUtils.getOrDefaultNullable(this.f18199a, f42.f18199a), (Boolean) WrapUtils.getOrDefaultNullable(this.f18200b, f42.f18200b), (Location) WrapUtils.getOrDefaultNullable(this.f18201c, f42.f18201c), (Boolean) WrapUtils.getOrDefaultNullable(this.f18202d, f42.f18202d), (Integer) WrapUtils.getOrDefaultNullable(this.f18203e, f42.f18203e), (Integer) WrapUtils.getOrDefaultNullable(this.f18204f, f42.f18204f), (Integer) WrapUtils.getOrDefaultNullable(this.f18205g, f42.f18205g), (Boolean) WrapUtils.getOrDefaultNullable(this.f18206h, f42.f18206h), (Boolean) WrapUtils.getOrDefaultNullable(this.f18207i, f42.f18207i), (Map) WrapUtils.getOrDefaultNullable(this.f18208j, f42.f18208j), (Integer) WrapUtils.getOrDefaultNullable(this.f18209k, f42.f18209k), (Boolean) WrapUtils.getOrDefaultNullable(this.f18210l, f42.f18210l), (Boolean) WrapUtils.getOrDefaultNullable(this.f18211m, f42.f18211m), (Boolean) WrapUtils.getOrDefaultNullable(this.f18212n, f42.f18212n));
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    public final boolean compareWithOtherArguments(Object obj) {
        return equals((F4) obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || F4.class != obj.getClass()) {
            return false;
        }
        F4 f42 = (F4) obj;
        if (Objects.equals(this.f18199a, f42.f18199a) && Objects.equals(this.f18200b, f42.f18200b) && Objects.equals(this.f18201c, f42.f18201c) && Objects.equals(this.f18202d, f42.f18202d) && Objects.equals(this.f18203e, f42.f18203e) && Objects.equals(this.f18204f, f42.f18204f) && Objects.equals(this.f18205g, f42.f18205g) && Objects.equals(this.f18206h, f42.f18206h) && Objects.equals(this.f18207i, f42.f18207i) && Objects.equals(this.f18208j, f42.f18208j) && Objects.equals(this.f18209k, f42.f18209k) && Objects.equals(this.f18210l, f42.f18210l) && Objects.equals(this.f18211m, f42.f18211m) && Objects.equals(this.f18212n, f42.f18212n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Objects.hashCode(this.f18200b);
        int hashCode2 = Objects.hashCode(this.f18201c);
        int hashCode3 = Objects.hashCode(this.f18202d);
        int hashCode4 = Objects.hashCode(this.f18203e);
        int hashCode5 = Objects.hashCode(this.f18204f);
        int hashCode6 = Objects.hashCode(this.f18205g);
        int hashCode7 = Objects.hashCode(this.f18206h);
        int hashCode8 = Objects.hashCode(this.f18207i);
        int hashCode9 = Objects.hashCode(this.f18208j);
        int hashCode10 = Objects.hashCode(this.f18209k);
        int hashCode11 = Objects.hashCode(this.f18210l);
        int hashCode12 = Objects.hashCode(this.f18211m);
        return Objects.hashCode(this.f18212n) + ((hashCode12 + ((hashCode11 + ((hashCode10 + ((hashCode9 + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (Objects.hashCode(this.f18199a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ReporterArguments{apiKey='" + this.f18199a + "', locationTracking=" + this.f18200b + ", manualLocation=" + this.f18201c + ", firstActivationAsUpdate=" + this.f18202d + ", sessionTimeout=" + this.f18203e + ", maxReportsCount=" + this.f18204f + ", dispatchPeriod=" + this.f18205g + ", logEnabled=" + this.f18206h + ", dataSendingEnabled=" + this.f18207i + ", clidsFromClient=" + this.f18208j + ", maxReportsInDbCount=" + this.f18209k + ", nativeCrashesEnabled=" + this.f18210l + ", revenueAutoTrackingEnabled=" + this.f18211m + ", advIdentifiersTrackingEnabled=" + this.f18212n + '}';
    }

    public F4(CounterConfiguration counterConfiguration, Map<String, String> map) {
        this(counterConfiguration.getApiKey(), counterConfiguration.isLocationTrackingEnabled(), counterConfiguration.getManualLocation(), counterConfiguration.isFirstActivationAsUpdate(), counterConfiguration.getSessionTimeout(), counterConfiguration.getMaxReportsCount(), counterConfiguration.getDispatchPeriod(), counterConfiguration.isLogEnabled(), counterConfiguration.getDataSendingEnabled(), map, counterConfiguration.getMaxReportsInDbCount(), counterConfiguration.getReportNativeCrashesEnabled(), counterConfiguration.isRevenueAutoTrackingEnabled(), counterConfiguration.isAdvIdentifiersTrackingEnabled());
    }

    public F4() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null);
    }
}
