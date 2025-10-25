package com.yandex.metrica.impl.ob;

import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.p5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0774p5 extends X4 {
    public C0774p5(L3 l32) {
        super(l32);
        I3 e10 = l32.e();
        kotlin.jvm.internal.m.d(e10, "component.componentId");
        String a10 = e10.a();
        if (a10 != null) {
            A2.a(a10);
        }
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        Map<String, byte[]> i10 = c0445c0.i();
        kotlin.jvm.internal.m.d(i10, "reportData.extras");
        for (Map.Entry<String, byte[]> entry : i10.entrySet()) {
            L3 component = a();
            kotlin.jvm.internal.m.d(component, "component");
            C0576h6 u10 = component.u();
            String key = entry.getKey();
            kotlin.jvm.internal.m.d(key, "it.key");
            u10.a(key, entry.getValue());
        }
        return true;
    }
}
