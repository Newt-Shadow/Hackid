package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.PluginErrorDetails;
/* renamed from: com.yandex.metrica.impl.ob.s6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0846s6 {

    /* renamed from: a  reason: collision with root package name */
    private final A0 f13578a;

    public C0846s6(A0 a02) {
        this.f13578a = a02;
    }

    public final H6 a(PluginErrorDetails pluginErrorDetails) {
        return I6.a(pluginErrorDetails.getExceptionClass(), pluginErrorDetails.getMessage(), pluginErrorDetails.getStacktrace(), pluginErrorDetails.getPlatform(), pluginErrorDetails.getVirtualMachineVersion(), pluginErrorDetails.getPluginEnvironment(), this.f13578a.a(), this.f13578a.b());
    }
}
