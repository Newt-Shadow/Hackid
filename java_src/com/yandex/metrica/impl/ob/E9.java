package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Sh;
/* loaded from: classes2.dex */
public class E9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final F1 f9981a;

    public E9() {
        this(new C0687li());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.i fromModel(Sh sh) {
        If.i iVar = new If.i();
        iVar.f10284d = sh.f11292d;
        iVar.f10283c = sh.f11291c;
        iVar.f10282b = sh.f11290b;
        iVar.f10281a = sh.f11289a;
        iVar.f10290j = sh.f11293e;
        iVar.f10291k = sh.f11294f;
        iVar.f10285e = sh.f11302n;
        iVar.f10288h = sh.f11306r;
        iVar.f10289i = sh.f11307s;
        iVar.f10298r = sh.f11303o;
        iVar.f10286f = sh.f11304p;
        iVar.f10287g = sh.f11305q;
        iVar.f10293m = sh.f11296h;
        iVar.f10292l = sh.f11295g;
        iVar.f10294n = sh.f11297i;
        iVar.f10295o = sh.f11298j;
        iVar.f10296p = sh.f11300l;
        iVar.f10301u = sh.f11301m;
        iVar.f10297q = sh.f11299k;
        iVar.f10299s = sh.f11308t;
        iVar.f10300t = sh.f11309u;
        iVar.f10302v = sh.f11310v;
        iVar.f10303w = sh.f11311w;
        iVar.f10304x = this.f9981a.a(sh.f11312x);
        return iVar;
    }

    E9(F1 f12) {
        this.f9981a = f12;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Sh toModel(If.i iVar) {
        return new Sh(new Sh.a().d(iVar.f10281a).p(iVar.f10289i).c(iVar.f10288h).q(iVar.f10298r).w(iVar.f10287g).v(iVar.f10286f).g(iVar.f10285e).f(iVar.f10284d).o(iVar.f10290j).j(iVar.f10291k).n(iVar.f10283c).m(iVar.f10282b).k(iVar.f10293m).l(iVar.f10292l).h(iVar.f10294n).t(iVar.f10295o).s(iVar.f10296p).u(iVar.f10301u).r(iVar.f10297q).a(iVar.f10299s).b(iVar.f10300t).i(iVar.f10302v).e(iVar.f10303w).a(this.f9981a.a(iVar.f10304x)));
    }
}
