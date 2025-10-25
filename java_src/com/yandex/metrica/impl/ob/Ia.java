package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.List;
/* loaded from: classes2.dex */
public class Ia implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final Aa f10225a;

    /* renamed from: b  reason: collision with root package name */
    private final C0531fb f10226b;

    public Ia() {
        this(new Aa(), new C0531fb(30));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.j, Vm> fromModel(Xa xa2) {
        int i10;
        C0709mf.j jVar = new C0709mf.j();
        Na<C0709mf.a, Vm> fromModel = this.f10225a.fromModel(xa2.f11776a);
        jVar.f12911a = fromModel.f10887a;
        C0568gn<List<Object>, Xm> a10 = this.f10226b.a((List<Object>) xa2.f11777b);
        if (!A2.b(a10.f12493a)) {
            jVar.f12912b = new C0709mf.a[a10.f12493a.size()];
            i10 = 0;
            for (int i11 = 0; i11 < a10.f12493a.size(); i11++) {
                Na<C0709mf.a, Vm> fromModel2 = this.f10225a.fromModel((Sa) a10.f12493a.get(i11));
                jVar.f12912b[i11] = fromModel2.f10887a;
                i10 += fromModel2.f10888b.a();
            }
        } else {
            i10 = 0;
        }
        return new Na<>(jVar, Um.a(fromModel, a10, new Um(i10)));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ia(Aa aa2, C0531fb c0531fb) {
        this.f10225a = aa2;
        this.f10226b = c0531fb;
    }
}
