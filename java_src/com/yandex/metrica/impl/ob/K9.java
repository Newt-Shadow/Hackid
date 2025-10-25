package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes2.dex */
public class K9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final G9 f10616a;

    /* renamed from: b  reason: collision with root package name */
    private final I9 f10617b;

    public K9() {
        this(new G9(), new I9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a fromModel(C0706mc c0706mc) {
        If.k.a aVar = new If.k.a();
        aVar.f10309a = c0706mc.f12862a;
        aVar.f10310b = c0706mc.f12863b;
        aVar.f10311c = c0706mc.f12864c;
        aVar.f10312d = c0706mc.f12865d;
        aVar.f10313e = c0706mc.f12866e;
        aVar.f10314f = c0706mc.f12867f;
        aVar.f10315g = c0706mc.f12868g;
        aVar.f10318j = c0706mc.f12869h;
        aVar.f10316h = c0706mc.f12870i;
        aVar.f10317i = c0706mc.f12871j;
        aVar.f10324p = c0706mc.f12872k;
        aVar.f10325q = c0706mc.f12873l;
        Xb xb2 = c0706mc.f12874m;
        if (xb2 != null) {
            aVar.f10319k = this.f10616a.fromModel(xb2);
        }
        Xb xb3 = c0706mc.f12875n;
        if (xb3 != null) {
            aVar.f10320l = this.f10616a.fromModel(xb3);
        }
        Xb xb4 = c0706mc.f12876o;
        if (xb4 != null) {
            aVar.f10321m = this.f10616a.fromModel(xb4);
        }
        Xb xb5 = c0706mc.f12877p;
        if (xb5 != null) {
            aVar.f10322n = this.f10616a.fromModel(xb5);
        }
        C0457cc c0457cc = c0706mc.f12878q;
        if (c0457cc != null) {
            aVar.f10323o = this.f10617b.fromModel(c0457cc);
        }
        return aVar;
    }

    K9(G9 g92, I9 i92) {
        this.f10616a = g92;
        this.f10617b = i92;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0706mc toModel(If.k.a aVar) {
        If.k.a.C0124a c0124a = aVar.f10319k;
        Xb model = c0124a != null ? this.f10616a.toModel(c0124a) : null;
        If.k.a.C0124a c0124a2 = aVar.f10320l;
        Xb model2 = c0124a2 != null ? this.f10616a.toModel(c0124a2) : null;
        If.k.a.C0124a c0124a3 = aVar.f10321m;
        Xb model3 = c0124a3 != null ? this.f10616a.toModel(c0124a3) : null;
        If.k.a.C0124a c0124a4 = aVar.f10322n;
        Xb model4 = c0124a4 != null ? this.f10616a.toModel(c0124a4) : null;
        If.k.a.b bVar = aVar.f10323o;
        return new C0706mc(aVar.f10309a, aVar.f10310b, aVar.f10311c, aVar.f10312d, aVar.f10313e, aVar.f10314f, aVar.f10315g, aVar.f10318j, aVar.f10316h, aVar.f10317i, aVar.f10324p, aVar.f10325q, model, model2, model3, model4, bVar != null ? this.f10617b.toModel(bVar) : null);
    }
}
