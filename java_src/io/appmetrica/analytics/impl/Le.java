package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Le implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18530a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18531b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PluginErrorDetails f18532c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Me f18533d;

    public Le(Me me2, String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f18533d = me2;
        this.f18530a = str;
        this.f18531b = str2;
        this.f18532c = pluginErrorDetails;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((InterfaceC1118db) this.f18533d.f18601d.get()).getPluginExtension().reportError(this.f18530a, this.f18531b, this.f18532c);
    }
}
