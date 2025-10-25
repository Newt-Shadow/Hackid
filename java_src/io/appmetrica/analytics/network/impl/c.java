package io.appmetrica.analytics.network.impl;

import io.appmetrica.analytics.network.internal.Call;
import io.appmetrica.analytics.network.internal.NetworkClient;
import io.appmetrica.analytics.network.internal.Request;
import io.appmetrica.analytics.network.internal.Response;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes2.dex */
public final class c implements Call {

    /* renamed from: a  reason: collision with root package name */
    public final NetworkClient f21219a;

    /* renamed from: b  reason: collision with root package name */
    public final Request f21220b;

    /* renamed from: c  reason: collision with root package name */
    public final d f21221c;

    public c(NetworkClient networkClient, Request request, d dVar) {
        this.f21219a = networkClient;
        this.f21220b = request;
        this.f21221c = dVar;
    }

    public final void a(HttpsURLConnection httpsURLConnection) {
        Iterator<T> it = this.f21220b.getHeaders().entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Integer readTimeout = this.f21219a.getReadTimeout();
        if (readTimeout != null) {
            httpsURLConnection.setReadTimeout(readTimeout.intValue());
        }
        Integer connectTimeout = this.f21219a.getConnectTimeout();
        if (connectTimeout != null) {
            httpsURLConnection.setConnectTimeout(connectTimeout.intValue());
        }
        Boolean useCaches = this.f21219a.getUseCaches();
        if (useCaches != null) {
            httpsURLConnection.setUseCaches(useCaches.booleanValue());
        }
        Boolean instanceFollowRedirects = this.f21219a.getInstanceFollowRedirects();
        if (instanceFollowRedirects != null) {
            httpsURLConnection.setInstanceFollowRedirects(instanceFollowRedirects.booleanValue());
        }
        httpsURLConnection.setRequestMethod(this.f21220b.getMethod());
        SSLSocketFactory sslSocketFactory = this.f21219a.getSslSocketFactory();
        if (sslSocketFactory != null) {
            httpsURLConnection.setSSLSocketFactory(sslSocketFactory);
        }
    }

    @Override // io.appmetrica.analytics.network.internal.Call
    public final Response execute() {
        HttpsURLConnection httpsURLConnection;
        Map<String, List<String>> map;
        Throwable th;
        int i10;
        boolean z10;
        Throwable th2;
        byte[] bArr;
        byte[] bArr2;
        int i11;
        try {
            d dVar = this.f21221c;
            String url = this.f21220b.getUrl();
            dVar.getClass();
            URLConnection openConnection = new URL(url).openConnection();
            if (openConnection instanceof HttpsURLConnection) {
                httpsURLConnection = (HttpsURLConnection) openConnection;
            } else {
                httpsURLConnection = null;
            }
            if (httpsURLConnection == null) {
                return new Response(new IllegalArgumentException("Connection created for " + this.f21220b.getUrl() + " does not represent https connection"));
            }
            byte[] bArr3 = new byte[0];
            byte[] bArr4 = new byte[0];
            try {
                a(httpsURLConnection);
                if (m.a(this.f21220b.getMethod(), "POST")) {
                    httpsURLConnection.setDoOutput(true);
                    OutputStream outputStream = httpsURLConnection.getOutputStream();
                    if (outputStream != null) {
                        outputStream.write(this.f21220b.getBody());
                        outputStream.flush();
                        t tVar = t.f32733a;
                        gd.b.a(outputStream, null);
                    }
                }
                i10 = httpsURLConnection.getResponseCode();
                try {
                    map = httpsURLConnection.getHeaderFields();
                    try {
                        bArr3 = e.a(this.f21219a.getMaxResponseSize(), new a(httpsURLConnection));
                        th2 = null;
                        bArr = bArr3;
                        bArr2 = e.a(this.f21219a.getMaxResponseSize(), new b(httpsURLConnection));
                        i11 = i10;
                        z10 = true;
                    } catch (Throwable th3) {
                        th = th3;
                        z10 = false;
                        th2 = th;
                        bArr = bArr3;
                        bArr2 = bArr4;
                        i11 = i10;
                        Map<String, List<String>> map2 = map;
                        httpsURLConnection.disconnect();
                        return new Response(z10, i11, bArr, bArr2, map2, th2);
                    }
                } catch (Throwable th4) {
                    map = null;
                    th = th4;
                }
            } catch (Throwable th5) {
                map = null;
                th = th5;
                i10 = 0;
            }
            Map<String, List<String>> map22 = map;
            try {
                httpsURLConnection.disconnect();
            } catch (Throwable unused) {
            }
            return new Response(z10, i11, bArr, bArr2, map22, th2);
        } catch (Throwable th6) {
            return new Response(th6);
        }
    }

    public c(NetworkClient networkClient, Request request) {
        this(networkClient, request, new d());
    }
}
