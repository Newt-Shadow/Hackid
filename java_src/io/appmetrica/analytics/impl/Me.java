package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Provider;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class Me implements IPluginReporter {

    /* renamed from: a  reason: collision with root package name */
    public final Pe f18598a = new Pe();

    /* renamed from: b  reason: collision with root package name */
    public final Qe f18599b = new Qe();

    /* renamed from: c  reason: collision with root package name */
    public final IHandlerExecutor f18600c = C1509t4.j().f().a();

    /* renamed from: d  reason: collision with root package name */
    public final Provider f18601d;

    public Me(Provider<InterfaceC1118db> provider) {
        this.f18601d = provider;
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        Pe pe2 = this.f18598a;
        pe2.f18780a.a(pluginErrorDetails);
        if (pe2.f18782c.a((Collection<Object>) (pluginErrorDetails != null ? pluginErrorDetails.getStacktrace() : null)).f19201a) {
            this.f18599b.getClass();
            this.f18600c.execute(new Ke(this, pluginErrorDetails, str));
        }
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f18598a.f18780a.a(pluginErrorDetails);
        this.f18599b.getClass();
        this.f18600c.execute(new Je(this, pluginErrorDetails));
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f18598a.f18781b.a(str);
        this.f18599b.getClass();
        this.f18600c.execute(new Le(this, str, str2, pluginErrorDetails));
    }
}
