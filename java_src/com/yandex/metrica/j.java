package com.yandex.metrica;

import android.location.Location;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.impl.ob.A2;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public class j extends YandexMetricaConfig {

    /* renamed from: a  reason: collision with root package name */
    public final String f14099a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f14100b;

    /* renamed from: c  reason: collision with root package name */
    public final String f14101c;

    /* renamed from: d  reason: collision with root package name */
    public final List f14102d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f14103e;

    /* renamed from: f  reason: collision with root package name */
    public final Integer f14104f;

    /* renamed from: g  reason: collision with root package name */
    public final Integer f14105g;

    /* renamed from: h  reason: collision with root package name */
    public final Map f14106h;

    /* renamed from: i  reason: collision with root package name */
    public final Boolean f14107i;

    /* renamed from: j  reason: collision with root package name */
    public final Boolean f14108j;

    /* renamed from: k  reason: collision with root package name */
    public final Boolean f14109k;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private YandexMetricaConfig.Builder f14110a;

        /* renamed from: b  reason: collision with root package name */
        private String f14111b;

        /* renamed from: c  reason: collision with root package name */
        private List f14112c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f14113d;

        /* renamed from: e  reason: collision with root package name */
        private Map f14114e;

        /* renamed from: f  reason: collision with root package name */
        public String f14115f;

        /* renamed from: g  reason: collision with root package name */
        private Integer f14116g;

        /* renamed from: h  reason: collision with root package name */
        private Integer f14117h;

        /* renamed from: i  reason: collision with root package name */
        private LinkedHashMap f14118i = new LinkedHashMap();

        /* renamed from: j  reason: collision with root package name */
        private Boolean f14119j;

        /* renamed from: k  reason: collision with root package name */
        private Boolean f14120k;

        /* renamed from: l  reason: collision with root package name */
        private Boolean f14121l;

        protected b(String str) {
            this.f14110a = YandexMetricaConfig.newConfigBuilder(str);
        }

        static /* synthetic */ void C(b bVar) {
        }

        static /* synthetic */ void u(b bVar) {
        }

        static /* synthetic */ d y(b bVar) {
            bVar.getClass();
            return null;
        }

        public b A(boolean z10) {
            this.f14110a.withLocationTracking(z10);
            return this;
        }

        public b B(boolean z10) {
            this.f14110a.withNativeCrashReporting(z10);
            return this;
        }

        public b D(boolean z10) {
            this.f14120k = Boolean.valueOf(z10);
            return this;
        }

        public b F(boolean z10) {
            this.f14110a.withRevenueAutoTrackingEnabled(z10);
            return this;
        }

        public b H(boolean z10) {
            this.f14110a.withSessionsAutoTrackingEnabled(z10);
            return this;
        }

        public b J(boolean z10) {
            this.f14110a.withStatisticsSending(z10);
            return this;
        }

        public b b(int i10) {
            if (i10 >= 0) {
                this.f14113d = Integer.valueOf(i10);
                return this;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid %1$s. %1$s should be positive.", "App Build Number"));
        }

        public b c(Location location) {
            this.f14110a.withLocation(location);
            return this;
        }

        public b d(PreloadInfo preloadInfo) {
            this.f14110a.withPreloadInfo(preloadInfo);
            return this;
        }

        public b e(d dVar) {
            return this;
        }

        public b f(String str) {
            this.f14110a.withAppVersion(str);
            return this;
        }

        public b g(String str, String str2) {
            this.f14118i.put(str, str2);
            return this;
        }

        public b h(List list) {
            this.f14112c = list;
            return this;
        }

        public b i(Map map, Boolean bool) {
            this.f14119j = bool;
            this.f14114e = map;
            return this;
        }

        public b j(boolean z10) {
            this.f14110a.handleFirstActivationAsUpdate(z10);
            return this;
        }

        public j k() {
            return new j(this);
        }

        public b l() {
            this.f14110a.withLogs();
            return this;
        }

        public b m(int i10) {
            this.f14116g = Integer.valueOf(i10);
            return this;
        }

        public b n(String str) {
            this.f14111b = str;
            return this;
        }

        public b o(String str, String str2) {
            this.f14110a.withErrorEnvironmentValue(str, str2);
            return this;
        }

        public b p(boolean z10) {
            this.f14121l = Boolean.valueOf(z10);
            return this;
        }

        public b r(int i10) {
            this.f14117h = Integer.valueOf(i10);
            return this;
        }

        public b s(String str) {
            this.f14110a.withUserProfileID(str);
            return this;
        }

        public b t(boolean z10) {
            this.f14110a.withAppOpenTrackingEnabled(z10);
            return this;
        }

        public b v(int i10) {
            this.f14110a.withMaxReportsInDatabaseCount(i10);
            return this;
        }

        public b w(boolean z10) {
            this.f14110a.withCrashReporting(z10);
            return this;
        }

        public b z(int i10) {
            this.f14110a.withSessionTimeout(i10);
            return this;
        }
    }

    public static b a(YandexMetricaConfig yandexMetricaConfig) {
        b bVar = new b(yandexMetricaConfig.apiKey);
        if (A2.a((Object) yandexMetricaConfig.appVersion)) {
            bVar.f(yandexMetricaConfig.appVersion);
        }
        if (A2.a(yandexMetricaConfig.sessionTimeout)) {
            bVar.z(yandexMetricaConfig.sessionTimeout.intValue());
        }
        if (A2.a(yandexMetricaConfig.crashReporting)) {
            bVar.w(yandexMetricaConfig.crashReporting.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.nativeCrashReporting)) {
            bVar.B(yandexMetricaConfig.nativeCrashReporting.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.location)) {
            bVar.c(yandexMetricaConfig.location);
        }
        if (A2.a(yandexMetricaConfig.locationTracking)) {
            bVar.A(yandexMetricaConfig.locationTracking.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.logs) && yandexMetricaConfig.logs.booleanValue()) {
            bVar.l();
        }
        if (A2.a(yandexMetricaConfig.preloadInfo)) {
            bVar.d(yandexMetricaConfig.preloadInfo);
        }
        if (A2.a(yandexMetricaConfig.firstActivationAsUpdate)) {
            bVar.j(yandexMetricaConfig.firstActivationAsUpdate.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.statisticsSending)) {
            bVar.J(yandexMetricaConfig.statisticsSending.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.maxReportsInDatabaseCount)) {
            bVar.v(yandexMetricaConfig.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a((Object) yandexMetricaConfig.errorEnvironment)) {
            for (Map.Entry<String, String> entry : yandexMetricaConfig.errorEnvironment.entrySet()) {
                bVar.o(entry.getKey(), entry.getValue());
            }
        }
        if (A2.a((Object) yandexMetricaConfig.userProfileID)) {
            bVar.s(yandexMetricaConfig.userProfileID);
        }
        if (A2.a(yandexMetricaConfig.revenueAutoTrackingEnabled)) {
            bVar.F(yandexMetricaConfig.revenueAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.sessionsAutoTrackingEnabled)) {
            bVar.H(yandexMetricaConfig.sessionsAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.appOpenTrackingEnabled)) {
            bVar.t(yandexMetricaConfig.appOpenTrackingEnabled.booleanValue());
        }
        if (yandexMetricaConfig instanceof j) {
            j jVar = (j) yandexMetricaConfig;
            if (A2.a((Object) jVar.f14102d)) {
                bVar.h(jVar.f14102d);
            }
            if (A2.a((Object) null)) {
                bVar.e(null);
            }
            A2.a((Object) null);
        }
        return bVar;
    }

    public static b b(String str) {
        return new b(str);
    }

    public j(YandexMetricaConfig yandexMetricaConfig) {
        super(yandexMetricaConfig);
        this.f14099a = null;
        this.f14100b = null;
        this.f14103e = null;
        this.f14104f = null;
        this.f14105g = null;
        this.f14101c = null;
        this.f14106h = null;
        this.f14107i = null;
        this.f14108j = null;
        this.f14102d = null;
        this.f14109k = null;
    }

    private j(b bVar) {
        super(bVar.f14110a);
        this.f14103e = bVar.f14113d;
        List list = bVar.f14112c;
        this.f14102d = list == null ? null : A2.c(list);
        this.f14099a = bVar.f14111b;
        Map map = bVar.f14114e;
        this.f14100b = map != null ? A2.e(map) : null;
        this.f14105g = bVar.f14117h;
        this.f14104f = bVar.f14116g;
        this.f14101c = bVar.f14115f;
        this.f14106h = A2.e(bVar.f14118i);
        this.f14107i = bVar.f14119j;
        this.f14108j = bVar.f14120k;
        b.u(bVar);
        this.f14109k = bVar.f14121l;
        b.y(bVar);
        b.C(bVar);
    }
}
