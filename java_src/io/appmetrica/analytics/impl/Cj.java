package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Cj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18059a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18060b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PluginErrorDetails f18061c;

    public Cj(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f18059a = str;
        this.f18060b = str2;
        this.f18061c = pluginErrorDetails;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.getPluginExtension().reportError(this.f18059a, this.f18060b, this.f18061c);
    }
}
