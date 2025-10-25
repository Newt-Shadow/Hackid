package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.plugins.YandexMetricaPlugins;
/* loaded from: classes2.dex */
public final class V2 implements YandexMetricaPlugins {

    /* renamed from: a  reason: collision with root package name */
    private final Tf f11633a;

    public V2(Tf tf) {
        this.f11633a = tf;
    }

    @Override // com.yandex.metrica.plugins.YandexMetricaPlugins
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        this.f11633a.a(pluginErrorDetails, str);
    }

    @Override // com.yandex.metrica.plugins.YandexMetricaPlugins
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f11633a.a(pluginErrorDetails);
    }

    @Override // com.yandex.metrica.plugins.YandexMetricaPlugins
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f11633a.a(str, str2, pluginErrorDetails);
    }
}
