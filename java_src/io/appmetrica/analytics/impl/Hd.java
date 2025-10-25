package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientModule;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientModuleDummy;
/* loaded from: classes2.dex */
public final class Hd {

    /* renamed from: a  reason: collision with root package name */
    public final C1645yf f18303a;

    /* renamed from: b  reason: collision with root package name */
    public final NativeCrashClientModule f18304b;

    /* renamed from: c  reason: collision with root package name */
    public final C1630y0 f18305c;

    /* renamed from: d  reason: collision with root package name */
    public C1605x0 f18306d;

    public Hd(C1645yf c1645yf) {
        this.f18303a = c1645yf;
        NativeCrashClientModule nativeCrashClientModule = (NativeCrashClientModule) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor("io.appmetrica.analytics.ndkcrashes.NativeCrashClientModuleImpl", NativeCrashClientModule.class);
        this.f18304b = nativeCrashClientModule == null ? new NativeCrashClientModuleDummy() : nativeCrashClientModule;
        this.f18305c = new C1630y0();
    }
}
