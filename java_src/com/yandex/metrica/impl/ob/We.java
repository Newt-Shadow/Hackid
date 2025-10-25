package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public class We extends Ke {
    public We(Je je2) {
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
            C0927vf.a a10 = ((Se) ie2).a();
            a10.f13829c.f13831a = true;
            return a().a(c0410af, a10);
        }
        return null;
    }
}
