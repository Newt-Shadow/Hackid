package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public class Ye extends Ne<String> {

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0543fn<String> f11842g;

    public Ye(String str, String str2, InterfaceC0543fn<String> interfaceC0543fn, Kn<String> kn, Ke ke2) {
        super(0, str, str2, kn, ke2);
        this.f11842g = interfaceC0543fn;
    }

    @Override // com.yandex.metrica.impl.ob.Ne
    protected void a(C0927vf.a aVar) {
        byte[] bytes;
        String a10 = this.f11842g.a(f());
        C0927vf.c cVar = aVar.f13830d;
        if (a10 == null) {
            bytes = new byte[0];
        } else {
            bytes = a10.getBytes();
        }
        cVar.f13833a = bytes;
    }
}
