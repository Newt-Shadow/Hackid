package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.location.Location;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class Jc extends C1249ii implements Ua {
    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(Activity activity) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void b(Activity activity) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void c() {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final List<String> f() {
        return new ArrayList();
    }

    @Override // io.appmetrica.analytics.impl.C1249ii, io.appmetrica.analytics.IModuleReporter
    public final void reportAdRevenue(AdRevenue adRevenue, boolean z10) {
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
    }

    @Override // io.appmetrica.analytics.impl.C1249ii, io.appmetrica.analytics.IModuleReporter
    public final void reportEvent(ModuleEvent moduleEvent) {
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void a(Location location) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void b(String str) {
    }

    @Override // io.appmetrica.analytics.plugins.IPluginReporter
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(AnrListener anrListener) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Pa
    public final void b(String str, String str2) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(ExternalAttribution externalAttribution) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void b(boolean z10) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(EnumC1330m enumC1330m) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Pa
    public final boolean b() {
        return false;
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(mo moVar) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Pa
    public final void a(String str) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void a(String str, String str2) {
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(String str, boolean z10) {
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void a(boolean z10) {
    }
}
