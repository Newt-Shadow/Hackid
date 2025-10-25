package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
/* loaded from: classes2.dex */
public class Aa implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final Ea f9707a;

    /* renamed from: b  reason: collision with root package name */
    private final C0667kn f9708b;

    public Aa() {
        this(new Ea(), new C0667kn(20));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.a, Vm> fromModel(Sa sa2) {
        C0709mf.a aVar = new C0709mf.a();
        aVar.f12888b = this.f9707a.fromModel(sa2.f11256a);
        C0568gn<String, Vm> a10 = this.f9708b.a(sa2.f11257b);
        aVar.f12887a = C0419b.b(a10.f12493a);
        return new Na<>(aVar, Um.a(a10));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Aa(Ea ea2, C0667kn c0667kn) {
        this.f9707a = ea2;
        this.f9708b = c0667kn;
    }
}
