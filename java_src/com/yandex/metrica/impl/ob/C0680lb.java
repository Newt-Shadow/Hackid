package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.yandex.metrica.impl.ob.lb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0680lb implements InterfaceC0705mb, InterfaceC0730nb {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Integer> f12792a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicLong f12793b;

    public C0680lb(L7 l72) {
        HashSet hashSet = new HashSet();
        this.f12792a = hashSet;
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_FIRST_ACTIVATION.b()));
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_APP_UPDATE.b()));
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_INIT.b()));
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_IDENTITY.b()));
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_SEND_REFERRER.b()));
        l72.a(this);
        this.f12793b = new AtomicLong(l72.a(hashSet));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0705mb
    public boolean a() {
        return this.f12793b.get() > 0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0730nb
    public void b(List<Integer> list) {
        int i10 = 0;
        for (Integer num : list) {
            if (this.f12792a.contains(Integer.valueOf(num.intValue()))) {
                i10++;
            }
        }
        this.f12793b.addAndGet(-i10);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0730nb
    public void a(List<Integer> list) {
        int i10 = 0;
        for (Integer num : list) {
            if (this.f12792a.contains(Integer.valueOf(num.intValue()))) {
                i10++;
            }
        }
        this.f12793b.addAndGet(i10);
    }
}
