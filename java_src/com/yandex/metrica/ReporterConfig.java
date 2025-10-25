package com.yandex.metrica;

import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.Hn;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Ln;
/* loaded from: classes.dex */
public class ReporterConfig {
    public final String apiKey;
    public final Boolean logs;
    public final Integer maxReportsInDatabaseCount;
    public final Integer sessionTimeout;
    public final Boolean statisticsSending;
    public final String userProfileID;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: g  reason: collision with root package name */
        private static final Kn f9551g = new Hn(new Ln());

        /* renamed from: a  reason: collision with root package name */
        private final String f9552a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f9553b;

        /* renamed from: c  reason: collision with root package name */
        private Boolean f9554c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f9555d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f9556e;

        /* renamed from: f  reason: collision with root package name */
        private String f9557f;

        Builder(String str) {
            ((Hn) f9551g).a(str);
            this.f9552a = str;
        }

        public ReporterConfig build() {
            return new ReporterConfig(this);
        }

        public Builder withLogs() {
            this.f9554c = Boolean.TRUE;
            return this;
        }

        public Builder withMaxReportsInDatabaseCount(int i10) {
            this.f9556e = Integer.valueOf(i10);
            return this;
        }

        public Builder withSessionTimeout(int i10) {
            this.f9553b = Integer.valueOf(i10);
            return this;
        }

        public Builder withStatisticsSending(boolean z10) {
            this.f9555d = Boolean.valueOf(z10);
            return this;
        }

        public Builder withUserProfileID(String str) {
            this.f9557f = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReporterConfig(Builder builder) {
        this.apiKey = builder.f9552a;
        this.sessionTimeout = builder.f9553b;
        this.logs = builder.f9554c;
        this.statisticsSending = builder.f9555d;
        this.maxReportsInDatabaseCount = builder.f9556e;
        this.userProfileID = builder.f9557f;
    }

    public static Builder createBuilderFromConfig(ReporterConfig reporterConfig) {
        Builder newConfigBuilder = newConfigBuilder(reporterConfig.apiKey);
        if (A2.a(reporterConfig.sessionTimeout)) {
            newConfigBuilder.withSessionTimeout(reporterConfig.sessionTimeout.intValue());
        }
        if (A2.a(reporterConfig.logs) && reporterConfig.logs.booleanValue()) {
            newConfigBuilder.withLogs();
        }
        if (A2.a(reporterConfig.statisticsSending)) {
            newConfigBuilder.withStatisticsSending(reporterConfig.statisticsSending.booleanValue());
        }
        if (A2.a(reporterConfig.maxReportsInDatabaseCount)) {
            newConfigBuilder.withMaxReportsInDatabaseCount(reporterConfig.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a((Object) reporterConfig.userProfileID)) {
            newConfigBuilder.withUserProfileID(reporterConfig.userProfileID);
        }
        return newConfigBuilder;
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReporterConfig(ReporterConfig reporterConfig) {
        this.apiKey = reporterConfig.apiKey;
        this.sessionTimeout = reporterConfig.sessionTimeout;
        this.logs = reporterConfig.logs;
        this.statisticsSending = reporterConfig.statisticsSending;
        this.maxReportsInDatabaseCount = reporterConfig.maxReportsInDatabaseCount;
        this.userProfileID = reporterConfig.userProfileID;
    }
}
