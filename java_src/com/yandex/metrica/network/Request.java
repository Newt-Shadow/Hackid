package com.yandex.metrica.network;

import android.text.TextUtils;
import com.yandex.metrica.network.impl.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Request {

    /* renamed from: a  reason: collision with root package name */
    private final String f14141a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14142b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f14143c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f14144d;

    /* loaded from: classes2.dex */
    public class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final String f14145a;

        /* renamed from: b  reason: collision with root package name */
        private String f14146b;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f14147c = new byte[0];

        /* renamed from: d  reason: collision with root package name */
        private final Map f14148d = new HashMap();

        public Builder(String str) {
            this.f14145a = str;
        }

        public Builder a(String str, String str2) {
            this.f14148d.put(str, str2);
            return this;
        }

        public Request b() {
            return new Request(this.f14145a, this.f14146b, this.f14147c, this.f14148d);
        }

        public Builder c(byte[] bArr) {
            this.f14147c = bArr;
            return d("POST");
        }

        public Builder d(String str) {
            this.f14146b = str;
            return this;
        }
    }

    private Request(String str, String str2, byte[] bArr, Map map) {
        this.f14141a = str;
        this.f14142b = TextUtils.isEmpty(str2) ? "GET" : str2;
        this.f14143c = bArr;
        this.f14144d = e.a(map);
    }

    public byte[] a() {
        return this.f14143c;
    }

    public Map b() {
        return this.f14144d;
    }

    public String c() {
        return this.f14142b;
    }

    public String d() {
        return this.f14141a;
    }

    public String toString() {
        return "Request{url=" + this.f14141a + ", method='" + this.f14142b + "', bodyLength=" + this.f14143c.length + ", headers=" + this.f14144d + '}';
    }
}
