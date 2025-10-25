package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public final class Oe extends Ne<Double> {
    public Oe(String str, double d10) {
        super(2, str, Double.valueOf(d10), new Qe(), new Me(new Re(new Wm(100))));
    }

    @Override // com.yandex.metrica.impl.ob.Ne
    protected void a(C0927vf.a aVar) {
        aVar.f13830d.f13835c += f().doubleValue();
    }
}
