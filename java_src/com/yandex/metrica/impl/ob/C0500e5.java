package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.InterfaceC0530fa;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.e5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0500e5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final Cd f12274b;

    /* renamed from: c  reason: collision with root package name */
    private final ProtobufStateStorage f12275c;

    /* renamed from: d  reason: collision with root package name */
    private final A f12276d;

    /* renamed from: e  reason: collision with root package name */
    private final C0911v f12277e;

    /* renamed from: f  reason: collision with root package name */
    private final C0959x f12278f;

    public C0500e5(L3 l32, Cd cd2) {
        this(l32, cd2, InterfaceC0530fa.b.a(C0877td.class).a(l32.g()), new A(l32.g()), new C0911v(), new C0959x(l32.g()));
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        C0877td c0877td;
        L3 a10 = a();
        a10.e().toString();
        if (a10.x().k() && a10.A()) {
            C0877td c0877td2 = (C0877td) this.f12275c.read();
            List<Bd> list = c0877td2.f13636a;
            C1007z c1007z = c0877td2.f13637b;
            C1007z a11 = this.f12276d.a();
            List<String> list2 = c0877td2.f13638c;
            List<String> a12 = this.f12278f.a();
            List<Bd> a13 = this.f12274b.a(a().g(), list);
            if (a13 == null && A2.a(c1007z, a11) && C0419b.a(list2, a12)) {
                c0877td = null;
            } else {
                if (a13 != null) {
                    list = a13;
                }
                c0877td = new C0877td(list, a11, a12);
            }
            if (c0877td == null) {
                if (a10.E()) {
                    a10.r().e(C0445c0.a(c0445c0, c0877td2.f13636a, c0877td2.f13637b, this.f12277e, c0877td2.f13638c));
                    return false;
                }
                return false;
            }
            a10.r().e(C0445c0.a(c0445c0, c0877td.f13636a, c0877td.f13637b, this.f12277e, c0877td.f13638c));
            this.f12275c.save(c0877td);
            return false;
        }
        return false;
    }

    C0500e5(L3 l32, Cd cd2, ProtobufStateStorage protobufStateStorage, A a10, C0911v c0911v, C0959x c0959x) {
        super(l32);
        this.f12274b = cd2;
        this.f12275c = protobufStateStorage;
        this.f12276d = a10;
        this.f12277e = c0911v;
        this.f12278f = c0959x;
    }
}
