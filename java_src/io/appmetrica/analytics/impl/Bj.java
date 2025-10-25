package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Bj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PluginErrorDetails f18020a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18021b;

    public Bj(PluginErrorDetails pluginErrorDetails, String str) {
        this.f18020a = pluginErrorDetails;
        this.f18021b = str;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.getPluginExtension().reportError(this.f18020a, this.f18021b);
    }
}
