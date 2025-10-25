package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.plugins.YandexMetricaPlugins;
/* loaded from: classes2.dex */
public final class W2 {

    /* renamed from: a  reason: collision with root package name */
    private static final YandexMetricaPlugins f11680a;

    static {
        P g10 = P.g();
        kotlin.jvm.internal.m.d(g10, "ClientServiceLocator.getInstance()");
        ICommonExecutor c10 = g10.c();
        kotlin.jvm.internal.m.d(c10, "ClientServiceLocator.get…stance().apiProxyExecutor");
        f11680a = new V2(new Tf(c10));
    }

    public static final YandexMetricaPlugins a() {
        return f11680a;
    }
}
