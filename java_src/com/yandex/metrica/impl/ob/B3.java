package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0839s;
import java.util.HashMap;
/* loaded from: classes2.dex */
class B3 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, C0839s> f9749a = new HashMap<>();

    public synchronized C0839s a(I3 i32, C0467cm c0467cm, C0454c9 c0454c9) {
        C0839s c0839s;
        c0839s = this.f9749a.get(i32.toString());
        if (c0839s == null) {
            C0839s.a f10 = c0454c9.f();
            c0839s = new C0839s(f10.f13570a, f10.f13571b, c0467cm);
            this.f9749a.put(i32.toString(), c0839s);
        }
        return c0839s;
    }
}
