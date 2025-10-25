package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Je implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PluginErrorDetails f18437a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Me f18438b;

    public Je(Me me2, PluginErrorDetails pluginErrorDetails) {
        this.f18438b = me2;
        this.f18437a = pluginErrorDetails;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InterfaceC1118db) this.f18438b.f18601d.get()).getPluginExtension().reportUnhandledException(this.f18437a);
    }
}
