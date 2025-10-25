package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Ja implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final Ha f10490a;

    /* renamed from: b  reason: collision with root package name */
    private final Ia f10491b;

    /* renamed from: c  reason: collision with root package name */
    private final Da f10492c;

    /* renamed from: d  reason: collision with root package name */
    private final Ka f10493d;

    /* renamed from: e  reason: collision with root package name */
    private final C0667kn f10494e;

    /* renamed from: f  reason: collision with root package name */
    private final C0667kn f10495f;

    public Ja() {
        this(new Ha(), new Ia(), new Da(), new Ka(), new C0667kn(100), new C0667kn(1000));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.k, Vm> fromModel(Ya ya2) {
        Na<C0709mf.d, Vm> na2;
        Na<C0709mf.i, Vm> na3;
        Na<C0709mf.j, Vm> na4;
        Na<C0709mf.j, Vm> na5;
        C0709mf.k kVar = new C0709mf.k();
        C0568gn<String, Vm> a10 = this.f10494e.a(ya2.f11834a);
        kVar.f12913a = C0419b.b(a10.f12493a);
        C0568gn<String, Vm> a11 = this.f10495f.a(ya2.f11835b);
        kVar.f12914b = C0419b.b(a11.f12493a);
        List<String> list = ya2.f11836c;
        Na<C0709mf.l[], Vm> na6 = null;
        if (list != null) {
            na2 = this.f10492c.fromModel(list);
            kVar.f12915c = na2.f10887a;
        } else {
            na2 = null;
        }
        Map<String, String> map = ya2.f11837d;
        if (map != null) {
            na3 = this.f10490a.fromModel(map);
            kVar.f12916d = na3.f10887a;
        } else {
            na3 = null;
        }
        Xa xa2 = ya2.f11838e;
        if (xa2 != null) {
            na4 = this.f10491b.fromModel(xa2);
            kVar.f12917e = na4.f10887a;
        } else {
            na4 = null;
        }
        Xa xa3 = ya2.f11839f;
        if (xa3 != null) {
            na5 = this.f10491b.fromModel(xa3);
            kVar.f12918f = na5.f10887a;
        } else {
            na5 = null;
        }
        List<String> list2 = ya2.f11840g;
        if (list2 != null) {
            na6 = this.f10493d.fromModel(list2);
            kVar.f12919g = na6.f10887a;
        }
        return new Na<>(kVar, Um.a(a10, a11, na2, na3, na4, na5, na6));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ja(Ha ha2, Ia ia2, Da da2, Ka ka2, C0667kn c0667kn, C0667kn c0667kn2) {
        this.f10490a = ha2;
        this.f10491b = ia2;
        this.f10492c = da2;
        this.f10493d = ka2;
        this.f10494e = c0667kn;
        this.f10495f = c0667kn2;
    }
}
