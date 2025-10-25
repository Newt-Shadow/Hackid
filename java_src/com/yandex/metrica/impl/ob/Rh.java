package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0915v3;
import java.util.Map;
/* loaded from: classes2.dex */
public class Rh {
    public boolean a(Map<String, String> map, C0787pi c0787pi, I i10) {
        Map<String, String> b10 = i10.a(new C0915v3.a(map, EnumC0888u0.APP)).b();
        if (A2.b(b10)) {
            return true;
        }
        return b10.equals(Tl.a(c0787pi.u()));
    }
}
