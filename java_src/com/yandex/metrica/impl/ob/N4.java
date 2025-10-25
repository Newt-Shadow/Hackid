package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.F3;
import com.yandex.metrica.impl.ob.F4;
import com.yandex.metrica.impl.ob.M4;
/* loaded from: classes2.dex */
public class N4<T extends M4, C extends F3> extends F4<T, C> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements F4.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0723n4 f10868a;

        a(N4 n42, C0723n4 c0723n4) {
            this.f10868a = c0723n4;
        }

        @Override // com.yandex.metrica.impl.ob.F4.a
        public boolean a(Object obj, C0445c0 c0445c0) {
            return ((M4) obj).a(c0445c0, this.f10868a);
        }
    }

    public N4(K4<T> k42, C c10) {
        super(k42, c10);
    }

    public boolean a(C0445c0 c0445c0, C0723n4 c0723n4) {
        return a(c0445c0, new a(this, c0723n4));
    }
}
