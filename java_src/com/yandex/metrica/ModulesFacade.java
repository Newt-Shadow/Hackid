package com.yandex.metrica;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.Mf;
import com.yandex.metrica.impl.ob.P;
import java.util.Map;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class ModulesFacade {

    /* renamed from: a  reason: collision with root package name */
    private static Mf f9544a;

    static {
        P g10 = P.g();
        m.d(g10, "ClientServiceLocator.getInstance()");
        ICommonExecutor c10 = g10.c();
        m.d(c10, "ClientServiceLocator.get…stance().apiProxyExecutor");
        f9544a = new Mf(c10);
    }

    public static final boolean isActivatedForApp() {
        return f9544a.a();
    }

    public static final void reportEvent(int i10, String str, String str2, Map<String, String> map) {
        reportEvent(i10, str, str2, map, null);
    }

    public static final void sendEventsBuffer() {
        f9544a.getClass();
        YandexMetrica.sendEventsBuffer();
    }

    public static final void setSessionExtra(String str, byte[] bArr) {
        f9544a.a(str, bArr);
    }

    public final void setProxy(Mf mf2) {
        f9544a = mf2;
    }

    public static final void reportEvent(int i10, String str, String str2, Map<String, String> map, Map<String, byte[]> map2) {
        f9544a.a(i10, str, str2, map, map2);
    }
}
