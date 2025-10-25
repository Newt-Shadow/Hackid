package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
/* renamed from: io.appmetrica.analytics.impl.zd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1668zd {
    public static void a() {
        for (String str : C1509t4.j().f20630m.a()) {
            Object loadAndInstantiateClassWithDefaultConstructor = ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(str, ModuleClientEntryPoint.class);
            if (loadAndInstantiateClassWithDefaultConstructor != null) {
                C1509t4.j().l().f20408b.add((ModuleClientEntryPoint) loadAndInstantiateClassWithDefaultConstructor);
            }
        }
    }
}
