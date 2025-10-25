package io.appmetrica.analytics;
/* loaded from: classes2.dex */
public class AppMetricaLibraryAdapterConfig {
    public final Boolean advIdentifiersTracking;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private Boolean f17499a;

        public AppMetricaLibraryAdapterConfig build() {
            return new AppMetricaLibraryAdapterConfig(this, 0);
        }

        public Builder withAdvIdentifiersTracking(boolean z10) {
            this.f17499a = Boolean.valueOf(z10);
            return this;
        }
    }

    /* synthetic */ AppMetricaLibraryAdapterConfig(Builder builder, int i10) {
        this(builder);
    }

    public static Builder newConfigBuilder() {
        return new Builder();
    }

    public String toString() {
        return "AppMetricaLibraryAdapterConfig{advIdentifiersTracking=" + this.advIdentifiersTracking + '}';
    }

    private AppMetricaLibraryAdapterConfig(Builder builder) {
        this.advIdentifiersTracking = builder.f17499a;
    }
}
