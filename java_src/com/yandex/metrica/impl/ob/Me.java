package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public class Me extends Ke {
    public Me(Je je2) {
        super(je2);
    }

    @Override // com.yandex.metrica.impl.ob.Ke
    public C0927vf.a a(C0410af c0410af, C0927vf.a aVar, Ie ie2) {
        boolean z10;
        if (aVar != null && !aVar.f13829c.f13832b) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            return a().a(c0410af, ((Se) ie2).a());
        }
        aVar.f13829c = new C0927vf.b();
        return aVar;
    }
}
