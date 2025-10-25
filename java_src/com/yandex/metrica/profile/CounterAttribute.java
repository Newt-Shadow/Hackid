package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC0435bf;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Oe;
import com.yandex.metrica.impl.ob.Pe;
/* loaded from: classes2.dex */
public final class CounterAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f14258a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CounterAttribute(String str, Kn kn, Je je2) {
        this.f14258a = new Pe(str, kn, je2);
    }

    public UserProfileUpdate<? extends InterfaceC0435bf> withDelta(double d10) {
        return new UserProfileUpdate<>(new Oe(this.f14258a.a(), d10));
    }
}
