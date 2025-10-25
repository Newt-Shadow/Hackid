package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
/* loaded from: classes2.dex */
public abstract class L2 implements ModulePreferences {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1178fl f18509a;

    public L2(InterfaceC1178fl interfaceC1178fl) {
        this.f18509a = interfaceC1178fl;
    }

    public abstract String a(String str);

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final boolean getBoolean(String str, boolean z10) {
        return ((Ed) this.f18509a).c(str, z10);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final int getInt(String str, int i10) {
        return ((Ed) this.f18509a).c(str, i10);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final long getLong(String str, long j10) {
        return ((Ed) this.f18509a).c(a(str), j10);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final String getString(String str, String str2) {
        return ((Ed) this.f18509a).c(a(str), str2);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final void putBoolean(String str, boolean z10) {
        Ed ed2 = (Ed) this.f18509a;
        ((Ve) ((InterfaceC1178fl) ed2.b(ed2.f(a(str)), z10))).b();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final void putInt(String str, int i10) {
        Ed ed2 = (Ed) this.f18509a;
        ((Ve) ((InterfaceC1178fl) ed2.b(ed2.f(str), i10))).b();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final void putLong(String str, long j10) {
        Ed ed2 = (Ed) this.f18509a;
        ((Ve) ((InterfaceC1178fl) ed2.b(ed2.f(a(str)), j10))).b();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences
    public final void putString(String str, String str2) {
        Ed ed2 = (Ed) this.f18509a;
        ((Ve) ((InterfaceC1178fl) ed2.b(ed2.f(a(str)), str2))).b();
    }
}
