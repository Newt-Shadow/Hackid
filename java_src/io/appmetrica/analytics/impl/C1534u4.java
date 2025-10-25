package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
/* renamed from: io.appmetrica.analytics.impl.u4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1534u4 implements ClientStorageProvider {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1178fl f20701a;

    public C1534u4(InterfaceC1178fl interfaceC1178fl) {
        this.f20701a = interfaceC1178fl;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider
    public final ModulePreferences modulePreferences(String str) {
        return new C1269jd(str, this.f20701a);
    }
}
