package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.appmetrica.analytics.impl.i5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1237i5 {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList f19775a = new CopyOnWriteArrayList();

    public final void a(InterfaceC1584w4 interfaceC1584w4) {
        this.f19775a.add(interfaceC1584w4);
    }

    public final void b(InterfaceC1584w4 interfaceC1584w4) {
        this.f19775a.remove(interfaceC1584w4);
    }

    public final List<InterfaceC1584w4> a() {
        return this.f19775a;
    }
}
