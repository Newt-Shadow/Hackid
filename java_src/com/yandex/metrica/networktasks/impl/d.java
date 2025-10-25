package com.yandex.metrica.networktasks.impl;

import android.text.TextUtils;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkTask;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.m;
import rd.b0;
import yc.w;
/* loaded from: classes2.dex */
public final class d {
    private final void a(Request.Builder builder, Map map) {
        String X;
        for (Map.Entry entry : map.entrySet()) {
            X = w.X((Iterable) entry.getValue(), StringUtils.COMMA, null, null, 0, null, null, 62, null);
            builder.a((String) entry.getKey(), X);
        }
    }

    public final boolean b(NetworkTask task) {
        CharSequence P0;
        byte[] d10;
        m.e(task, "task");
        if (task.o()) {
            String l10 = task.l();
            if (l10 != null) {
                P0 = b0.P0(l10);
                if (!TextUtils.isEmpty(P0.toString())) {
                    Request.Builder a10 = new Request.Builder(l10).a("Accept", "application/json").a("User-Agent", task.m());
                    m.d(a10, "Request.Builder(url)\n   …erAgent\n                )");
                    RequestDataHolder g10 = task.g();
                    m.d(g10, "task.requestDataHolder");
                    Map b10 = g10.b();
                    m.d(b10, "requestDataHolder.headers");
                    a(a10, b10);
                    if (NetworkTask.Method.POST == g10.c() && (d10 = g10.d()) != null) {
                        if (!(d10.length == 0)) {
                            a10.c(d10);
                            Long it = g10.e();
                            if (it != null) {
                                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                                m.d(it, "it");
                                a10.a("Send-Timestamp", String.valueOf(timeUnit.toSeconds(it.longValue())));
                            }
                            Integer f10 = g10.f();
                            if (f10 != null) {
                                a10.a("Send-Timezone", String.valueOf(f10.intValue()));
                            }
                        }
                    }
                    NetworkClient.Builder builder = new NetworkClient.Builder();
                    int i10 = a.f14226a;
                    NetworkClient a11 = builder.b(i10).e(i10).f(task.j()).a();
                    m.d(a11, "NetworkClient.Builder()\n…\n                .build()");
                    Response execute = a11.g(a10.b()).execute();
                    m.d(execute, "client.newCall(requestBuilder.build()).execute()");
                    int a12 = execute.a();
                    ResponseDataHolder h10 = task.h();
                    m.d(h10, "task.responseDataHolder");
                    h10.e(a12);
                    h10.g(execute.d());
                    if (h10.d()) {
                        h10.f(execute.e());
                    }
                    if (execute.f()) {
                        return task.p();
                    }
                    task.q(execute.c());
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Task ");
            sb2.append(task.c());
            sb2.append(" url is `");
            sb2.append(l10);
            sb2.append("`. ");
            sb2.append("All hosts = ");
            UnderlyingNetworkTask k10 = task.k();
            m.d(k10, "task.underlyingTask");
            FullUrlFormer fullUrlFormer = k10.getFullUrlFormer();
            m.d(fullUrlFormer, "task.underlyingTask.fullUrlFormer");
            List b11 = fullUrlFormer.b();
            sb2.append(b11 != null ? b11.toString() : null);
            task.q(new IllegalArgumentException(sb2.toString()));
            return false;
        }
        task.q(null);
        return false;
    }
}
