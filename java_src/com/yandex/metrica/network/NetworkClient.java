package com.yandex.metrica.network;

import com.yandex.metrica.network.impl.c;
import com.yandex.metrica.network.impl.d;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public class NetworkClient {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f14129a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f14130b;

    /* renamed from: c  reason: collision with root package name */
    private final SSLSocketFactory f14131c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f14132d;

    /* renamed from: e  reason: collision with root package name */
    private final Boolean f14133e;

    /* renamed from: f  reason: collision with root package name */
    private final int f14134f;

    /* loaded from: classes2.dex */
    public class Builder {

        /* renamed from: a  reason: collision with root package name */
        private Integer f14135a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f14136b;

        /* renamed from: c  reason: collision with root package name */
        private SSLSocketFactory f14137c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f14138d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f14139e;

        /* renamed from: f  reason: collision with root package name */
        private Integer f14140f;

        public NetworkClient a() {
            return new NetworkClient(this.f14135a, this.f14136b, this.f14137c, this.f14138d, this.f14139e, this.f14140f);
        }

        public Builder b(int i10) {
            this.f14135a = Integer.valueOf(i10);
            return this;
        }

        public Builder c(boolean z10) {
            this.f14139e = Boolean.valueOf(z10);
            return this;
        }

        public Builder d(int i10) {
            this.f14140f = Integer.valueOf(i10);
            return this;
        }

        public Builder e(int i10) {
            this.f14136b = Integer.valueOf(i10);
            return this;
        }

        public Builder f(SSLSocketFactory sSLSocketFactory) {
            this.f14137c = sSLSocketFactory;
            return this;
        }

        public Builder g(boolean z10) {
            this.f14138d = Boolean.valueOf(z10);
            return this;
        }
    }

    private NetworkClient(Integer num, Integer num2, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, Integer num3) {
        this.f14129a = num;
        this.f14130b = num2;
        this.f14131c = sSLSocketFactory;
        this.f14132d = bool;
        this.f14133e = bool2;
        this.f14134f = num3 == null ? Integer.MAX_VALUE : num3.intValue();
    }

    public Integer a() {
        return this.f14129a;
    }

    public Boolean b() {
        return this.f14133e;
    }

    public int c() {
        return this.f14134f;
    }

    public Integer d() {
        return this.f14130b;
    }

    public SSLSocketFactory e() {
        return this.f14131c;
    }

    public Boolean f() {
        return this.f14132d;
    }

    public Call g(Request request) {
        m.e(this, "client");
        m.e(request, "request");
        return new c(this, request, new d());
    }

    public String toString() {
        return "NetworkClient{connectTimeout=" + this.f14129a + ", readTimeout=" + this.f14130b + ", sslSocketFactory=" + this.f14131c + ", useCaches=" + this.f14132d + ", instanceFollowRedirects=" + this.f14133e + ", maxResponseSize=" + this.f14134f + '}';
    }
}
