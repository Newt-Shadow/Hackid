package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.C0903uf;
import java.util.Currency;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.h3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0573h3 {

    /* renamed from: a  reason: collision with root package name */
    private final zb.d f12501a;

    public C0573h3(zb.d dVar) {
        this.f12501a = dVar;
    }

    public byte[] a() {
        String str;
        zb.d dVar = this.f12501a;
        C0903uf c0903uf = new C0903uf();
        c0903uf.f13693a = dVar.f33613c;
        c0903uf.f13699g = dVar.f33614d;
        try {
            str = Currency.getInstance(dVar.f33615e).getCurrencyCode();
        } catch (Throwable unused) {
            str = "";
        }
        c0903uf.f13695c = str.getBytes();
        c0903uf.f13696d = dVar.f33612b.getBytes();
        C0903uf.a aVar = new C0903uf.a();
        aVar.f13705a = dVar.f33624n.getBytes();
        aVar.f13706b = dVar.f33620j.getBytes();
        c0903uf.f13698f = aVar;
        c0903uf.f13700h = true;
        c0903uf.f13701i = 1;
        c0903uf.f13702j = dVar.f33611a.ordinal() == 1 ? 2 : 1;
        C0903uf.c cVar = new C0903uf.c();
        cVar.f13716a = dVar.f33621k.getBytes();
        cVar.f13717b = TimeUnit.MILLISECONDS.toSeconds(dVar.f33622l);
        c0903uf.f13703k = cVar;
        if (dVar.f33611a == zb.e.SUBS) {
            C0903uf.b bVar = new C0903uf.b();
            bVar.f13707a = dVar.f33623m;
            zb.c cVar2 = dVar.f33619i;
            if (cVar2 != null) {
                bVar.f13708b = a(cVar2);
            }
            C0903uf.b.a aVar2 = new C0903uf.b.a();
            aVar2.f13710a = dVar.f33616f;
            zb.c cVar3 = dVar.f33617g;
            if (cVar3 != null) {
                aVar2.f13711b = a(cVar3);
            }
            aVar2.f13712c = dVar.f33618h;
            bVar.f13709c = aVar2;
            c0903uf.f13704l = bVar;
        }
        return MessageNano.toByteArray(c0903uf);
    }

    private C0903uf.b.C0134b a(zb.c cVar) {
        C0903uf.b.C0134b c0134b = new C0903uf.b.C0134b();
        c0134b.f13714a = cVar.f33603a;
        int ordinal = cVar.f33604b.ordinal();
        int i10 = 1;
        if (ordinal != 1) {
            i10 = 2;
            if (ordinal != 2) {
                i10 = 3;
                if (ordinal != 3) {
                    i10 = 4;
                    if (ordinal != 4) {
                        i10 = 0;
                    }
                }
            }
        }
        c0134b.f13715b = i10;
        return c0134b;
    }
}
