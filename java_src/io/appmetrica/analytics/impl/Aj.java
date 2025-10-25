package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Aj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PluginErrorDetails f17959a;

    public Aj(PluginErrorDetails pluginErrorDetails) {
        this.f17959a = pluginErrorDetails;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.getPluginExtension().reportUnhandledException(this.f17959a);
    }
}
