package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.yandex.metrica.impl.ob.ob  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0755ob {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0705mb> f13061a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0780pb f13062b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f13063c = new AtomicBoolean(true);

    public C0755ob(List<InterfaceC0705mb> list, InterfaceC0780pb interfaceC0780pb) {
        this.f13061a = list;
        this.f13062b = interfaceC0780pb;
    }

    public void a() {
        this.f13063c.set(false);
    }

    public void b() {
        this.f13063c.set(true);
    }

    public void c() {
        if (this.f13063c.get()) {
            if (this.f13061a.isEmpty()) {
                ((L3) this.f13062b).c();
                return;
            }
            boolean z10 = false;
            for (InterfaceC0705mb interfaceC0705mb : this.f13061a) {
                z10 |= interfaceC0705mb.a();
            }
            if (z10) {
                ((L3) this.f13062b).c();
            }
        }
    }
}
