package com.yandex.metrica.impl.ob;

import com.yandex.metrica.modules.api.ModuleEntryPoint;
import com.yandex.metrica.modules.api.RemoteConfigExtensionConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.yandex.metrica.impl.ob.jd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0632jd implements InterfaceC0657kd, InterfaceC0662ki {

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<ModuleEntryPoint> f12721a = new CopyOnWriteArrayList<>();

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public void a(EnumC0563gi enumC0563gi, C0787pi c0787pi) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0657kd
    public List<String> b() {
        List h10;
        CopyOnWriteArrayList<ModuleEntryPoint> copyOnWriteArrayList = this.f12721a;
        ArrayList arrayList = new ArrayList();
        for (ModuleEntryPoint moduleEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration a10 = moduleEntryPoint.a();
            if (a10 == null || (h10 = a10.d()) == null) {
                h10 = yc.o.h();
            }
            yc.t.v(arrayList, h10);
        }
        return arrayList;
    }

    public Map<String, C0583hd> c() {
        Map<String, C0583hd> o10;
        xc.k kVar;
        CopyOnWriteArrayList<ModuleEntryPoint> copyOnWriteArrayList = this.f12721a;
        ArrayList arrayList = new ArrayList();
        for (ModuleEntryPoint moduleEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration a10 = moduleEntryPoint.a();
            if (a10 != null) {
                kVar = xc.q.a(moduleEntryPoint.getIdentifier(), new C0583hd(a10));
            } else {
                kVar = null;
            }
            if (kVar != null) {
                arrayList.add(kVar);
            }
        }
        o10 = yc.h0.o(arrayList);
        return o10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        r2 = yc.j0.t(r2);
     */
    @Override // com.yandex.metrica.impl.ob.InterfaceC0657kd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> a() {
        /*
            r3 = this;
            java.util.concurrent.CopyOnWriteArrayList<com.yandex.metrica.modules.api.ModuleEntryPoint> r0 = r3.f12721a
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L32
            java.lang.Object r2 = r0.next()
            com.yandex.metrica.modules.api.ModuleEntryPoint r2 = (com.yandex.metrica.modules.api.ModuleEntryPoint) r2
            com.yandex.metrica.modules.api.RemoteConfigExtensionConfiguration r2 = r2.a()
            if (r2 == 0) goto L2a
            java.util.Map r2 = r2.e()
            if (r2 == 0) goto L2a
            java.util.List r2 = yc.e0.t(r2)
            if (r2 == 0) goto L2a
            goto L2e
        L2a:
            java.util.List r2 = yc.m.h()
        L2e:
            yc.m.v(r1, r2)
            goto Lb
        L32:
            java.util.Map r0 = yc.e0.o(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0632jd.a():java.util.Map");
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public void a(C0787pi c0787pi) {
        C0608id c0608id = new C0608id(c0787pi);
        for (ModuleEntryPoint moduleEntryPoint : this.f12721a) {
            RemoteConfigExtensionConfiguration a10 = moduleEntryPoint.a();
            if (a10 != null) {
                a10.b().a(c0608id.a(moduleEntryPoint.getIdentifier()));
            }
        }
    }
}
