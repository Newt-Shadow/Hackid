package io.appmetrica.analytics.plugins;
/* loaded from: classes2.dex */
public interface AppMetricaPlugins {
    void reportError(PluginErrorDetails pluginErrorDetails, String str);

    void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails);

    void reportUnhandledException(PluginErrorDetails pluginErrorDetails);
}
