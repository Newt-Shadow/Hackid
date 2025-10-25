package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
/* loaded from: classes2.dex */
public class Ca implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final Ja f9837a;

    /* renamed from: b  reason: collision with root package name */
    private final Ea f9838b;

    /* renamed from: c  reason: collision with root package name */
    private final Ia f9839c;

    /* renamed from: d  reason: collision with root package name */
    private final Ma f9840d;

    public Ca() {
        this(new Ja(), new Ea(), new Ia(), new Ma());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.c, Vm> fromModel(Ua ua2) {
        Na<C0709mf.m, Vm> na2;
        C0709mf.c cVar = new C0709mf.c();
        Na<C0709mf.k, Vm> fromModel = this.f9837a.fromModel(ua2.f11495a);
        cVar.f12890a = fromModel.f10887a;
        cVar.f12892c = this.f9838b.fromModel(ua2.f11496b);
        Na<C0709mf.j, Vm> fromModel2 = this.f9839c.fromModel(ua2.f11497c);
        cVar.f12893d = fromModel2.f10887a;
        C0406ab c0406ab = ua2.f11498d;
        if (c0406ab != null) {
            na2 = this.f9840d.fromModel(c0406ab);
            cVar.f12891b = na2.f10887a;
        } else {
            na2 = null;
        }
        return new Na<>(cVar, Um.a(fromModel, fromModel2, na2));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ca(Ja ja2, Ea ea2, Ia ia2, Ma ma2) {
        this.f9837a = ja2;
        this.f9838b = ea2;
        this.f9839c = ia2;
        this.f9840d = ma2;
    }
}
