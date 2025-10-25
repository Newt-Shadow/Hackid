package com.yandex.metrica.network.impl;

import com.yandex.metrica.network.Call;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class c implements Call {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkClient f14157a;

    /* renamed from: b  reason: collision with root package name */
    private final Request f14158b;

    /* renamed from: c  reason: collision with root package name */
    private final d f14159c;

    public c(NetworkClient client, Request request, d urlProvider) {
        m.e(client, "client");
        m.e(request, "request");
        m.e(urlProvider, "urlProvider");
        this.f14157a = client;
        this.f14158b = request;
        this.f14159c = urlProvider;
    }

    private final void a(HttpsURLConnection httpsURLConnection) {
        for (Map.Entry entry : this.f14158b.b().entrySet()) {
            httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Integer it = this.f14157a.d();
        if (it != null) {
            m.d(it, "it");
            httpsURLConnection.setReadTimeout(it.intValue());
        }
        Integer it2 = this.f14157a.a();
        if (it2 != null) {
            m.d(it2, "it");
            httpsURLConnection.setConnectTimeout(it2.intValue());
        }
        Boolean it3 = this.f14157a.f();
        if (it3 != null) {
            m.d(it3, "it");
            httpsURLConnection.setUseCaches(it3.booleanValue());
        }
        Boolean it4 = this.f14157a.b();
        if (it4 != null) {
            m.d(it4, "it");
            httpsURLConnection.setInstanceFollowRedirects(it4.booleanValue());
        }
        httpsURLConnection.setRequestMethod(this.f14158b.c());
        SSLSocketFactory e10 = this.f14157a.e();
        if (e10 != null) {
            httpsURLConnection.setSSLSocketFactory(e10);
        }
    }

    @Override // com.yandex.metrica.network.Call
    public Response execute() {
        Map<String, List<String>> map;
        Throwable th;
        int i10;
        boolean z10;
        Throwable th2;
        byte[] bArr;
        byte[] bArr2;
        int i11;
        try {
            d dVar = this.f14159c;
            String d10 = this.f14158b.d();
            dVar.getClass();
            URLConnection openConnection = new URL(d10).openConnection();
            if (!(openConnection instanceof HttpsURLConnection)) {
                openConnection = null;
            }
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
            if (httpsURLConnection != null) {
                byte[] bArr3 = new byte[0];
                byte[] bArr4 = new byte[0];
                try {
                    a(httpsURLConnection);
                    if (m.a(this.f14158b.c(), "POST")) {
                        httpsURLConnection.setDoOutput(true);
                        OutputStream outputStream = httpsURLConnection.getOutputStream();
                        if (outputStream != null) {
                            outputStream.write(this.f14158b.a());
                            outputStream.flush();
                            gd.b.a(outputStream, null);
                        }
                    }
                    i10 = httpsURLConnection.getResponseCode();
                    try {
                        map = httpsURLConnection.getHeaderFields();
                        try {
                            e eVar = e.f14160a;
                            bArr3 = eVar.b(this.f14157a.c(), new a(httpsURLConnection));
                            byte[] b10 = eVar.b(this.f14157a.c(), new b(httpsURLConnection));
                            try {
                                httpsURLConnection.disconnect();
                            } catch (Throwable unused) {
                            }
                            th2 = null;
                            bArr = bArr3;
                            bArr2 = b10;
                            i11 = i10;
                            z10 = true;
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                httpsURLConnection.disconnect();
                            } catch (Throwable unused2) {
                            }
                            z10 = false;
                            th2 = th;
                            bArr = bArr3;
                            bArr2 = bArr4;
                            i11 = i10;
                            return new Response(z10, i11, bArr, bArr2, map, th2);
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
                return new Response(z10, i11, bArr, bArr2, map, th2);
            }
            return new Response(new IllegalArgumentException("Connection created for " + this.f14158b.d() + " does not represent https connection"));
        } catch (Throwable th6) {
            return new Response(th6);
        }
    }
}
