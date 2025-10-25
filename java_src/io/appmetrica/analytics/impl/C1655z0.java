package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.AppMetricaPlugins;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* renamed from: io.appmetrica.analytics.impl.z0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1655z0 implements AppMetricaPlugins {

    /* renamed from: a  reason: collision with root package name */
    public final B0 f21006a;

    public C1655z0(B0 b02) {
        this.f21006a = b02;
    }

    @Override // io.appmetrica.analytics.plugins.AppMetricaPlugins
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        this.f21006a.a(pluginErrorDetails, str);
    }

    @Override // io.appmetrica.analytics.plugins.AppMetricaPlugins
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f21006a.a(pluginErrorDetails);
    }

    public C1655z0() {
        this(new B0());
    }

    @Override // io.appmetrica.analytics.plugins.AppMetricaPlugins
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f21006a.a(str, str2, pluginErrorDetails);
    }
}
