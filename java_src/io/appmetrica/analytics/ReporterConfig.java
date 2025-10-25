package io.appmetrica.analytics;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.impl.C1032a0;
import io.appmetrica.analytics.impl.C1304kn;
import io.appmetrica.analytics.impl.C5;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ReporterConfig {
    public final Map<String, Object> additionalConfig;
    public final String apiKey;
    public final Map<String, String> appEnvironment;
    public final Boolean dataSendingEnabled;
    public final Integer dispatchPeriodSeconds;
    public final Boolean logs;
    public final Integer maxReportsCount;
    public final Integer maxReportsInDatabaseCount;
    public final Integer sessionTimeout;
    public final String userProfileID;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: l  reason: collision with root package name */
        private static final C1304kn f17526l = new C1304kn(new C1032a0());

        /* renamed from: a  reason: collision with root package name */
        private final C5 f17527a;

        /* renamed from: b  reason: collision with root package name */
        private final String f17528b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f17529c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f17530d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f17531e;

        /* renamed from: f  reason: collision with root package name */
        private Integer f17532f;

        /* renamed from: g  reason: collision with root package name */
        private String f17533g;

        /* renamed from: h  reason: collision with root package name */
        private Integer f17534h;

        /* renamed from: i  reason: collision with root package name */
        private Integer f17535i;

        /* renamed from: j  reason: collision with root package name */
        private final HashMap f17536j;

        /* renamed from: k  reason: collision with root package name */
        private final HashMap f17537k;

        /* synthetic */ Builder(String str, int i10) {
            this(str);
        }

        public ReporterConfig build() {
            return new ReporterConfig(this, 0);
        }

        public Builder withAdditionalConfig(String str, Object obj) {
            this.f17537k.put(str, obj);
            return this;
        }

        public Builder withAppEnvironmentValue(String str, String str2) {
            this.f17536j.put(str, str2);
            return this;
        }

        public Builder withDataSendingEnabled(boolean z10) {
            this.f17531e = Boolean.valueOf(z10);
            return this;
        }

        public Builder withDispatchPeriodSeconds(int i10) {
            this.f17534h = Integer.valueOf(i10);
            return this;
        }

        public Builder withLogs() {
            this.f17530d = Boolean.TRUE;
            return this;
        }

        public Builder withMaxReportsCount(int i10) {
            this.f17535i = Integer.valueOf(i10);
            return this;
        }

        public Builder withMaxReportsInDatabaseCount(int i10) {
            this.f17532f = Integer.valueOf(this.f17527a.a(i10));
            return this;
        }

        public Builder withSessionTimeout(int i10) {
            this.f17529c = Integer.valueOf(i10);
            return this;
        }

        public Builder withUserProfileID(String str) {
            this.f17533g = str;
            return this;
        }

        private Builder(String str) {
            this.f17536j = new HashMap();
            this.f17537k = new HashMap();
            f17526l.a(str);
            this.f17527a = new C5(str);
            this.f17528b = str;
        }
    }

    /* synthetic */ ReporterConfig(Builder builder, int i10) {
        this(builder);
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str, 0);
    }

    private ReporterConfig(Builder builder) {
        this.apiKey = builder.f17528b;
        this.sessionTimeout = builder.f17529c;
        this.logs = builder.f17530d;
        this.dataSendingEnabled = builder.f17531e;
        this.maxReportsInDatabaseCount = builder.f17532f;
        this.userProfileID = builder.f17533g;
        this.dispatchPeriodSeconds = builder.f17534h;
        this.maxReportsCount = builder.f17535i;
        this.appEnvironment = CollectionUtils.unmodifiableSameOrderMapCopy(builder.f17536j);
        this.additionalConfig = CollectionUtils.unmodifiableSameOrderMapCopy(builder.f17537k);
    }
}
