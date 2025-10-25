package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.c  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0444c implements InterfaceC0668l {

    /* renamed from: a  reason: collision with root package name */
    private boolean f12095a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0718n f12096b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, zb.a> f12097c = new HashMap();

    public C0444c(InterfaceC0718n interfaceC0718n) {
        C0448c3 c0448c3 = (C0448c3) interfaceC0718n;
        for (zb.a aVar : c0448c3.a()) {
            this.f12097c.put(aVar.f33594b, aVar);
        }
        this.f12095a = c0448c3.b();
        this.f12096b = c0448c3;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public void a(Map<String, zb.a> map) {
        for (zb.a aVar : map.values()) {
            this.f12097c.put(aVar.f33594b, aVar);
        }
        ((C0448c3) this.f12096b).a(new ArrayList(this.f12097c.values()), this.f12095a);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public void b() {
        if (!this.f12095a) {
            this.f12095a = true;
            ((C0448c3) this.f12096b).a(new ArrayList(this.f12097c.values()), this.f12095a);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public zb.a a(String str) {
        return this.f12097c.get(str);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0668l
    public boolean a() {
        return this.f12095a;
    }
}
