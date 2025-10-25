package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.ca  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0455ca implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0430ba f12151a;

    public C0455ca() {
        this(new C0430ba());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.v fromModel(C0591hl c0591hl) {
        If.v vVar = new If.v();
        vVar.f10377a = c0591hl.f12558a;
        vVar.f10378b = c0591hl.f12559b;
        vVar.f10379c = c0591hl.f12560c;
        vVar.f10380d = c0591hl.f12561d;
        vVar.f10385i = c0591hl.f12562e;
        vVar.f10386j = c0591hl.f12563f;
        vVar.f10387k = c0591hl.f12564g;
        vVar.f10388l = c0591hl.f12565h;
        vVar.f10390n = c0591hl.f12566i;
        vVar.f10391o = c0591hl.f12567j;
        vVar.f10381e = c0591hl.f12568k;
        vVar.f10382f = c0591hl.f12569l;
        vVar.f10383g = c0591hl.f12570m;
        vVar.f10384h = c0591hl.f12571n;
        vVar.f10392p = c0591hl.f12572o;
        vVar.f10389m = this.f12151a.fromModel(c0591hl.f12573p);
        return vVar;
    }

    C0455ca(C0430ba c0430ba) {
        this.f12151a = c0430ba;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0591hl toModel(If.v vVar) {
        return new C0591hl(vVar.f10377a, vVar.f10378b, vVar.f10379c, vVar.f10380d, vVar.f10385i, vVar.f10386j, vVar.f10387k, vVar.f10388l, vVar.f10390n, vVar.f10391o, vVar.f10381e, vVar.f10382f, vVar.f10383g, vVar.f10384h, vVar.f10392p, this.f12151a.toModel(vVar.f10389m));
    }
}
