package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0915v3;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.u3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0891u3 implements X<Map<String, ? extends String>> {
    @Override // com.yandex.metrica.impl.ob.X, id.l
    public Object invoke(Object obj) {
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        return Boolean.valueOf(g10.d().b(new C0915v3.a((Map) obj, EnumC0888u0.RETAIL)));
    }
}
