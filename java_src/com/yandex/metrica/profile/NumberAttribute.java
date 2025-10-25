package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC0435bf;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Qe;
import com.yandex.metrica.impl.ob.Re;
import com.yandex.metrica.impl.ob.Te;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
import com.yandex.metrica.impl.ob.Wm;
/* loaded from: classes2.dex */
public final class NumberAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f14260a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NumberAttribute(String str, Kn kn, Je je2) {
        this.f14260a = new Pe(str, kn, je2);
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValue(double d10) {
        return new UserProfileUpdate<>(new Te(this.f14260a.a(), d10, new Qe(), new Me(new Re(new Wm(100)))));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueIfUndefined(double d10) {
        return new UserProfileUpdate<>(new Te(this.f14260a.a(), d10, new Qe(), new We(new Re(new Wm(100)))));
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(1, this.f14260a.a(), new Qe(), new Re(new Wm(100))));
    }
}
