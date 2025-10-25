package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0784pf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.ed  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0508ed {

    /* renamed from: a  reason: collision with root package name */
    private final U7 f12319a;

    /* renamed from: b  reason: collision with root package name */
    private final T7 f12320b;

    /* renamed from: c  reason: collision with root package name */
    private final C0433bd f12321c;

    /* renamed from: d  reason: collision with root package name */
    private final Zc f12322d;

    public C0508ed(Context context) {
        this(C0629ja.a(context).f(), C0629ja.a(context).e(), new Vb(context), new C0408ad(), new Yc());
    }

    public C0483dd a(int i10) {
        Map<Long, String> a10 = this.f12319a.a(i10);
        Map<Long, String> a11 = this.f12320b.a(i10);
        C0784pf c0784pf = new C0784pf();
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = (LinkedHashMap) a10;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            C0784pf.b a12 = this.f12321c.a(((Long) entry.getKey()).longValue(), (String) entry.getValue());
            if (a12 != null) {
                arrayList.add(a12);
            }
        }
        c0784pf.f13120a = (C0784pf.b[]) arrayList.toArray(new C0784pf.b[arrayList.size()]);
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) a11;
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            C0784pf.a a13 = this.f12322d.a(((Long) entry2.getKey()).longValue(), (String) entry2.getValue());
            if (a13 != null) {
                arrayList2.add(a13);
            }
        }
        c0784pf.f13121b = (C0784pf.a[]) arrayList2.toArray(new C0784pf.a[arrayList2.size()]);
        return new C0483dd(a10.isEmpty() ? -1L : ((Long) Collections.max(linkedHashMap.keySet())).longValue(), a11.isEmpty() ? -1L : ((Long) Collections.max(linkedHashMap2.keySet())).longValue(), c0784pf);
    }

    C0508ed(U7 u72, T7 t72, Vb vb2, C0408ad c0408ad, Yc yc2) {
        this(u72, t72, new C0433bd(vb2, c0408ad), new Zc(vb2, yc2));
    }

    C0508ed(U7 u72, T7 t72, C0433bd c0433bd, Zc zc2) {
        this.f12319a = u72;
        this.f12320b = t72;
        this.f12321c = c0433bd;
        this.f12322d = zc2;
    }

    public void a(C0483dd c0483dd) {
        long j10 = c0483dd.f12211a;
        if (j10 >= 0) {
            this.f12319a.c(j10);
        }
        long j11 = c0483dd.f12212b;
        if (j11 >= 0) {
            this.f12320b.c(j11);
        }
    }
}
