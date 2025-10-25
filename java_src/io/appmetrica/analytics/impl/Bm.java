package io.appmetrica.analytics.impl;

import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Bm {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f18024a;

    public Bm() {
        HashMap hashMap = new HashMap();
        this.f18024a = hashMap;
        C1577vm c1577vm = new C1577vm();
        C1602wm c1602wm = new C1602wm();
        C1627xm c1627xm = new C1627xm();
        C1652ym c1652ym = new C1652ym();
        C1677zm c1677zm = new C1677zm();
        hashMap.put(Ul.class, c1577vm);
        hashMap.put(V1.class, c1602wm);
        hashMap.put(C1072bf.class, c1627xm);
        hashMap.put(C1482s2.class, c1652ym);
        hashMap.put(K3.class, c1677zm);
    }

    public static Cm a(Class cls) {
        return (Cm) Am.f17964a.f18024a.get(cls);
    }
}
