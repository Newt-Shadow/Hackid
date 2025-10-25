package com.yandex.metrica.impl.ob;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.f  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0519f implements InterfaceC0668l {

    /* renamed from: a  reason: collision with root package name */
    private boolean f12351a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, zb.a> f12352b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0718n f12353c;

    public C0519f(InterfaceC0718n storage) {
        kotlin.jvm.internal.m.e(storage, "storage");
        this.f12353c = storage;
        C0448c3 c0448c3 = (C0448c3) storage;
        this.f12351a = c0448c3.b();
        List<zb.a> a10 = c0448c3.a();
        kotlin.jvm.internal.m.d(a10, "storage.billingInfo");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : a10) {
            linkedHashMap.put(((zb.a) obj).f33594b, obj);
        }
        this.f12352b = linkedHashMap;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public void a(Map<String, ? extends zb.a> history) {
        List<zb.a> k02;
        kotlin.jvm.internal.m.e(history, "history");
        for (zb.a aVar : history.values()) {
            Map<String, zb.a> map = this.f12352b;
            String str = aVar.f33594b;
            kotlin.jvm.internal.m.d(str, "billingInfo.sku");
            map.put(str, aVar);
        }
        InterfaceC0718n interfaceC0718n = this.f12353c;
        k02 = yc.w.k0(this.f12352b.values());
        ((C0448c3) interfaceC0718n).a(k02, this.f12351a);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public void b() {
        List<zb.a> k02;
        if (!this.f12351a) {
            this.f12351a = true;
            InterfaceC0718n interfaceC0718n = this.f12353c;
            k02 = yc.w.k0(this.f12352b.values());
            ((C0448c3) interfaceC0718n).a(k02, this.f12351a);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public zb.a a(String sku) {
        kotlin.jvm.internal.m.e(sku, "sku");
        return this.f12352b.get(sku);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public boolean a() {
        return this.f12351a;
    }
}
