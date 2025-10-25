package io.appmetrica.analytics;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class PreloadInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f17522a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f17523b;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final String f17524a;

        /* renamed from: b  reason: collision with root package name */
        private final HashMap f17525b;

        /* synthetic */ Builder(String str, int i10) {
            this(str);
        }

        public PreloadInfo build() {
            return new PreloadInfo(this, 0);
        }

        public Builder setAdditionalParams(String str, String str2) {
            if (str != null && str2 != null) {
                this.f17525b.put(str, str2);
            }
            return this;
        }

        private Builder(String str) {
            this.f17524a = str;
            this.f17525b = new HashMap();
        }
    }

    /* synthetic */ PreloadInfo(Builder builder, int i10) {
        this(builder);
    }

    public static Builder newBuilder(String str) {
        return new Builder(str, 0);
    }

    public Map<String, String> getAdditionalParams() {
        return this.f17523b;
    }

    public String getTrackingId() {
        return this.f17522a;
    }

    private PreloadInfo(Builder builder) {
        this.f17522a = builder.f17524a;
        this.f17523b = CollectionUtils.unmodifiableMapCopy(builder.f17525b);
    }
}
