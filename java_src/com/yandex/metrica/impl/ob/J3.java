package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public class J3 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0648k4> f10479a = new CopyOnWriteArrayList();

    public void a(InterfaceC0648k4 interfaceC0648k4) {
        this.f10479a.add(interfaceC0648k4);
    }

    public void b(InterfaceC0648k4 interfaceC0648k4) {
        this.f10479a.remove(interfaceC0648k4);
    }

    public List<InterfaceC0648k4> a() {
        return this.f10479a;
    }
}
