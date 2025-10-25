package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.yandex.metrica.impl.ob.qb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0804qb implements InterfaceC0705mb, InterfaceC0730nb {

    /* renamed from: a  reason: collision with root package name */
    private final Z3 f13257a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicLong f13258b;

    public C0804qb(L7 l72, Z3 z32) {
        this.f13257a = z32;
        this.f13258b = new AtomicLong(l72.c());
        l72.a(this);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0705mb
    public boolean a() {
        return this.f13258b.get() >= ((long) ((Lg) this.f13257a.b()).I());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0730nb
    public void b(List<Integer> list) {
        this.f13258b.addAndGet(-list.size());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0730nb
    public void a(List<Integer> list) {
        this.f13258b.addAndGet(list.size());
    }
}
