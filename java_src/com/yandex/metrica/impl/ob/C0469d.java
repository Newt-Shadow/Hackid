package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.d  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0469d implements InterfaceC0743o {

    /* renamed from: a  reason: collision with root package name */
    private final zb.g f12196a;

    public C0469d() {
        this(new zb.g());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0743o
    public Map<String, zb.a> a(C0594i c0594i, Map<String, zb.a> map, InterfaceC0668l interfaceC0668l) {
        zb.a a10;
        boolean z10;
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            zb.a aVar = map.get(str);
            this.f12196a.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (aVar.f33593a != zb.e.INAPP || interfaceC0668l.a() ? !((a10 = interfaceC0668l.a(aVar.f33594b)) != null && a10.f33595c.equals(aVar.f33595c) && (aVar.f33593a != zb.e.SUBS || currentTimeMillis - a10.f33597e < TimeUnit.SECONDS.toMillis(c0594i.f12575a))) : currentTimeMillis - aVar.f33596d <= TimeUnit.SECONDS.toMillis(c0594i.f12576b)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                hashMap.put(str, aVar);
            }
        }
        return hashMap;
    }

    C0469d(zb.g gVar) {
        this.f12196a = gVar;
    }
}
