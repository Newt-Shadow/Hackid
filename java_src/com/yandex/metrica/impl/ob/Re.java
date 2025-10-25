package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public class Re implements Je {

    /* renamed from: a  reason: collision with root package name */
    private final Wm f11199a;

    public Re(Wm wm) {
        this.f11199a = wm;
    }

    @Override // com.yandex.metrica.impl.ob.Je
    public C0927vf.a a(C0410af c0410af, C0927vf.a aVar) {
        if (c0410af.a() == this.f11199a.a()) {
            if (c0410af.a(aVar.f13828b, new String(aVar.f13827a)) != null) {
                c0410af.a(aVar);
            }
        } else if (c0410af.a() < this.f11199a.a()) {
            c0410af.a(aVar);
            c0410af.b();
        }
        return aVar;
    }
}
