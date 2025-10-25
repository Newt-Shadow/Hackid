package com.yandex.metrica.impl.ob;

import java.util.Collection;
import java.util.LinkedList;
/* renamed from: com.yandex.metrica.impl.ob.h0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0570h0 implements InterfaceC0931vj {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LinkedList f12496a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0570h0(C0595i0 c0595i0, LinkedList linkedList) {
        this.f12496a = linkedList;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0931vj
    public void a(Collection<C0907uj> collection) {
        this.f12496a.add(collection);
    }
}
