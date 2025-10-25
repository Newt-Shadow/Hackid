package xd;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class h extends g {
    public /* synthetic */ h(wd.d dVar, ad.i iVar, int i10, vd.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, (i11 & 2) != 0 ? ad.j.f295a : iVar, (i11 & 4) != 0 ? -3 : i10, (i11 & 8) != 0 ? vd.a.f31354a : aVar);
    }

    @Override // xd.e
    protected e f(ad.i iVar, int i10, vd.a aVar) {
        return new h(this.f32751d, iVar, i10, aVar);
    }

    @Override // xd.g
    protected Object m(wd.e eVar, ad.e eVar2) {
        Object e10;
        Object collect = this.f32751d.collect(eVar, eVar2);
        e10 = bd.d.e();
        if (collect == e10) {
            return collect;
        }
        return xc.t.f32733a;
    }

    public h(wd.d dVar, ad.i iVar, int i10, vd.a aVar) {
        super(dVar, iVar, i10, aVar);
    }
}
