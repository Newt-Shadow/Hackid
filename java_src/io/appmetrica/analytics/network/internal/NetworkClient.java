package io.appmetrica.analytics.network.internal;

import io.appmetrica.analytics.network.impl.c;
import io.appmetrica.analytics.network.impl.d;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class NetworkClient {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f21222a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f21223b;

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f21224c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f21225d;

    /* renamed from: e  reason: collision with root package name */
    private final Boolean f21226e;

    /* renamed from: f  reason: collision with root package name */
    private final int f21227f;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private Integer f21228a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f21229b;

        /* renamed from: c  reason: collision with root package name */
        private SSLSocketFactory f21230c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f21231d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f21232e;

        /* renamed from: f  reason: collision with root package name */
        private Integer f21233f;

        public NetworkClient build() {
            return new NetworkClient(this.f21228a, this.f21229b, this.f21230c, this.f21231d, this.f21232e, this.f21233f, 0);
        }

        public Builder withConnectTimeout(int i10) {
            this.f21228a = Integer.valueOf(i10);
            return this;
        }

        public Builder withInstanceFollowRedirects(boolean z10) {
            this.f21232e = Boolean.valueOf(z10);
            return this;
        }

        public Builder withMaxResponseSize(int i10) {
            this.f21233f = Integer.valueOf(i10);
            return this;
        }

        public Builder withReadTimeout(int i10) {
            this.f21229b = Integer.valueOf(i10);
            return this;
        }

        public Builder withSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.f21230c = sSLSocketFactory;
            return this;
        }

        public Builder withUseCaches(boolean z10) {
            this.f21231d = Boolean.valueOf(z10);
            return this;
        }
    }

    /* synthetic */ NetworkClient(Integer num, Integer num2, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, Integer num3, int i10) {
        this(num, num2, sSLSocketFactory, bool, bool2, num3);
    }

    public Integer getConnectTimeout() {
        return this.f21222a;
    }

    public Boolean getInstanceFollowRedirects() {
        return this.f21226e;
    }

    public int getMaxResponseSize() {
        return this.f21227f;
    }

    public Integer getReadTimeout() {
        return this.f21223b;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f21224c;
    }

    public Boolean getUseCaches() {
        return this.f21225d;
    }

    public Call newCall(Request request) {
        return new c(this, request, new d());
    }

    public String toString() {
        return "NetworkClient{connectTimeout=" + this.f21222a + ", readTimeout=" + this.f21223b + ", sslSocketFactory=" + this.f21224c + ", useCaches=" + this.f21225d + ", instanceFollowRedirects=" + this.f21226e + ", maxResponseSize=" + this.f21227f + '}';
    }

    private NetworkClient(Integer num, Integer num2, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, Integer num3) {
        this.f21222a = num;
        this.f21223b = num2;
        this.f21224c = sSLSocketFactory;
        this.f21225d = bool;
        this.f21226e = bool2;
        this.f21227f = num3 == null ? Integer.MAX_VALUE : num3.intValue();
    }
}
