package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Oa implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final Ha f10932a;

    /* renamed from: b  reason: collision with root package name */
    private final Da f10933b;

    /* renamed from: c  reason: collision with root package name */
    private final C0667kn f10934c;

    /* renamed from: d  reason: collision with root package name */
    private final C0667kn f10935d;

    public Oa() {
        this(new Ha(), new Da(), new C0667kn(100), new C0667kn(1000));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.n, Vm> fromModel(C0431bb c0431bb) {
        Na<C0709mf.d, Vm> na2;
        C0709mf.n nVar = new C0709mf.n();
        C0568gn<String, Vm> a10 = this.f10934c.a(c0431bb.f12040a);
        nVar.f12925a = C0419b.b(a10.f12493a);
        List<String> list = c0431bb.f12041b;
        Na<C0709mf.i, Vm> na3 = null;
        if (list != null) {
            na2 = this.f10933b.fromModel(list);
            nVar.f12926b = na2.f10887a;
        } else {
            na2 = null;
        }
        C0568gn<String, Vm> a11 = this.f10935d.a(c0431bb.f12042c);
        nVar.f12927c = C0419b.b(a11.f12493a);
        Map<String, String> map = c0431bb.f12043d;
        if (map != null) {
            na3 = this.f10932a.fromModel(map);
            nVar.f12928d = na3.f10887a;
        }
        return new Na<>(nVar, Um.a(a10, na2, a11, na3));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Oa(Ha ha2, Da da2, C0667kn c0667kn, C0667kn c0667kn2) {
        this.f10932a = ha2;
        this.f10933b = da2;
        this.f10934c = c0667kn;
        this.f10935d = c0667kn2;
    }
}
