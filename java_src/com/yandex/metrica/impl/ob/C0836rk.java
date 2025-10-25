package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.yandex.metrica.impl.ob.rk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0836rk {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Float, Integer> f13533a = new HashMap();

    public C0836rk(TreeSet<Float> treeSet) {
        int i10 = 0;
        for (Float f10 : treeSet.descendingSet()) {
            this.f13533a.put(f10, Integer.valueOf(i10));
            i10++;
        }
    }

    public void a(C0441bl c0441bl) {
        c0441bl.f12083s = this.f13533a.get(c0441bl.f12077m);
    }
}
