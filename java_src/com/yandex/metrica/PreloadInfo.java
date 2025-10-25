package com.yandex.metrica;

import com.yandex.metrica.impl.ob.A2;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class PreloadInfo {

    /* renamed from: a  reason: collision with root package name */
    private String f9545a;

    /* renamed from: b  reason: collision with root package name */
    private Map f9546b;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f9547a;

        /* renamed from: b  reason: collision with root package name */
        private Map f9548b;

        public PreloadInfo build() {
            return new PreloadInfo(this);
        }

        public Builder setAdditionalParams(String str, String str2) {
            if (str != null && str2 != null) {
                this.f9548b.put(str, str2);
            }
            return this;
        }

        private Builder(String str) {
            this.f9547a = str;
            this.f9548b = new HashMap();
        }
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public Map<String, String> getAdditionalParams() {
        return this.f9546b;
    }

    public String getTrackingId() {
        return this.f9545a;
    }

    private PreloadInfo(Builder builder) {
        this.f9545a = builder.f9547a;
        this.f9546b = A2.d(builder.f9548b);
    }
}
