package com.yandex.metrica.impl.ob;

import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.impl.ob.ResultReceiverC0520f0;
import java.util.List;
/* loaded from: classes2.dex */
public interface T0 extends InterfaceC0720n1, ResultReceiverC0520f0.a, O0 {
    M0 a(com.yandex.metrica.f fVar);

    String a();

    void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener);

    void a(DeferredDeeplinkListener deferredDeeplinkListener);

    void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener);

    void a(IIdentifierCallback iIdentifierCallback, List<String> list);

    void a(YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.j jVar);

    String c();

    void c(com.yandex.metrica.f fVar);

    C0645k1 d();
}
