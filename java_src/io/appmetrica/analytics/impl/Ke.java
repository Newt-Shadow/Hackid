package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Ke implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PluginErrorDetails f18487a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18488b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Me f18489c;

    public Ke(Me me2, PluginErrorDetails pluginErrorDetails, String str) {
        this.f18489c = me2;
        this.f18487a = pluginErrorDetails;
        this.f18488b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InterfaceC1118db) this.f18489c.f18601d.get()).getPluginExtension().reportError(this.f18487a, this.f18488b);
    }
}
