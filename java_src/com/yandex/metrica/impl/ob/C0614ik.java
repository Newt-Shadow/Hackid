package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.ik  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0614ik {

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f12618a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0614ik(List<Object> list) {
        this.f12618a = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0837rl.b a(String str) {
        Iterator<Object> it = this.f12618a.iterator();
        while (it.hasNext()) {
            Cl cl = (Cl) it.next();
            if (cl.a(str)) {
                return cl.a();
            }
        }
        return null;
    }
}
