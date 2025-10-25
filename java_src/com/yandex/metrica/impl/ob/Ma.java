package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
/* loaded from: classes2.dex */
public class Ma implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final Oa f10797a;

    /* renamed from: b  reason: collision with root package name */
    private final C0667kn f10798b;

    /* renamed from: c  reason: collision with root package name */
    private final C0667kn f10799c;

    public Ma() {
        this(new Oa(), new C0667kn(100), new C0667kn(2048));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.m, Vm> fromModel(C0406ab c0406ab) {
        Na<C0709mf.n, Vm> na2;
        C0709mf.m mVar = new C0709mf.m();
        C0568gn<String, Vm> a10 = this.f10798b.a(c0406ab.f11967a);
        mVar.f12922a = C0419b.b(a10.f12493a);
        C0568gn<String, Vm> a11 = this.f10799c.a(c0406ab.f11968b);
        mVar.f12923b = C0419b.b(a11.f12493a);
        C0431bb c0431bb = c0406ab.f11969c;
        if (c0431bb != null) {
            na2 = this.f10797a.fromModel(c0431bb);
            mVar.f12924c = na2.f10887a;
        } else {
            na2 = null;
        }
        return new Na<>(mVar, Um.a(a10, a11, na2));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ma(Oa oa2, C0667kn c0667kn, C0667kn c0667kn2) {
        this.f10797a = oa2;
        this.f10798b = c0667kn;
        this.f10799c = c0667kn2;
    }
}
