package io.appmetrica.analytics.network.internal;

import android.text.TextUtils;
import io.appmetrica.analytics.network.impl.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Request {

    /* renamed from: a  reason: collision with root package name */
    private final String f21234a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21235b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f21236c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f21237d;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final String f21238a;

        /* renamed from: b  reason: collision with root package name */
        private String f21239b;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f21240c = new byte[0];

        /* renamed from: d  reason: collision with root package name */
        private final HashMap f21241d = new HashMap();

        public Builder(String str) {
            this.f21238a = str;
        }

        public Builder addHeader(String str, String str2) {
            this.f21241d.put(str, str2);
            return this;
        }

        public Request build() {
            return new Request(this.f21238a, this.f21239b, this.f21240c, this.f21241d, 0);
        }

        public Builder post(byte[] bArr) {
            this.f21240c = bArr;
            return withMethod("POST");
        }

        public Builder withMethod(String str) {
            this.f21239b = str;
            return this;
        }
    }

    /* synthetic */ Request(String str, String str2, byte[] bArr, HashMap hashMap, int i10) {
        this(str, str2, bArr, hashMap);
    }

    public byte[] getBody() {
        return this.f21236c;
    }

    public Map<String, String> getHeaders() {
        return this.f21237d;
    }

    public String getMethod() {
        return this.f21235b;
    }

    public String getUrl() {
        return this.f21234a;
    }

    public String toString() {
        return "Request{url=" + this.f21234a + ", method='" + this.f21235b + "', bodyLength=" + this.f21236c.length + ", headers=" + this.f21237d + '}';
    }

    private Request(String str, String str2, byte[] bArr, HashMap hashMap) {
        this.f21234a = str;
        this.f21235b = TextUtils.isEmpty(str2) ? "GET" : str2;
        this.f21236c = bArr;
        this.f21237d = e.a(hashMap);
    }
}
