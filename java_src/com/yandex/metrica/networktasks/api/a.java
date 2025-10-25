package com.yandex.metrica.networktasks.api;

import android.text.TextUtils;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
class a {
    public Response a(String str, String str2, SSLSocketFactory sSLSocketFactory) {
        Request.Builder d10 = new Request.Builder(str2).d("GET");
        if (!TextUtils.isEmpty(str)) {
            d10.a("If-None-Match", str);
        }
        NetworkClient.Builder f10 = new NetworkClient.Builder().c(true).f(sSLSocketFactory);
        int i10 = com.yandex.metrica.networktasks.impl.a.f14226a;
        return f10.b(i10).e(i10).a().g(d10.b()).execute();
    }
}
