package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.F4;
import com.yandex.metrica.impl.ob.L3;
import com.yandex.metrica.impl.ob.S4;
/* loaded from: classes2.dex */
public class L4<T extends S4, C extends L3> extends F4<T, C> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements F4.a<T> {
        a(L4 l42) {
        }

        @Override // com.yandex.metrica.impl.ob.F4.a
        public boolean a(Object obj, C0445c0 c0445c0) {
            return ((S4) obj).a(c0445c0);
        }
    }

    public L4(K4<T> k42, C c10) {
        super(k42, c10);
    }

    public boolean a(C0445c0 c0445c0) {
        return a(c0445c0, new a(this));
    }
}
