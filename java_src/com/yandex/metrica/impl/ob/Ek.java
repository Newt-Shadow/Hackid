package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.uiaccessor.a;
/* loaded from: classes2.dex */
class Ek {

    /* loaded from: classes2.dex */
    class a implements a.InterfaceC0135a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterfaceC0716mm f10023a;

        a(Ek ek, InterfaceC0716mm interfaceC0716mm) {
            this.f10023a = interfaceC0716mm;
        }

        @Override // com.yandex.metrica.uiaccessor.a.InterfaceC0135a
        public void fragmentAttached(Activity activity) {
            this.f10023a.b(activity);
        }
    }

    /* loaded from: classes2.dex */
    class b implements fc.a {
        b(Ek ek) {
        }

        @Override // fc.a
        public void subscribe(Activity activity) {
        }

        @Override // fc.a
        public void unsubscribe(Activity activity) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public fc.a a(InterfaceC0716mm<Activity> interfaceC0716mm) {
        com.yandex.metrica.uiaccessor.a aVar;
        try {
            aVar = new com.yandex.metrica.uiaccessor.a(new a(this, interfaceC0716mm));
        } catch (Throwable unused) {
            aVar = null;
        }
        if (aVar == null) {
            return new b(this);
        }
        return aVar;
    }
}
